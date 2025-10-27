<?php

namespace App\Http\Controllers;

use App\Models\BudgetAllocation;
use App\Models\CollegeOfficeUnit;
use App\Models\WholeBudget;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Number;

class BudgetAllocationController extends Controller
{
    public function budgetOfficeFetchBudgetAllocations(Request $request)
    {
        // Retrieve the selected year from the request
        $year = $request->input('year');

        // Query the BudgetAllocation model
        $query = BudgetAllocation::query();

        // If a year is provided, filter the results
        if ($year) {
            $query->whereHas('wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            });
        }

        $budgetAllocations = $query->get();

        // Format the data for the response
        $budgetAllocationArray = [];

        foreach ($budgetAllocations as $budgetAllocation) {
            $budgetAllocationArray[] = [
                'id' => $budgetAllocation->id,
                'college_office_unit_id' => $budgetAllocation->collegeOfficeUnit->id,
                'college_office_unit_name' => $budgetAllocation->collegeOfficeUnit->college_office_unit_name,
                'budgetAmount' => $budgetAllocation->amount ? Number::currency($budgetAllocation->amount, 'PHP') : '',
                'typeOfFund' => $budgetAllocation->wholeBudget->type_of_budget,
                'sourceOfFund' => $budgetAllocation->wholeBudget->source_of_fund,
                'accountCode' => $budgetAllocation->accountCode->account_name,
                'year' => $budgetAllocation->wholeBudget->year,
            ];
        }

        // Return the filtered data as JSON
        return response()->json($budgetAllocationArray);
    }


    public function addNewBudgetAllocation(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'formSelectCollegeOfficeUnit' => 'required|exists:college_office_units,id|numeric',
                'formSelectWholeBudget' => 'required|exists:whole_budgets,id|numeric',
                'formSelectAccountCode' => 'required|exists:account_codes,id|numeric',
                'formAddBudgetAllocationAmount' => 'required|numeric',
            ]);

            $collegeOfficeUnitName = CollegeOfficeUnit::find($validatedData['formSelectCollegeOfficeUnit']);

            BudgetAllocation::create([
                'college_office_unit_id' => $validatedData['formSelectCollegeOfficeUnit'],
                'whole_budget_id' => $validatedData['formSelectWholeBudget'],
                'amount' => $validatedData['formAddBudgetAllocationAmount'],
                'account_code_id' => $validatedData['formSelectAccountCode'],
                'allocated_by' => Auth::user()->id,
                'date_allocated' => now(),
            ]);

            return response()->json([
                'success' => true,
                'message' => 'Budget of ' . Number::currency($validatedData['formAddBudgetAllocationAmount'], 'PHP') . ' for ' . $collegeOfficeUnitName->college_office_unit_name . ' allocated successfully!'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => $e->getMessage()
            ], 500);
        }
    }

    public function budgetOfficeFetchBudgetAllocationsV2(Request $request)
    {
        $allocations = BudgetAllocation::with(['wholeBudget', 'accountCode'])
            ->where('account_code_id', $request->account_code_id)
            ->where('college_office_unit_id', $request->college_office_unit_id)
            ->whereHas('wholeBudget', function ($query) use ($request) {
                if ($request->year) {
                    $query->where('year', $request->year);
                }
            })
            ->get();

        return response()->json(['data' => $allocations]);
    }

    public function allocateBudgetToCollegeOfficeUnit(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'collegeOfficeUnitId' => 'required|exists:college_office_units,id|numeric',
                'accountCodeId' => 'required|exists:account_codes,id|numeric',
                'wholeBudgetId' => 'required|exists:whole_budgets,id|max:255',
                'budgetAmount' => 'required|numeric|min:0.01',
                'budgetType' => 'required|string|max:255',
            ]);

            // Use same calculation method as the page
            $wholeBudget = WholeBudget::withSum('budgetAllocations', 'amount')
                ->findOrFail($validatedData['wholeBudgetId']);

            $allocated = $wholeBudget->budget_allocations_sum_amount ?? 0;
            $availableAmount = $wholeBudget->amount - $allocated;

            if ($validatedData['budgetAmount'] > $availableAmount) {
                return response()->json([
                    'success' => false,
                    'message' => "Budget allocation failed. Requested amount ₱" . number_format($validatedData['budgetAmount'], 2) .
                        " exceeds available budget of ₱" . number_format($availableAmount, 2) . ".",
                ], 422);
            }

            BudgetAllocation::create([
                'college_office_unit_id' => $validatedData['collegeOfficeUnitId'],
                'account_code_id' => $validatedData['accountCodeId'],
                'whole_budget_id' => $validatedData['wholeBudgetId'],
                'amount' => $validatedData['budgetAmount'],
                'allocated_by' => Auth::user()->id,
                'date_allocated' => now(),
            ]);

            $remainingAmount = $availableAmount - $validatedData['budgetAmount'];

            return response()->json([
                'success' => true,
                'message' => 'Budget allocation successful! Remaining budget: ₱' . number_format($remainingAmount, 2),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'An error occurred: ' . $e->getMessage()
            ], 500);
        }
    }

    public function budgetOfficeDeleteBudgetAllocation(Request $request)
    {
        $validatedData = $request->validate([
            'budget_allocation_id' => 'required|exists:budget_allocations,id',
        ]);

        $budgetAllocation = BudgetAllocation::with(['ppmps', 'accountCode'])->findOrFail($validatedData['budget_allocation_id']);

        // Check if budget allocation has associated PPMPs
        $ppmpCount = $budgetAllocation->ppmps()->count();

        if ($ppmpCount > 0) {
            $accountName = $budgetAllocation->accountCode->account_name ?? 'this account';

            return response()->json([
                'success' => false,
                'message' => "Cannot delete this budget allocation for {$accountName} because it has {$ppmpCount} associated PPMP record(s). Please remove all PPMPs first."
            ], 422);
        }

        $budgetAllocation->delete();

        return response()->json([
            'success' => true,
            'message' => 'Budget Allocation Successfully Deleted!'
        ]);
    }

    public function budgetOfficeEditBudgetAllocation(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'budget_allocation_id' => 'required|exists:budget_allocations,id|numeric',
                'whole_budget_id' => 'required|exists:whole_budgets,id|numeric',
                'budget_amount' => 'required|numeric|min:0.01',
                'budget_type' => 'required|string|max:255',
            ]);

            $budgetAllocation = BudgetAllocation::findOrFail($validatedData['budget_allocation_id']);
            $currentAmount = $budgetAllocation->amount;

            // Use same calculation method as the page
            $wholeBudget = WholeBudget::withSum('budgetAllocations', 'amount')
                ->findOrFail($validatedData['whole_budget_id']);

            $allocated = $wholeBudget->budget_allocations_sum_amount ?? 0;
            $availableAmount = $wholeBudget->amount - $allocated;

            // If editing same budget, add back current amount
            if ($budgetAllocation->whole_budget_id == $validatedData['whole_budget_id']) {
                $availableAmount += $currentAmount;
            }

            if ($validatedData['budget_amount'] > $availableAmount) {
                return response()->json([
                    'success' => false,
                    'message' => "Budget update failed. Requested amount ₱" . number_format($validatedData['budget_amount'], 2) .
                        " exceeds available budget of ₱" . number_format($availableAmount, 2) . ".",
                ], 422);
            }

            $budgetAllocation->update([
                'whole_budget_id' => $validatedData['whole_budget_id'],
                'amount' => $validatedData['budget_amount'],
            ]);

            $remainingAmount = $availableAmount - $validatedData['budget_amount'];

            return response()->json([
                'success' => true,
                'message' => 'Budget allocation updated successfully! Remaining budget: ₱' . number_format($remainingAmount, 2),
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'An error occurred: ' . $e->getMessage()
            ], 500);
        }
    }

    public function fetchBudgetAllocationsForPPMP(Request $request)
    {
        $year = $request->input('year', date('Y'));

        $budgetAllocations = BudgetAllocation::where('college_office_unit_id', Auth::user()->college_office_unit_id)
            ->whereHas('wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            })
            ->with([
                'accountCode',
                'wholeBudget',
                'ppmps.ppmpItems.item.prices' => function ($query) use ($year) {
                    $query->where('is_active', true)
                        ->where('year', $year);
                }
            ])
            ->get();

        // Calculate total used amount for each budget allocation
        $budgetAllocations->each(function ($budgetAllocation) {
            $totalUsedAmount = 0;

            foreach ($budgetAllocation->ppmps as $ppmp) {
                foreach ($ppmp->ppmpItems as $ppmpItem) {
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
                    $totalUsedAmount += $totalQuantity * $itemPrice;
                }
            }

            // Add calculated values to the budget allocation object
            $budgetAllocation->total_allocated = $budgetAllocation->amount;
            $budgetAllocation->total_used = $totalUsedAmount;
            $budgetAllocation->remaining_budget = $budgetAllocation->amount - $totalUsedAmount;
        });

        return response()->json($budgetAllocations);
    }
}
