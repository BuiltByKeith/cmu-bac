<?php

namespace App\Http\Controllers;

use App\Models\AccountCode;
use App\Models\BudgetAllocation;
use App\Models\CollegeOfficeUnit;
use App\Models\Item;
use App\Models\PPMP;
use App\Models\PurchaseRequest;
use App\Models\User;
use App\Models\WholeBudget;
use App\Models\Year;
use Illuminate\Http\Request;
use Vinkla\Hashids\Facades\Hashids;


class BudgetController extends Controller
{
    //

    public function budgetOfficeDashboard()
    {
        $items = Item::all();
        $units = CollegeOfficeUnit::all();
        $accountCodes = AccountCode::all();
        $users = User::all();
        return view('budget.dashboard', compact('items', 'units', 'accountCodes', 'users'));
    }

    public function budgetOfficeYearlyBudgetPage()
    {
        $years = Year::all();
        return view('budget.yearly_budget_page', compact('years'));
    }



    public function budgetOfficeBudgetAllocationV2Page()
    {
        $collegeOfficeUnits = CollegeOfficeUnit::all();
        $yearlyBudget = WholeBudget::all();
        $accountCodes = AccountCode::all();
        return view('budget.budget_allocation_v2_page', compact('yearlyBudget', 'collegeOfficeUnits', 'accountCodes'));
    }

    public function allocateBudgetToCollegeOfficeUnitPage($id, Request $request)
    {
        $years = Year::all();
        $currentYear = Year::where('is_current', 1)->first();
        $defaultYear = $currentYear ? $currentYear->year : date('Y');
        $year = $request->input('filterByYear', $defaultYear);

        $collegeOfficeUnit = CollegeOfficeUnit::findOrFail($id);

        $accountCodes = AccountCode::with(['budgetAllocations' => function ($query) use ($id, $year) {
            $query->where('college_office_unit_id', $id)
                ->whereHas('wholeBudget', function ($q) use ($year) {
                    $q->where('year', $year);
                })
                ->with(['wholeBudget', 'allocatedBy']);
        }])->get();

        // Use withSum for consistent calculation
        $yearlyBudget = WholeBudget::where('year', $year)
            ->withSum('budgetAllocations', 'amount')
            ->get()
            ->map(function ($budget) {
                $allocated = $budget->budget_allocations_sum_amount ?? 0;
                $budget->available_amount = $budget->amount - $allocated;
                $budget->percentage_used = $budget->amount > 0 ? round(($allocated / $budget->amount) * 100, 2) : 0;
                $budget->is_fully_allocated = $budget->available_amount <= 0;
                return $budget;
            });

        $availableYears = WholeBudget::distinct()->pluck('year')->sort()->reverse();

        return view('budget.allocate_budget_to_unit_page', compact(
            'collegeOfficeUnit',
            'accountCodes',
            'yearlyBudget',
            'year',
            'years',
            'availableYears'
        ));
    }



    public function budgetOfficeAccountCodesPage()
    {
        return view('budget.account_codes_page');
    }

    public function budgetPPMPsPage()
    {
        $years = Year::all();

        return view('budget.ppmps_page', compact('years'));
    }

    public function budgetFetchPPMPs(Request $request)
    {
        $year = $request->input('year', date('Y'));

        $ppmps = PPMP::where('is_submitted', 1)
            ->whereHas('budgetAllocation.wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            })
            ->get();

        $ppmpArray = [];

        foreach ($ppmps as $ppmp) {
            $ppmpArray[] = [
                'ppmpId' => $ppmp->id,
                'hashid' => Hashids::encode($ppmp->id), // ✅ Add this line
                'ppmpCode' => $ppmp->ppmp_code,
                'collegeOfficeUnit' => $ppmp->budgetAllocation->collegeOfficeUnit->college_office_unit_name,
                'purpose' => $ppmp->purpose,
                'createdBy' => $ppmp->createdBy->firstname . ' ' . strtoupper(substr($ppmp->createdBy->middlename, 0, 1)) . '. ' .  $ppmp->createdBy->lastname,
                'dateSubmitted' => $ppmp->updated_at->format('F d, Y'),
                'approvalStatus' => $ppmp->approval_status
            ];
        }

        return response()->json($ppmpArray);
    }



    public function budgetViewPPMPDetails($hashid)
    {
        $decoded = Hashids::decode($hashid);

        if (empty($decoded)) {
            abort(404); // hash is invalid or not decodable
        }

        $id = $decoded[0];

        $ppmp = PPMP::findOrFail($id);

        return view('budget.view_ppmp_details', compact('ppmp'));
    }

    public function budgetOfficePurchaseRequestsPage()
    {
        $years = Year::all();
        return view('budget.purchase_requests_page', compact('years'));
    }

    public function budgetOfficePurchaseRequestDetails($hashid)
    {
        $decoded = Hashids::decode($hashid);

        if (empty($decoded)) {
            abort(404); // hash is invalid or not decodable
        }

        $id = $decoded[0];

        $purchaseRequest = PurchaseRequest::findOrFail($id);
        return view('budget.purchase_request_details', compact('purchaseRequest'));
    }

    public function budgetOfficeAPPsPage()
    {
        return view('budget.apps_page');
    }

    public function budgetOfficeAPRsPage()
    {
        return view('budget.aprs_page');
    }

    public function budgetOfficeExportAPP($year)
    {
        $ppmps = PPMP::with([
            'ppmpItems.item.prices' => function ($query) {
                $query->where('is_active', 1)
                    ->orderBy('created_at', 'desc');
            },
            'budgetAllocation.collegeOfficeUnit.category',
            'budgetAllocation.accountCode',
            'budgetAllocation.wholeBudget'
        ])
            ->whereHas('budgetAllocation.wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            })
            ->where('is_submitted', 1)
            ->get();

        // Check if there are any PPMPs
        if ($ppmps->isEmpty()) {
            return view('budget.apps_page', [
                'year' => $year,
                'grouped' => null
            ]);
        }

        // Transform and collect all items with their metadata
        $allItems = $ppmps->flatMap(function ($ppmp) {
            $budget = $ppmp->budgetAllocation;
            $unit = $budget->collegeOfficeUnit;
            $category = $unit->category;
            $accountCode = $budget->accountCode;

            // Process each PPMP item
            return $ppmp->ppmpItems->map(function ($ppmpItem) use ($budget, $unit, $category, $accountCode) {
                $item = $ppmpItem->item;

                // Calculate total quantity
                $totalQuantity = (
                    ($ppmpItem->january_quantity ?? 0) +
                    ($ppmpItem->february_quantity ?? 0) +
                    ($ppmpItem->march_quantity ?? 0) +
                    ($ppmpItem->april_quantity ?? 0) +
                    ($ppmpItem->may_quantity ?? 0) +
                    ($ppmpItem->june_quantity ?? 0) +
                    ($ppmpItem->july_quantity ?? 0) +
                    ($ppmpItem->august_quantity ?? 0) +
                    ($ppmpItem->september_quantity ?? 0) +
                    ($ppmpItem->october_quantity ?? 0) +
                    ($ppmpItem->november_quantity ?? 0) +
                    ($ppmpItem->december_quantity ?? 0)
                );

                // Get the active price
                $price = $item->prices->where('is_active', 1)->first();

                // Use the active price or fallback to 0 if no price found
                $itemPrice = $price ? $price->price : 0;

                // Calculate cost based on quantity and item price
                $cost = $totalQuantity * $itemPrice;

                return [
                    'account_code' => $accountCode->account_code ?? 'N/A',
                    'account_description' => $accountCode->account_name ?? '',
                    'category_name' => $category->category_name ?? 'N/A',
                    'unit' => $unit->college_office_unit_name ?? 'N/A',
                    'total' => $cost
                ];
            });
        });

        // Check if all items have zero cost
        if ($allItems->isEmpty() || $allItems->sum('total') == 0) {
            return view('budget.apps_page', [
                'year' => $year,
                'grouped' => null
            ]);
        }

        // First group by account code
        $groupedByAccount = $allItems->groupBy('account_code');

        // For each account code, further group by category and sum values
        $finalGrouped = $groupedByAccount->map(function ($accountItems, $accountCode) {
            $groupedByCategory = $accountItems->groupBy('category_name');

            return $groupedByCategory->map(function ($categoryItems, $categoryName) use ($accountCode) {
                // Sum total values for this account code and category
                $grandTotal = $categoryItems->sum('total');

                // Get account description from the first item
                $accountDescription = $categoryItems->first()['account_description'];

                return [
                    'account_code' => $accountCode,
                    'account_description' => $accountDescription,
                    'category' => $categoryName,
                    'total' => $grandTotal
                ];
            });
        });

        return view('budget.apps_page', [
            'year' => $year,
            'grouped' => $finalGrouped
        ]);
    }




    public function budgetOfficeExportAPR($year)
    {
        // Get all purchase requests with items
        $prs = PurchaseRequest::with([
            'purchaseRequestItems.item.prices' => function ($query) use ($year) {
                $query->where('year', $year)->where('is_active', true);
            },
            'ppmp.budgetAllocation.wholeBudget'
        ])
            ->whereHas('ppmp.budgetAllocation.wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            })
            ->get();

        // Consolidate items
        $consolidatedItems = [];

        foreach ($prs as $pr) {
            foreach ($pr->purchaseRequestItems as $prItem) {
                $itemId = $prItem->item_id;

                // Calculate total quantity for this item in this PR
                $totalQuantity = $prItem->january_quantity + $prItem->february_quantity +
                    $prItem->march_quantity + $prItem->april_quantity +
                    $prItem->may_quantity + $prItem->june_quantity +
                    $prItem->july_quantity + $prItem->august_quantity +
                    $prItem->september_quantity + $prItem->october_quantity +
                    $prItem->november_quantity + $prItem->december_quantity;

                // Add to consolidated items
                if (isset($consolidatedItems[$itemId])) {
                    $consolidatedItems[$itemId]['total_quantity'] += $totalQuantity;
                } else {
                    $price = $prItem->item->prices()->first()->price ?? 0;

                    $consolidatedItems[$itemId] = [
                        'item_name' => $prItem->item->item_name,
                        'item_code' => $prItem->item->item_code,
                        'item_description' => $prItem->item->item_description,
                        'unit_of_measure' => $prItem->item->unit_of_measure,
                        'total_quantity' => $totalQuantity,
                        'price' => $price,
                        'total_amount' => 0 // Will calculate below
                    ];
                }
            }
        }

        // Calculate total amounts
        foreach ($consolidatedItems as &$item) {
            $item['total_amount'] = $item['total_quantity'] * $item['price'];
        }

        // Sort by item name
        usort($consolidatedItems, function ($a, $b) {
            return strcmp($a['item_name'], $b['item_name']);
        });

        return view('budget.aprs_page', compact('year', 'consolidatedItems'));
    }
}
