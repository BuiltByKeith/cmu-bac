@extends('layouts.app')

@section('title', 'Purchase Requests')

@section('content')
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3 d-flex align-items-center">
            <div class="col d-flex align-items-center">
                <h3 class="mb-0">Purchase Request Details</h3>
                <div class="ms-3">
                    @if ($purchaseRequest->approval_status == 0)
                        <span class="badge bg-warning">Pending</span>
                    @elseif($purchaseRequest->approval_status == 1)
                        <span class="badge bg-success">Approved</span>
                    @elseif($purchaseRequest->approval_status == 2)
                        <span class="badge bg-danger">Disapproved</span>
                    @endif
                </div>
            </div>
            <div class="col-auto">
                @if ($purchaseRequest->is_submitted == 0)
                    <span class="badge bg-warning">Draft</span>
                @elseif($purchaseRequest->is_submitted == 1)
                    <span class="badge bg-success">Submitted</span>
                @endif
            </div>
        </div>

        <div class="container-fluid p-0">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <table class="table table-responsive table-hover table-bordered">
                                <thead>
                                    <tr>
                                        <th class="text-center" colspan="6">
                                            <div class="text-center mb-4">
                                                <h3 style="font-weight: bold">PURCHASE REQUEST</h3>
                                            </div>
                                            <div class="row align-items-center justify-content-center">
                                                <div class="col-6">
                                                    <div class="text-start">
                                                        Entity Name: <u>CENTRAL MINDANAO UNIVERSITY</u>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="text-end">
                                                        Fund Cluster: _________________
                                                    </div>
                                                </div>
                                            </div>
                                        </th>
                                    </tr>
                                </thead>
                                <thead>
                                    <tr>
                                        <th style="width: 20%" colspan="2">
                                            <div class="text-center">
                                                Office/Section:
                                                <u>{{ $purchaseRequest->collegeOfficeUnit->college_office_unit_name }}</u>
                                                <br>
                                                CMU Funded 2024-2025
                                            </div>
                                        </th>
                                        <th style="width: 60%" colspan="2">
                                            <div class="text-start">
                                                PR Number: <u>{{ $purchaseRequest->pr_code }}</u> <br>
                                                Responsibility Center Code: _______________
                                            </div>
                                        </th>
                                        <th style="width: 20%" colspan="2">
                                            <div class="text-center">
                                                Date Created:
                                                <u>{{ $purchaseRequest->date_submitted ? Carbon\Carbon::parse($purchaseRequest->date_submitted)->format('F d, Y') : '' }}</u>
                                            </div>
                                        </th>
                                    </tr>
                                    <tr>
                                        <th style="width: 15%">Stock Property No.</th>
                                        <th style="width: 5%">Unit</th>
                                        <th style="width: 50%" class="text-center">Item Description</th>
                                        <th style="width: 5%" class="text-center">Quantity</th>
                                        <th style="width: 10%" class="text-center">Unit Cost</th>
                                        <th style="width: 10%" class="text-center">Total Cost</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($purchaseRequest->purchaseRequestItems as $key => $item)
                                        @php
                                            $quantity =
                                                $item->january_quantity +
                                                $item->february_quantity +
                                                $item->march_quantity +
                                                $item->april_quantity +
                                                $item->may_quantity +
                                                $item->june_quantity +
                                                $item->july_quantity +
                                                $item->august_quantity +
                                                $item->september_quantity +
                                                $item->october_quantity +
                                                $item->november_quantity +
                                                $item->december_quantity;
                                            $unitPrice =
                                                $item->item->prices()->where('is_active', 1)->first()->price ?? 0;
                                            $totalCost = $quantity * $unitPrice;
                                        @endphp
                                        <tr onclick="showPrItemDetailModal('{{ $item->item->item_name }}')">
                                            <td>{{ $key + 1 }}</td>
                                            <td>{{ $item->item->unit_of_measure ?? 'N/A' }}</td>
                                            <td>{{ $item->item->item_name }} ({{ $item->item->item_description }})</td>
                                            <td class="text-center">{{ $quantity }}</td>
                                            <td class="text-center">{{ number_format($unitPrice, 2) }}</td>
                                            <td class="text-center">{{ number_format($totalCost, 2) }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                                <tbody>
                                    <tr>
                                        <td colspan="6" class="text-end">
                                            <h5>TOTAL:
                                                {{ number_format($purchaseRequest->purchaseRequestItems->sum(fn($item) => ($item->january_quantity + $item->february_quantity + $item->march_quantity + $item->april_quantity + $item->may_quantity + $item->june_quantity + $item->july_quantity + $item->august_quantity + $item->september_quantity + $item->october_quantity + $item->november_quantity + $item->december_quantity) * ($item->item->prices()->where('is_active', 1)->first()->price ?? 0)), 2) }}
                                            </h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" class="text-end">
                                            <div class="row align-items-center">
                                                <div class="text-start">Purpose: <span
                                                        style="font-weight: bold">{{ $purchaseRequest->purpose }}</span>
                                                </div>

                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="6" class="text-end">
                                            <div class="row align-items-center">
                                                <div class="col-6 text-center">
                                                    Requested By: <br><br>
                                                    <h4>{{ $purchaseRequest->preparedBy->firstname }}
                                                        {{ substr($purchaseRequest->preparedBy->middlename, 0, 1) }}.
                                                        {{ $purchaseRequest->preparedBy->lastname }}</h4>
                                                    <p>Position</p>
                                                </div>
                                                <div class="col-6 text-center">
                                                    Approved By: <br> <br>
                                                    <h4>ROLITO G. EBALLE</h4>
                                                    <p>University President</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="text-center">
                                @if ($purchaseRequest->approval_status == 0)
                                    @if ($purchaseRequest->is_submitted == 0)
                                        <button class="btn btn-success" type="button"
                                            onclick="submitPRTemplate({{ $purchaseRequest->id }}, {{ $purchaseRequest->is_submitted }})">Submit</button>
                                    @elseif ($purchaseRequest->is_submitted == 1)
                                        <button class="btn btn-warning" type="button"
                                            onclick="submitPRTemplate({{ $purchaseRequest->id }}, {{ $purchaseRequest->is_submitted }})">Unsubmit</button>
                                    @endif
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="viewItemInPrModal" tabindex="-1" role="dialog" aria-labelledby="viewItemInPrModal"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Item Details</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form id="addNewPRForm" action="{{ route('endUserCreateNewPR') }}" method="POST">
                    @csrf

                    <div class="modal-body mx-3">
                        <div class="col-12 text-center">
                            <h3 id="itemName"></h3>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-success">
                            <i class="fas fa-save me-1"></i> Save Changes
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        function showPrItemDetailModal(itemName) {
            $('#itemName').text(itemName);
            $('#viewItemInPrModal').modal('show');
        }

        function submitPRTemplate(prId, isSubmitted) {
            // Determine the title and text based on the isSubmitted value
            let alertTitle = isSubmitted ? "Are you sure you want to unsubmit this Purchase Request?" :
                "Are you sure you want to submit this Purchase Request?";
            let alertText = isSubmitted ?
                "Once this Purchase Request is unsubmitted, the BAC Office will no longer see this plan." :
                "Once this Purchase Request is submitted, the BAC Office will be able to see this plan and you can no longer unsubmit.";

            Swal.fire({
                title: alertTitle,
                text: alertText,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#02681e',
                cancelButtonColor: 'd33',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.isConfirmed) {
                    showLoadingIndicator();
                    $.ajax({
                        url: "{{ route('endUserSubmitPurchaseRequest') }}", // URL is static
                        type: 'POST',
                        dataType: 'JSON',
                        data: {
                            _token: "{{ csrf_token() }}", // CSRF token for security
                            pr_id: prId, // Send the ID via POST data
                            is_submitted: isSubmitted, // Send the ID via POST data
                        },
                        success: function(response) {
                            if (response.success) {
                                Swal.fire('Success!', `${response.message}`, 'success').then(() => {
                                    location.reload(); // Refresh the page
                                });
                            } else {
                                Swal.fire({
                                    icon: 'error',
                                    title: 'Error!',
                                    text: response.message
                                });
                            }

                        },
                        error: function(xhr, status, error) {
                            Swal.fire('Error!', 'Something went wrong.', 'error').then(() => {

                            });
                            console.error(xhr.responseText);
                        },
                        complete: function() {
                            hideLoadingIndicator();
                        }
                    });
                }
            });
        }
    </script>
@endsection
