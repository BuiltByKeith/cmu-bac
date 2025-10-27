<?php

namespace App\Http\Controllers;

use App\Models\AccountCode;
use App\Models\BudgetAllocation;
use App\Models\Item;
use App\Models\ItemCategory;
use App\Models\PPMP;
use App\Models\PPMPItem;
use App\Models\PurchaseRequest;
use App\Models\RequestedItem;
use App\Models\WholeBudget;
use App\Models\Year;
use Illuminate\Http\Request;
use Vinkla\Hashids\Facades\Hashids;

class BACController extends Controller
{
    //

    public function bacDashboard()
    {
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();

        return view('bac.dashboard', compact('pendingPPMPsCount'));
    }

    public function bacItemsPage()
    {
        $itemAccountCodes = AccountCode::all();
        $itemCategories = ItemCategory::all();
        return view('bac.items_page', compact('itemCategories', 'itemAccountCodes'));
    }

    public function bacItemCategoriesPage()
    {
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        return view('bac.item_categories_page', compact('pendingPPMPsCount'));
    }

    public function bacRequestedItemsPage()
    {
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        return view('bac.requested_items_page', compact('pendingPPMPsCount'));
    }

    public function bacViewRequestedItemDetails($id)
    {
        $requestedItem = RequestedItem::findOrFail($id);
        $accountCodes = AccountCode::all();
        $itemCategories = ItemCategory::all();
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        return view('bac.requested_item_details_page', compact('requestedItem', 'pendingPPMPsCount', 'accountCodes', 'itemCategories'));
    }

    public function bacPPMPsPage()
    {
        $years = Year::all();
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        return view('bac.ppmp_page', compact('pendingPPMPsCount', 'years'));
    }

    public function bacPurchaseRequestPage()
    {
        $years = Year::all();
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        return view('bac.purchase_requests_page', compact('pendingPPMPsCount', 'years'));
    }

    public function bacViewPRDetails($hashid)
    {
        $decoded = Hashids::decode($hashid);

        if (empty($decoded)) {
            abort(404); // hash is invalid or not decodable
        }

        $id = $decoded[0];

        $purchaseRequest = PurchaseRequest::findOrFail($id);
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();

        return view('bac.purchase_request_details_page', compact('purchaseRequest', 'pendingPPMPsCount'));
    }


    // BAC FETCH PPMPS
    public function bacFetchPPMPs(Request $request)
    {
        $year = $request->input('year', date('Y'));

        $ppmps = PPMP::where('approval_status', 1)
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
                'createdBy' => $ppmp->createdBy->firstname . ' ' . strtoupper(substr($ppmp->createdBy->middlename, 0, 1)) . '. ' .  $ppmp->createdBy->lastname,
                'dateSubmitted' => $ppmp->updated_at->format('F d, Y'),
                'approvalStatus' => $ppmp->approval_status
            ];
        }

        return response()->json($ppmpArray);
    }

    public function bacViewPPMPDetails($hashid)
    {
        $decoded = Hashids::decode($hashid);

        if (empty($decoded)) {
            abort(404); // hash is invalid or not decodable
        }

        $id = $decoded[0];

        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        $ppmp = PPMP::findOrFail($id);
        return view('bac.view_ppmp_details_page', compact('ppmp', 'pendingPPMPsCount'));
    }

    public function bacOfficeExportAPP($year)
    {

        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();

        $ppmps = PPMP::with([
            'ppmpItems.item.prices' => function ($query) use ($year) {
                $query->where('is_active', 1)->where('year', $year)
                    ->orderBy('created_at', 'desc');
            },
            'budgetAllocation.collegeOfficeUnit.category',
            'budgetAllocation.accountCode',
            'budgetAllocation.wholeBudget'
        ])
            ->whereHas('budgetAllocation.wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            })
            ->where('approval_status', 1)
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
            return view('bac.bac_apps_page', [
                'year' => $year,
                'grouped' => null,
            ], compact('pendingPPMPsCount'));
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

        return view('bac.bac_apps_page', [
            'year' => $year,
            'grouped' => $finalGrouped
        ], compact('pendingPPMPsCount'));
    }

    public function bacOfficeExportAPPCSE($year)
    {
        // Get all PSDBM items with their prices for the specified year
        $psdbmItems = Item::with([
            'itemCategory',
            'prices' => function ($query) use ($year) {
                $query->where('year', $year)->where('is_active', 1);
            }
        ])
            ->where('is_psdbm', 1)
            ->where('is_available', 1)
            ->orderBy('item_category_id')
            ->orderBy('item_code')
            ->get();

        // Get all PPMP items for the specified year to aggregate quantities
        $ppmpItems = PPMPItem::with([
            'item',
            'ppmp.budgetAllocation.wholeBudget'
        ])
            ->whereHas('ppmp.budgetAllocation.wholeBudget', function ($query) use ($year) {
                $query->where('year', $year);
            })
            ->whereHas('ppmp', function ($query) {
                $query->where('approval_status', 1); // Only approved PPMPs
            })
            ->whereHas('item', function ($query) {
                $query->where('is_psdbm', 1);
            })
            ->get();

        // Group PPMP items by item_id and sum quantities
        $aggregatedQuantities = $ppmpItems->groupBy('item_id')->map(function ($items) {
            return [
                'january_quantity' => $items->sum('january_quantity'),
                'february_quantity' => $items->sum('february_quantity'),
                'march_quantity' => $items->sum('march_quantity'),
                'april_quantity' => $items->sum('april_quantity'),
                'may_quantity' => $items->sum('may_quantity'),
                'june_quantity' => $items->sum('june_quantity'),
                'july_quantity' => $items->sum('july_quantity'),
                'august_quantity' => $items->sum('august_quantity'),
                'september_quantity' => $items->sum('september_quantity'),
                'october_quantity' => $items->sum('october_quantity'),
                'november_quantity' => $items->sum('november_quantity'),
                'december_quantity' => $items->sum('december_quantity'),
            ];
        });

        // Prepare data for the view grouped by category
        $ppmpData = [];
        $currentCategory = '';
        $grandTotalCost = 0;

        foreach ($psdbmItems as $item) {
            // Get the active price for this year
            $activePrice = $item->prices->first();
            $unitPrice = $activePrice ? $activePrice->price : 0;

            // Get aggregated quantities for this item (or 0 if not found)
            $quantities = $aggregatedQuantities->get($item->id, [
                'january_quantity' => 0,
                'february_quantity' => 0,
                'march_quantity' => 0,
                'april_quantity' => 0,
                'may_quantity' => 0,
                'june_quantity' => 0,
                'july_quantity' => 0,
                'august_quantity' => 0,
                'september_quantity' => 0,
                'october_quantity' => 0,
                'november_quantity' => 0,
                'december_quantity' => 0,
            ]);

            // Calculate total quantity
            $totalQuantity = array_sum($quantities);
            $totalCost = $totalQuantity * $unitPrice;
            $grandTotalCost += $totalCost;

            $categoryName = $item->itemCategory->item_category_name ?? 'UNCATEGORIZED';

            // Add category header if it's a new category
            if ($categoryName !== $currentCategory) {
                $ppmpData[] = [
                    'is_category_header' => true,
                    'category_name' => strtoupper($categoryName),
                ];
                $currentCategory = $categoryName;
            }

            $ppmpData[] = [
                'is_category_header' => false,
                'item_code' => $item->item_code,
                'item_name' => $item->item_name,
                'item_description' => $item->item_description,
                'unit_of_measure' => $item->unit_of_measure,
                'item_category' => $categoryName,
                'unit_price' => $unitPrice,
                'january_quantity' => $quantities['january_quantity'],
                'february_quantity' => $quantities['february_quantity'],
                'march_quantity' => $quantities['march_quantity'],
                'april_quantity' => $quantities['april_quantity'],
                'may_quantity' => $quantities['may_quantity'],
                'june_quantity' => $quantities['june_quantity'],
                'july_quantity' => $quantities['july_quantity'],
                'august_quantity' => $quantities['august_quantity'],
                'september_quantity' => $quantities['september_quantity'],
                'october_quantity' => $quantities['october_quantity'],
                'november_quantity' => $quantities['november_quantity'],
                'december_quantity' => $quantities['december_quantity'],
                'total_quantity' => $totalQuantity,
                'total_cost' => $totalCost
            ];
        }

        // Summary data
        $summaryData = [
            'total_ppmp_cost' => $grandTotalCost,
            'total_items' => count(array_filter($ppmpData, function ($item) {
                return !isset($item['is_category_header']) || !$item['is_category_header'];
            }))
        ];

        return view('bac.bac_app_cse_page', compact('ppmpData', 'year', 'summaryData'));
    }
}
