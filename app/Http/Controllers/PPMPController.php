<?php

namespace App\Http\Controllers;

use App\Models\BudgetAllocation;
use App\Models\PPMP;
use App\Models\PPMPComment;
use App\Models\Year;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Number;
use Vinkla\Hashids\Facades\Hashids;

class PPMPController extends Controller
{




    public function endUserFetchPPMPs(Request $request)
    {
        $year = $request->input('year', date('Y'));

        // Fetch PPMPs with budgetAllocation, wholeBudget, accountCode, and ppmpItems with item and prices
        $ppmps = PPMP::with([
            'budgetAllocation.wholeBudget',
            'budgetAllocation.accountCode',
            'budgetAllocation.ppmps.ppmpItems.item.prices' => function ($query) use ($year) {
                $query->where('is_active', 1)->where('year', $year);
            },
            'ppmpItems.item.prices' => function ($query) use ($year) {
                $query->where('is_active', 1)->where('year', $year);
            }
        ])
            ->whereHas('budgetAllocation', function ($query) use ($year) {
                $query->where('college_office_unit_id', Auth::user()->college_office_unit_id)
                    ->whereHas('wholeBudget', function ($q) use ($year) {
                        $q->where('year', $year);
                    });
            })
            ->get();

        $ppmpArray = [];

        foreach ($ppmps as $ppmp) {
            // Calculate total amount for this PPMP
            $totalAmount = 0;

            foreach ($ppmp->ppmpItems as $ppmpItem) {
                // Calculate total quantity for this item (sum of all months)
                $totalQuantity = $ppmpItem->january_quantity + $ppmpItem->february_quantity +
                    $ppmpItem->march_quantity + $ppmpItem->april_quantity +
                    $ppmpItem->may_quantity + $ppmpItem->june_quantity +
                    $ppmpItem->july_quantity + $ppmpItem->august_quantity +
                    $ppmpItem->september_quantity + $ppmpItem->october_quantity +
                    $ppmpItem->november_quantity + $ppmpItem->december_quantity;

                // Get the active price
                $activePrice = $ppmpItem->item->prices()->where('is_active', 1)->first();

                if ($activePrice) {
                    $totalAmount += $totalQuantity * $activePrice->price;
                }
            }

            // Calculate total used amount for the entire budget allocation
            $totalUsedAmountForBudgetAllocation = 0;

            foreach ($ppmp->budgetAllocation->ppmps as $relatedPpmp) {
                foreach ($relatedPpmp->ppmpItems as $ppmpItem) {
                    // Calculate total quantity for all months
                    $totalQuantity = $ppmpItem->january_quantity +
                        $ppmpItem->february_quantity +
                        $ppmpItem->march_quantity +
                        $ppmpItem->april_quantity +
                        $ppmpItem->may_quantity +
                        $ppmpItem->june_quantity +
                        $ppmpItem->july_quantity +
                        $ppmpItem->august_quantity +
                        $ppmpItem->september_quantity +
                        $ppmpItem->october_quantity +
                        $ppmpItem->november_quantity +
                        $ppmpItem->december_quantity;

                    // Get the active price for the item
                    $activePrice = $ppmpItem->item->prices()->where('is_active', 1)->first();
                    $itemPrice = $activePrice ? $activePrice->price : 0;

                    // Calculate total amount for this item
                    $totalUsedAmountForBudgetAllocation += $totalQuantity * $itemPrice;
                }
            }

            // Calculate available budget
            $availableBudget = $ppmp->budgetAllocation->amount - $totalUsedAmountForBudgetAllocation;

            $ppmpArray[] = [
                'id' => $ppmp->id,
                'hashid' => Hashids::encode($ppmp->id),
                'ppmpCode' => $ppmp->ppmp_code,
                'accountCode' => $ppmp->budgetAllocation->accountCode->account_name,
                'fundSource' => $ppmp->budgetAllocation->wholeBudget->source_of_fund,
                'dateSubmitted' => $ppmp->updated_at->format('F d, Y'),
                'approvalStatus' => $ppmp->approval_status,
                'submissionStatus' => $ppmp->is_submitted,
                'totalAmount' => Number::currency($totalAmount, 'PHP'),
                'availableBudget' => Number::currency($availableBudget, 'PHP'), // Available budget instead of total allocation
            ];
        }

        return response()->json($ppmpArray);
    }


    public function endUserAddNewPPMP(Request $request)
    {
        $validatedData = $request->validate([
            'formAddPPMPAccountCode' => 'required|exists:budget_allocations,id|numeric',
        ]);

        // Get the college office unit data
        $collegeOfficeUnit = Auth::user()->collegeOfficeUnit;
        $activeSignatory = $collegeOfficeUnit->signatories()->where('is_active', true)->latest()->first();

        if (!$activeSignatory) {
            return response()->json(['success' => false, 'message' => 'No active signatory set for your office.']);
        }

        // Use the acronym if available, otherwise generate one from the full college name
        $collegeAcronym = $collegeOfficeUnit->acronym ?? implode('', array_map(fn($word) => strtoupper($word[0]), explode(' ', $collegeOfficeUnit->college_office_unit_name)));

        // Fetch the account code name and create its acronym
        $accountCodeName = BudgetAllocation::find($validatedData['formAddPPMPAccountCode'])->accountCode->account_name;
        $accountCodeAcronym = implode('', array_map(fn($word) => strtoupper($word[0]), explode(' ', $accountCodeName)));

        // Get current year and month
        $yearMonth = date('mY');

        // Determine the next incrementing number for the college
        $maxIncrementingNumber = PPMP::whereHas('budgetAllocation', function ($query) {
            $query->where('college_office_unit_id', Auth::user()->college_office_unit_id);
        })->max('incrementing_number');

        $incrementingNumber = $maxIncrementingNumber ? $maxIncrementingNumber + 1 : 1;

        // Construct the PPMP code
        $ppmpCode = "{$collegeAcronym}-{$accountCodeAcronym}-{$yearMonth}-{$incrementingNumber}";

        $activeYearPPMPDeadline = Year::where('is_current', 1)->first();

        if (now()->gte($activeYearPPMPDeadline->ppmp_deadline)) {
            return response()->json(['success' => false, 'message' => 'Cannot add new PPMP after the deadline has passed.']);
        }
        if ($activeYearPPMPDeadline->is_open == 0) {
            return response()->json(['success' => false, 'message' => 'The PPMP Submission is officially closed.']);
        }

        // Create the new PPMP
        PPMP::create([
            'budget_allocation_id' => $validatedData['formAddPPMPAccountCode'],
            'created_by' => Auth::user()->id,
            'ppmp_code' => $ppmpCode,
            'is_submitted' => 0,
            'approval_status' => 0,
            'incrementing_number' => $incrementingNumber,
            'signatory_id' => $activeSignatory->id
        ]);

        return response()->json(['success' => true, 'message' => 'Successfully added a new PPMP!']);
    }


    public function endUserDeletePPMP(Request $request)
    {
        $ppmp = PPMP::findOrFail($request->ppmpId);
        $activeYearPPMPDeadline = Year::where('is_current', 1)->first();

        if ($ppmp) {
            // Check if deadline has passed
            if (now()->gte($activeYearPPMPDeadline->ppmp_deadline)) {
                return response()->json(['success' => false, 'message' => 'Cannot delete PPMP after the deadline has passed']);
            }

            if ($ppmp->approval_status == 1 || $ppmp->approval_status == 2 && $ppmp->is_submitted == 1) {
                return response()->json(['success' => false, 'message' => 'Cannot delete PPMP that is already submitted or approved']);
            }

            if ($ppmp->ppmpItems()->exists()) {
                return response()->json(['success' => false, 'message' => 'Cannot delete PPMP with an existing item']);
            }

            $ppmp->delete();

            return response()->json(['success' => true, 'message' => 'PPMP Deletion Successful!']);
        }

        return response()->json(['success' => false, 'message' => 'Could not find the PPMP!']);
    }

    public function budgetOfficeUpdatePPMPStatus(Request $request)
    {

        $validatedData = $request->validate([
            'formUpdatePPMPStatusId' => 'required|numeric|exists:p_p_m_p_s,id',
            'formUpdatePPMPStatus' => 'required|numeric',
            'formUpdatePPMPStatusComment' => 'nullable|string|max:255',
        ]);

        $ppmp = PPMP::findOrFail($request->formUpdatePPMPStatusId);

        if ($ppmp) {
            $ppmp->update([
                'approval_status' => $validatedData['formUpdatePPMPStatus'],
            ]);
            if ($validatedData['formUpdatePPMPStatusComment']) {
                PPMPComment::create([
                    'ppmp_id' => $validatedData['formUpdatePPMPStatusId'],
                    'comment' =>  $validatedData['formUpdatePPMPStatusComment'],
                    'from_user' => Auth::user()->id,
                ]);
            }

            return response()->json(['success' => true, 'message' => 'Approval Status Successfully Updated!']);
        }
        return response()->json(['success' => true, 'message' => 'Approval Status Update Failed!']);
    }
}
