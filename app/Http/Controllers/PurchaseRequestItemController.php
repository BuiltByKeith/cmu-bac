<?php

namespace App\Http\Controllers;

use App\Models\PurchaseRequestItem;
use Illuminate\Http\Request;

class PurchaseRequestItemController extends Controller
{
    //

    public function endUserUpdatePRItem(Request $request)
    {

        $validatedData = $request->validate([
            'id' => 'required|integer|exists:purchase_request_items,id',
            'status' => 'required|integer',
        ]);

        $purchaseRequestItem = PurchaseRequestItem::findOrFail($validatedData['id']);

        if ($purchaseRequestItem) {
            $purchaseRequestItem->status = $validatedData['status'];
            $purchaseRequestItem->save();

            return response()->json(['success' => true, 'message' => 'Purchase Request Item status updated successfully.']);
        }
    }
}
