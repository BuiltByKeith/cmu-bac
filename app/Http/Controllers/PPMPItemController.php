<?php

namespace App\Http\Controllers;

use App\Models\Item;
use App\Models\PPMP;
use App\Models\PPMPItem;
use Illuminate\Http\Request;
use Illuminate\Support\Number;

class PPMPItemController extends Controller
{
    //

    public function fetchItemsForPPMP(Request $request)
    {
        $ppmp = PPMP::findOrFail($request->ppmp_id);

        $query = Item::where('account_code_id', $ppmp->budgetAllocation->accountCode->id);

        // Apply search filter if the user has entered a search term
        if ($request->filled('search')) {
            $query->where('item_name', 'LIKE', '%' . $request->search . '%');
        }

        // Limit results for performance
        $itemsObject = $query->limit(10)->get();

        // Map results for Select2
        $items = $itemsObject->map(function ($item) {
            $activePrice = $item->prices()->where('is_active', 1)->first();
            $priceText = $activePrice ? Number::currency($activePrice->price, 'PHP') : 'No active price';

            return [
                'id' => $item->id,
                'text' => $item->item_name . ' --- ' . $priceText,
                'mode_of_procurement' => $item->is_psdbm,
            ];
        });


        return response()->json(['results' => $items]);
    }




    public function endUserAddItemToPPMP(Request $request)
    {
        $validatedData = $request->validate([
            'ppmpId' => 'required|exists:p_p_m_p_s,id|numeric',
            'remainingBudget' => 'required|numeric',
            'itemId' => 'required|exists:items,id|numeric',
            'janMilsQuantity' => 'nullable|numeric|min:0',
            'febMilsQuantity' => 'nullable|numeric|min:0',
            'marMilsQuantity' => 'nullable|numeric|min:0',
            'aprMilsQuantity' => 'nullable|numeric|min:0',
            'mayMilsQuantity' => 'nullable|numeric|min:0',
            'junMilsQuantity' => 'nullable|numeric|min:0',
            'julMilsQuantity' => 'nullable|numeric|min:0',
            'augMilsQuantity' => 'nullable|numeric|min:0',
            'sepMilsQuantity' => 'nullable|numeric|min:0',
            'octMilsQuantity' => 'nullable|numeric|min:0',
            'novMilsQuantity' => 'nullable|numeric|min:0',
            'decMilsQuantity' => 'nullable|numeric|min:0',
            'modeOfProcurement' => 'nullable|string|max:255'
        ]);

        $ppmp = PPMP::findOrFail($validatedData['ppmpId']);

        // Check if PPMP is already submitted
        if ($ppmp->is_submitted == 1) {
            return response()->json(['success' => false, 'message' => 'Cannot add new item because PPMP is already submitted!']);
        }

        // Calculate total quantity for the item
        $totalQuantity = array_sum([
            $validatedData['janMilsQuantity'] ?? 0,
            $validatedData['febMilsQuantity'] ?? 0,
            $validatedData['marMilsQuantity'] ?? 0,
            $validatedData['aprMilsQuantity'] ?? 0,
            $validatedData['mayMilsQuantity'] ?? 0,
            $validatedData['junMilsQuantity'] ?? 0,
            $validatedData['julMilsQuantity'] ?? 0,
            $validatedData['augMilsQuantity'] ?? 0,
            $validatedData['sepMilsQuantity'] ?? 0,
            $validatedData['octMilsQuantity'] ?? 0,
            $validatedData['novMilsQuantity'] ?? 0,
            $validatedData['decMilsQuantity'] ?? 0
        ]);

        // Check if any quantity is provided
        if ($totalQuantity <= 0) {
            return response()->json(['success' => false, 'message' => 'Please specify at least one quantity for any month.']);
        }

        // Get the active price for the item
        $item = Item::findOrFail($validatedData['itemId']);
        $activePrice = $item->prices()->where('is_active', 1)->first();

        if (!$activePrice) {
            return response()->json(['success' => false, 'message' => 'No active price found for this item. Please contact administrator.']);
        }

        // Calculate total amount for this item
        $totalItemAmount = $totalQuantity * $activePrice->price;

        // Check if total item amount exceeds remaining budget
        if ($totalItemAmount > $validatedData['remainingBudget']) {
            return response()->json([
                'success' => false,
                'message' => 'Cannot add this item. Total cost (₱' . number_format($totalItemAmount, 2) . ') exceeds remaining budget (₱' . number_format($validatedData['remainingBudget'], 2) . ').'
            ]);
        }

        // Create the PPMP item
        PPMPItem::create([
            'ppmp_id' => $validatedData['ppmpId'],
            'item_id' => $validatedData['itemId'],
            'january_quantity' => $validatedData['janMilsQuantity'] ?? 0,
            'february_quantity' => $validatedData['febMilsQuantity'] ?? 0,
            'march_quantity' => $validatedData['marMilsQuantity'] ?? 0,
            'april_quantity' => $validatedData['aprMilsQuantity'] ?? 0,
            'may_quantity' => $validatedData['mayMilsQuantity'] ?? 0,
            'june_quantity' => $validatedData['junMilsQuantity'] ?? 0,
            'july_quantity' => $validatedData['julMilsQuantity'] ?? 0,
            'august_quantity' => $validatedData['augMilsQuantity'] ?? 0,
            'september_quantity' => $validatedData['sepMilsQuantity'] ?? 0,
            'october_quantity' => $validatedData['octMilsQuantity'] ?? 0,
            'november_quantity' => $validatedData['novMilsQuantity'] ?? 0,
            'december_quantity' => $validatedData['decMilsQuantity'] ?? 0,
            'mode_of_procurement' => $validatedData['modeOfProcurement'] ? $validatedData['modeOfProcurement'] : 'PSDBM',
        ]);

        return response()->json(['success' => true, 'message' => 'Item added to PPMP successfully!']);
    }

    public function endUserEditPPMPItem(Request $request)
    {
        $validatedData = $request->validate([
            'PPMPItemId' => 'required|exists:p_p_m_p_items,id|numeric',
            'remainingBudget' => 'required|numeric',
            'janMilsQuantity' => 'nullable|numeric|min:0',
            'febMilsQuantity' => 'nullable|numeric|min:0',
            'marMilsQuantity' => 'nullable|numeric|min:0',
            'aprMilsQuantity' => 'nullable|numeric|min:0',
            'mayMilsQuantity' => 'nullable|numeric|min:0',
            'junMilsQuantity' => 'nullable|numeric|min:0',
            'julMilsQuantity' => 'nullable|numeric|min:0',
            'augMilsQuantity' => 'nullable|numeric|min:0',
            'sepMilsQuantity' => 'nullable|numeric|min:0',
            'octMilsQuantity' => 'nullable|numeric|min:0',
            'novMilsQuantity' => 'nullable|numeric|min:0',
            'decMilsQuantity' => 'nullable|numeric|min:0'
        ]);

        $PPMPItem = PPMPItem::findOrFail($validatedData['PPMPItemId']);

        // Check if PPMP is already submitted
        if ($PPMPItem->ppmp->is_submitted == 1) {
            return response()->json(['success' => false, 'message' => 'Item Milestone Update Failed! Cannot edit items if the PPMP is already submitted.']);
        }

        // Calculate new total quantity
        $newTotalQuantity = array_sum([
            $validatedData['janMilsQuantity'] ?? 0,
            $validatedData['febMilsQuantity'] ?? 0,
            $validatedData['marMilsQuantity'] ?? 0,
            $validatedData['aprMilsQuantity'] ?? 0,
            $validatedData['mayMilsQuantity'] ?? 0,
            $validatedData['junMilsQuantity'] ?? 0,
            $validatedData['julMilsQuantity'] ?? 0,
            $validatedData['augMilsQuantity'] ?? 0,
            $validatedData['sepMilsQuantity'] ?? 0,
            $validatedData['octMilsQuantity'] ?? 0,
            $validatedData['novMilsQuantity'] ?? 0,
            $validatedData['decMilsQuantity'] ?? 0
        ]);

        // Calculate current item total quantity (before edit)
        $currentTotalQuantity = array_sum([
            $PPMPItem->january_quantity,
            $PPMPItem->february_quantity,
            $PPMPItem->march_quantity,
            $PPMPItem->april_quantity,
            $PPMPItem->may_quantity,
            $PPMPItem->june_quantity,
            $PPMPItem->july_quantity,
            $PPMPItem->august_quantity,
            $PPMPItem->september_quantity,
            $PPMPItem->october_quantity,
            $PPMPItem->november_quantity,
            $PPMPItem->december_quantity
        ]);

        // Get the active price for the item
        $activePrice = $PPMPItem->item->prices()->where('is_active', 1)->first();

        if (!$activePrice) {
            return response()->json(['success' => false, 'message' => 'No active price found for this item. Please contact administrator.']);
        }

        // Calculate the difference in cost
        $currentItemAmount = $currentTotalQuantity * $activePrice->price;
        $newItemAmount = $newTotalQuantity * $activePrice->price;
        $amountDifference = $newItemAmount - $currentItemAmount;

        // Check if the difference exceeds remaining budget
        if ($amountDifference > $validatedData['remainingBudget']) {
            return response()->json([
                'success' => false,
                'message' => 'Cannot update this item. Additional cost (₱' . number_format($amountDifference, 2) . ') exceeds remaining budget (₱' . number_format($validatedData['remainingBudget'], 2) . ').'
            ]);
        }

        // Update the PPMP item
        $PPMPItem->update([
            'january_quantity' => $validatedData['janMilsQuantity'] ?? 0,
            'february_quantity' => $validatedData['febMilsQuantity'] ?? 0,
            'march_quantity' => $validatedData['marMilsQuantity'] ?? 0,
            'april_quantity' => $validatedData['aprMilsQuantity'] ?? 0,
            'may_quantity' => $validatedData['mayMilsQuantity'] ?? 0,
            'june_quantity' => $validatedData['junMilsQuantity'] ?? 0,
            'july_quantity' => $validatedData['julMilsQuantity'] ?? 0,
            'august_quantity' => $validatedData['augMilsQuantity'] ?? 0,
            'september_quantity' => $validatedData['sepMilsQuantity'] ?? 0,
            'october_quantity' => $validatedData['octMilsQuantity'] ?? 0,
            'november_quantity' => $validatedData['novMilsQuantity'] ?? 0,
            'december_quantity' => $validatedData['decMilsQuantity'] ?? 0,
        ]);

        return response()->json(['success' => true, 'message' => 'Item Milestone Updated Successfully!']);
    }

    public function endUserDeleteItemFromPPMP(Request $request)
    {
        $item = PPMPItem::findOrFail($request->item_id);

        if ($item && $item->ppmp->is_submitted == 0) {
            $item->delete();

            return response()->json(['success' => true, 'message' => 'Item successfully deleted!']);
        }

        return response()->json(['success' => false, 'message' => 'Item deletion failed. Cannot delete item when the PPMP is alreadry submitted.']);
    }
}
