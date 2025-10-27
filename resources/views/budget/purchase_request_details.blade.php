@extends('layouts.app')

@section('title', 'Purchase Requests')

@section('content')
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3 align-items-center">
            <div class="col-auto">
                <h1 class="mb-0">Purchase Requests Details</h1>
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
                                        <tr class="{{ $item->status === 1 ? 'table-success' : 'table-danger' }}"
                                            onclick="showItemDetailModal({{ $item->id }}, '{{ $item->item->item_name }}', {{ $item->status }})">
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
                                                <div class="col-6 text-start">Purpose:</div>
                                                <div class="col-6 text-start">
                                                    <strong>{{ $purchaseRequest->purpose }}</strong>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="prItemDetailModal" tabindex="-1" role="dialog" aria-labelledby="prItemDetailModal"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-md" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">PR Item Detail</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form id="updatePRItemForm" method="POST">
                    @csrf
                    <div class="modal-body mx-3">
                        <input type="hidden" id="id" name="id">
                        <div class="mb-3">
                            <input type="text" id="sample" name="sample" class="form-control" readonly>
                        </div>
                        <div class="form-check form-switch">
                            <label class="form-check-label" for="flexSwitchCheckChecked">Available?</label>
                            <input class="form-check-input" type="checkbox" id="flexSwitchCheckChecked" checked=""
                                onchange="updateStatusValue()">
                        </div>
                        <input type="hidden" id="status" name="status" value="1">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-success" id="updatePRItemButton">
                            <span class="submit-text">
                                <i class="fas fa-save me-1"></i> Save Changes
                            </span>
                            <span class="spinner-border spinner-border-sm d-none" role="status"
                                aria-hidden="true"></span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Check for stored success message on page load
        $(document).ready(function() {
            const successMessage = localStorage.getItem('prSuccessMessage');
            if (successMessage) {
                Swal.fire({
                    icon: 'success',
                    title: 'Success!',
                    text: successMessage
                });
                localStorage.removeItem('prSuccessMessage');
            }
        });

        $('#updatePRItemForm').submit(function(e) {
            e.preventDefault();

            // Disable submit button and show loading state
            const submitButton = $('#updatePRItemButton');
            submitButton.prop('disabled', true);
            submitButton.find('.submit-text').text('Saving Changes...');
            submitButton.find('.spinner-border').removeClass('d-none');

            $.ajax({
                url: "{{ route('budgetOfficeUpdatePRItem') }}",
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    id: $('#id').val(),
                    status: $('#status').val(),
                },
                dataType: 'json',
                success: function(response) {
                    // Store success message in localStorage
                    localStorage.setItem('prSuccessMessage', response.message);

                    // Reload the page
                    location.reload();
                },
                error: function(xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Something went wrong.'
                    });
                    console.error(xhr.responseText);

                    // Re-enable submit button and hide loading state on error
                    submitButton.prop('disabled', false);
                    submitButton.find('.submit-text').text('Save Changes');
                    submitButton.find('.spinner-border').addClass('d-none');
                }
            });
        });

        function showItemDetailModal(id, name, status) {
            $('#id').val(id);
            $('#sample').val(name);

            // Set the toggle button state based on the status
            const toggleButton = $('#flexSwitchCheckChecked');
            const statusInput = $('#status');
            if (status === 1) {
                toggleButton.prop('checked', true);
                statusInput.val(1);
            } else {
                toggleButton.prop('checked', false);
                statusInput.val(0);
            }

            $('#prItemDetailModal').modal('show');
        }

        function updateStatusValue() {
            const toggleButton = $('#flexSwitchCheckChecked');
            const statusInput = $('#status');
            statusInput.val(toggleButton.is(':checked') ? 1 : 0);
        }
    </script>

@endsection
