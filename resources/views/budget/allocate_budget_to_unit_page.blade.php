@extends('layouts.app')

@section('title', 'Account Codes')

@section('content')
    <style>
        /* Budget select option styling */
        .budget-option-exhausted {
            color: #dc3545 !important;
            font-style: italic;
            background-color: #f8d7da !important;
        }

        .budget-option-low {
            color: #fd7e14 !important;
            background-color: #fff3cd !important;
        }

        /* Form validation styling */
        .budget-amount-input.is-invalid {
            border-color: #dc3545;
            box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.25);
        }

        /* Hint text styling */
        .budget-hint {
            font-size: 0.875rem;
            margin-top: 0.25rem;
        }

        .budget-hint.text-warning {
            color: #fd7e14 !important;
        }

        .budget-hint.text-danger {
            color: #dc3545 !important;
        }

        .budget-hint.text-info {
            color: #17a2b8 !important;
        }

        .budget-hint.text-success {
            color: #28a745 !important;
        }

        /* Progress bar for budget usage (optional) */
        .budget-progress {
            height: 4px;
            background-color: #e9ecef;
            border-radius: 2px;
            overflow: hidden;
            margin-top: 4px;
        }

        .budget-progress-bar {
            height: 100%;
            transition: width 0.3s ease;
        }

        .budget-progress-bar.bg-success {
            background-color: #28a745 !important;
        }

        .budget-progress-bar.bg-warning {
            background-color: #ffc107 !important;
        }

        .budget-progress-bar.bg-danger {
            background-color: #dc3545 !important;
        }

        /* Enhanced select styling for budget options */
        select option:disabled {
            background-color: #f8f9fa !important;
            color: #6c757d !important;
        }

        /* Loading state styles */
        .loading-overlay {
            position: relative;
        }

        .loading-overlay::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(255, 255, 255, 0.8);
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 1000;
        }
    </style>

    <div class="container-fluid">
        <div class="row mb-2 mb-xl-3 align-items-center">
            <div class="col-auto">
                <h1 class="mb-0">Allocate Budget for {{ $collegeOfficeUnit->college_office_unit_name }}</h1>
            </div>

            <div class="col-auto ms-auto">
                <div class="d-flex align-items-center">
                    <form method="GET">
                        <label for="filterByYear" class="me-2">Select Year:</label>
                        <select name="filterByYear" id="filterByYear" class="form-select" onchange="this.form.submit()">
                            @foreach ($years as $yearOption)
                                <option value="{{ $yearOption->year }}" {{ $yearOption->year == $year ? 'selected' : '' }}>
                                    {{ $yearOption->year }}
                                </option>
                            @endforeach
                        </select>
                    </form>
                </div>
            </div>
        </div>

        <div class="container-fluid p-0">
            <div class="row">
                <div class="row" style="height: calc(100vh - 250px);">
                    <!-- Account codes sidebar with scroll -->
                    <div class="col-md-3 col-xl-2" style="height: 100%; overflow: hidden;">
                        <div class="card h-100 d-flex flex-column">
                            <div class="card-header">
                                <h5 class="card-title mb-0">Account Codes</h5>
                            </div>
                            <div class="list-group list-group-flush flex-grow-1" role="tablist" style="overflow-y: auto;">
                                <a class="list-group-item list-group-item-action active" data-bs-toggle="list"
                                    href="#profile" role="tab" aria-selected="false" tabindex="-1">
                                    Profile
                                </a>
                                @foreach ($accountCodes as $code)
                                    <a class="list-group-item list-group-item-action" data-bs-toggle="list"
                                        href="#listGroup{{ $code->id }}" role="tab" aria-selected="false"
                                        data-account-id="{{ $code->id }}" data-account-name="{{ $code->account_name }}">
                                        {{ $code->account_name }}
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <div class="col-md-9 col-xl-10" style="height: 100%; overflow: hidden;">
                        <div class="tab-content h-100">
                            {{-- Profile Tab Content --}}
                            <div class="tab-pane fade active show" id="profile" role="tabpanel">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-8 d-flex justify-content-center flex-column">
                                                <div class="text-center">
                                                    <div class="mb-1">
                                                        <h1>{{ $collegeOfficeUnit->college_office_unit_name }}</h1>
                                                    </div>
                                                    <h4 class="text-muted">{{ $collegeOfficeUnit->category->category_name }}</h4>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="text-center">
                                                    <img alt="CMU Logo" src="{{ asset('images/cmulogo.png') }}"
                                                        class="rounded-circle img-responsive mt-2" width="150" height="150">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card" style="height:100%; overflow: hidden;">
                                    <div class="card-body" style="max-height: 400px; overflow-y: auto;">
                                        <div class="col-12 mb-3">
                                            <div class="row">
                                                <div class="col-auto ms-auto">
                                                    <div class="d-flex align-items-center">
                                                        <button class="btn btn-primary btn-sm me-2">Export to PDF <i class="fas fa-file-pdf"></i></button>
                                                        <button class="btn btn-info btn-sm">Export to Excel <i class="fas fa-file-excel"></i></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div id="exportContainer" class="exportContainer">
                                            <table class="table table-responsive table-bordered table-hover">
                                                <thead>
                                                    <tr style="background-color: rgba(2, 104, 30, 0.3)">
                                                        <th>Commodity Group</th>
                                                        <th>General Fund</th>
                                                        <th>Trust Fund</th>
                                                        <th>Special Trust Fund</th>
                                                        <th>RGMO</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach ($accountCodes as $code)
                                                        @php
                                                            $allocations = $code->budgetAllocations->groupBy(function ($allocation) {
                                                                return $allocation->wholeBudget->source_of_fund ?? null;
                                                            });
                                                        @endphp
                                                        <tr>
                                                            <td>{{ $code->account_name }}</td>
                                                            <td style="text-align: right">
                                                                {{ Number::currency($allocations->get('General Fund')?->first()?->amount ?? 0, 'PHP') }}
                                                            </td>
                                                            <td style="text-align: right">
                                                                {{ Number::currency($allocations->get('Trust Fund')?->first()?->amount ?? 0, 'PHP') }}
                                                            </td>
                                                            <td style="text-align: right">
                                                                {{ Number::currency($allocations->get('Special Trust Fund')?->first()?->amount ?? 0, 'PHP') }}
                                                            </td>
                                                            <td style="text-align: right">
                                                                {{ Number::currency($allocations->get('RGMO')?->first()?->amount ?? 0, 'PHP') }}
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            @foreach ($accountCodes as $code)
                                <div class="tab-pane fade" id="listGroup{{ $code->id }}" role="tabpanel">
                                    <div class="card">
                                        <div class="card-header">
                                            <div class="row">
                                                <div class="col-8">
                                                    <h5 class="card-title">{{ $code->account_name }}</h5>
                                                </div>
                                                <div class="col-4 text-end">
                                                    <button type="button" class="btn btn-success allocateNewBudgetButton"
                                                        data-account-id="{{ $code->id }}"
                                                        data-account-name="{{ $code->account_name }}"
                                                        data-bs-toggle="modal" data-bs-target="#allocateBudgetModal">
                                                        <i data-lucide="plus"></i> Allocate Budget
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <table class="table" id="budgetTable{{ $code->id }}">
                                                <thead>
                                                    <tr>
                                                        <th>Amount</th>
                                                        <th>Year</th>
                                                        <th>Source of Fund</th>
                                                        <th>Budget Type</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Budget Allocation Modal -->
        <div class="modal fade" id="allocateBudgetModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form id="budgetAllocationForm">
                        @csrf
                        <input type="hidden" name="account_code_id" id="selectedAccountId">
                        <input type="hidden" name="allocation_id" id="allocationId">
                        <input type="hidden" class="form-control" name="college_office_unit_id"
                            id="college_office_unit_id" value="{{ $collegeOfficeUnit->id }}">

                        <div class="modal-header">
                            <h5 class="modal-title" id="modalTitle">Allocate Budget</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <div class="mb-3">
                                <label class="form-label">Select Budget</label>
                                <select class="form-select" id="whole_budget_id" name="whole_budget_id">
                                    <option disabled selected>Select a budget</option>
                                    @foreach ($yearlyBudget as $budget)
                                        <option value="{{ $budget->id }}"
                                            {{ $budget->is_fully_allocated ? 'disabled' : '' }}
                                            data-available-amount="{{ $budget->available_amount }}"
                                            data-total-amount="{{ $budget->amount }}"
                                            data-percentage-used="{{ $budget->percentage_used }}"
                                            class="{{ $budget->is_fully_allocated ? 'budget-option-exhausted' : ($budget->percentage_used >= 90 ? 'budget-option-low' : '') }}">
                                            {{ $budget->source_of_fund }} of AY {{ $budget->year }} -
                                            Total: {{ Number::currency($budget->amount, 'PHP') }} |
                                            Available: {{ Number::currency($budget->available_amount, 'PHP') }}
                                            @if ($budget->is_fully_allocated)
                                                (Fully Allocated)
                                            @elseif($budget->percentage_used >= 90)
                                                ({{ $budget->percentage_used }}% Used)
                                            @endif
                                        </option>
                                    @endforeach
                                </select>
                                <small class="form-text budget-hint" id="budgetAvailableHint"></small>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Amount</label>
                                <input type="text" class="form-control budget-amount-input" name="budgetAmount" id="budgetAmount" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Budget Type</label>
                                <select class="form-select" name="budget_type" id="budget_type" required>
                                    <option value="" selected disabled>Select budget type</option>
                                    <option value="Main">Main</option>
                                    <option value="Supplimentary">Supplimentary</option>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success" id="addBudgetToAccountCodeButton">
                                <span class="submit-text">
                                    <i class="fas fa-save me-1"></i> Save Changes
                                </span>
                                <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        {{-- EDIT BUDGET MODAL --}}
        <div class="modal fade" id="editBudgetAllocationModal" tabindex="-1">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form id="editBudgetAllocationForm">
                        @csrf
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Budget Allocation</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" id="editBudgetAllocationId" name="editBudgetAllocationId">
                            
                            <div class="mb-3">
                                <label class="form-label">Select Budget</label>
                                <select class="form-select" id="editBudgetAllocationWholeBudget" name="editBudgetAllocationWholeBudget">
                                    <option disabled selected>Select a budget</option>
                                    @foreach ($yearlyBudget as $budget)
                                        <option value="{{ $budget->id }}"
                                            {{ $budget->is_fully_allocated ? 'disabled' : '' }}
                                            data-available-amount="{{ $budget->available_amount }}"
                                            data-total-amount="{{ $budget->amount }}"
                                            data-percentage-used="{{ $budget->percentage_used }}"
                                            class="{{ $budget->is_fully_allocated ? 'budget-option-exhausted' : ($budget->percentage_used >= 90 ? 'budget-option-low' : '') }}">
                                            {{ $budget->source_of_fund }} of AY {{ $budget->year }} -
                                            Total: {{ Number::currency($budget->amount, 'PHP') }} |
                                            Available: {{ Number::currency($budget->available_amount, 'PHP') }}
                                            @if ($budget->is_fully_allocated)
                                                (Fully Allocated)
                                            @elseif($budget->percentage_used >= 90)
                                                ({{ $budget->percentage_used }}% Used)
                                            @endif
                                        </option>
                                    @endforeach
                                </select>
                                <small class="form-text budget-hint" id="editBudgetAvailableHint"></small>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Amount</label>
                                <input type="text" class="form-control budget-amount-input" name="editBudgetAllocationAmount" id="editBudgetAllocationAmount" required>
                            </div>

                            <div class="mb-3">
                                <label class="form-label">Budget Type</label>
                                <select class="form-select" name="editBudgetAllocationBudgetType" id="editBudgetAllocationBudgetType" required>
                                    <option value="" selected disabled>Select budget type</option>
                                    <option value="Main">Main</option>
                                    <option value="Supplimentary">Supplimentary</option>
                                </select>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-success" id="editBudgetToAccountCodeButton">
                                <span class="submit-text">
                                    <i class="fas fa-save me-1"></i> Save Changes
                                </span>
                                <span class="spinner-border spinner-border-sm d-none" role="status" aria-hidden="true"></span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const modal = document.getElementById('allocateBudgetModal');
            const form = document.getElementById('budgetAllocationForm');
            const yearSelect = document.getElementById('filterByYear');
            let tables = {};

            // Initialize DataTables with empty data
            @foreach ($accountCodes as $code)
                tables['table{{ $code->id }}'] = $(`#budgetTable{{ $code->id }}`).DataTable({
                    order: [[1, 'desc']],
                    columns: [
                        {
                            data: null,
                            render: function(data) {
                                return new Intl.NumberFormat('en-PH', {
                                    style: 'currency',
                                    currency: 'PHP'
                                }).format(data.amount);
                            }
                        },
                        {
                            data: null,
                            render: function(data) {
                                return data.whole_budget ? data.whole_budget.year : '';
                            }
                        },
                        {
                            data: null,
                            render: function(data) {
                                return data.whole_budget ? data.whole_budget.source_of_fund : '';
                            }
                        },
                        {
                            data: null,
                            render: function(data) {
                                return data.whole_budget ? data.whole_budget.type_of_budget : '';
                            }
                        },
                        {
                            data: null,
                            orderable: false,
                            render: function(data) {
                                return `
                                    <div class="btn-group" role="group">
                                        <button type="button" class="btn btn-sm btn-success edit-budget me-1" 
                                            data-id="${data.id}" 
                                            data-amount="${data.amount}"
                                            data-year="${data.whole_budget ? data.whole_budget.year : ''}"
                                            data-source="${data.whole_budget ? data.whole_budget.id : ''}"
                                            data-type="${data.whole_budget ? data.whole_budget.type_of_budget : ''}">
                                            <i class="fas fa-edit"></i>
                                        </button>
                                        <button type="button" class="btn btn-sm btn-danger delete-budget" 
                                            data-id="${data.id}" 
                                            data-year="${data.whole_budget.year}" 
                                            data-account-code="{{ $code->account_name }}" 
                                            data-amount="${data.amount}" 
                                            data-college-office-unit="{{ $collegeOfficeUnit->college_office_unit_name }}">
                                            <i class="fas fa-trash"></i>
                                        </button>
                                    </div>`;
                            }
                        }
                    ]
                });
            @endforeach

            // Initialize input masks
            $('#budgetAmount, #editBudgetAllocationAmount').inputmask({
                alias: 'numeric',
                groupSeparator: ',',
                autoGroup: true,
                digits: 2,
                digitsOptional: false,
                prefix: '₱',
                placeholder: '0',
                rightAlign: true,
                removeMaskOnSubmit: true
            });

            // Enhanced function to update available amount hint with better display
            function updateAvailableAmountHint(selectElement, hintElement) {
                const selectedOption = selectElement.find('option:selected');
                const availableAmount = selectedOption.data('available-amount');
                const totalAmount = selectedOption.data('total-amount');
                const percentageUsed = selectedOption.data('percentage-used');
                
                if (availableAmount !== undefined && totalAmount !== undefined) {
                    const formattedAvailable = new Intl.NumberFormat('en-PH', {
                        style: 'currency',
                        currency: 'PHP'
                    }).format(availableAmount);
                    
                    const formattedTotal = new Intl.NumberFormat('en-PH', {
                        style: 'currency',
                        currency: 'PHP'
                    }).format(totalAmount);
                    
                    // Create detailed hint message
                    let hintMessage = `Available: ${formattedAvailable} of ${formattedTotal}`;
                    
                    if (percentageUsed > 0) {
                        hintMessage += ` (${percentageUsed}% used)`;
                    }
                    
                    hintElement.text(hintMessage);
                    
                    // Apply appropriate styling based on availability
                    hintElement.removeClass('text-danger text-warning text-info text-success');
                    
                    if (availableAmount <= 0) {
                        hintElement.text('This budget has been fully allocated');
                        hintElement.addClass('text-danger');
                    } else if (percentageUsed >= 90) {
                        hintElement.addClass('text-warning');
                    } else if (percentageUsed >= 70) {
                        hintElement.addClass('text-info');
                    } else {
                        hintElement.addClass('text-success');
                    }
                } else {
                    hintElement.text('');
                }
            }

            // Enhanced function to validate budget amount against available amount
            function validateBudgetAmount(amountInput, selectElement, submitButton) {
                const selectedOption = selectElement.find('option:selected');
                const availableAmount = selectedOption.data('available-amount') || 0;
                
                let inputAmount = amountInput.val().replace(/[₱,\s]/g, '');
                inputAmount = parseFloat(inputAmount) || 0;
                
                const isValidAmount = inputAmount > 0;
                const isWithinBudget = inputAmount <= availableAmount;
                const isValid = isValidAmount && isWithinBudget;
                
                // Remove existing validation classes and messages
                amountInput.removeClass('is-invalid is-valid');
                amountInput.next('.invalid-feedback').remove();
                amountInput.next('.valid-feedback').remove();
                
                if (inputAmount > 0) {
                    if (!isWithinBudget) {
                        amountInput.addClass('is-invalid');
                        
                        const formattedAvailable = new Intl.NumberFormat('en-PH', {
                            style: 'currency',
                            currency: 'PHP'
                        }).format(availableAmount);
                        
                        const errorDiv = $(`<div class="invalid-feedback">
                            Amount exceeds available budget of ${formattedAvailable}
                        </div>`);
                        amountInput.after(errorDiv);
                        
                        submitButton.prop('disabled', true);
                    } else {
                        amountInput.addClass('is-valid');
                        
                        const successDiv = $(`<div class="valid-feedback">
                            Amount is valid
                        </div>`);
                        amountInput.after(successDiv);
                        
                        submitButton.prop('disabled', false);
                    }
                } else {
                    // Reset submit button state when no amount is entered
                    submitButton.prop('disabled', false);
                }
            }

            // Enhanced filterWholeBudgetOptions function
            function filterWholeBudgetOptions() {
                const selectedYear = document.getElementById('filterByYear').value;
                const budgetSelects = ['#whole_budget_id', '#editBudgetAllocationWholeBudget'];
                
                budgetSelects.forEach(selectId => {
                    const budgetSelect = $(selectId);
                    if (!budgetSelect.length) return;
                    
                    const options = budgetSelect.find('option');
                    let hasValidOption = false;

                    options.each(function() {
                        const option = $(this);
                        
                        if (option.prop('disabled') && option.val() === '') {
                            option.show(); // Keep default disabled option visible
                            return;
                        }

                        // Extract year from the option text
                        const match = option.text().match(/AY (\d{4})/);
                        const optionYear = match ? match[1] : null;

                        if (optionYear === selectedYear) {
                            option.show();
                            hasValidOption = true;
                        } else {
                            option.hide();
                            
                            // If this hidden option was selected, reset selection
                            if (option.prop('selected')) {
                                budgetSelect.val('').trigger('change');
                                
                                // Clear hints and validation
                                if (selectId === '#whole_budget_id') {
                                    $('#budgetAvailableHint').text('');
                                    $('#budgetAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
                                } else {
                                    $('#editBudgetAvailableHint').text('');
                                    $('#editBudgetAllocationAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
                                }
                            }
                        }
                    });

                    // If no valid options exist for the selected year, reset the selection
                    if (!hasValidOption) {
                        budgetSelect.val('');
                    }
                });
            }

            // Event listeners for budget validation and hints

            // Handle budget selection changes in allocate modal
            $('#whole_budget_id').on('change', function() {
                updateAvailableAmountHint($(this), $('#budgetAvailableHint'));
                
                // Re-validate amount if already entered
                if ($('#budgetAmount').val()) {
                    validateBudgetAmount($('#budgetAmount'), $(this), $('#addBudgetToAccountCodeButton'));
                }
                
                // Clear previous validation when changing budget
                $('#budgetAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
            });

            // Handle budget amount input in allocate modal
            $('#budgetAmount').on('input keyup', function() {
                validateBudgetAmount($(this), $('#whole_budget_id'), $('#addBudgetToAccountCodeButton'));
            });

            // Handle budget selection changes in edit modal
            $('#editBudgetAllocationWholeBudget').on('change', function() {
                updateAvailableAmountHint($(this), $('#editBudgetAvailableHint'));
                
                // Re-validate amount if already entered
                if ($('#editBudgetAllocationAmount').val()) {
                    validateBudgetAmount($('#editBudgetAllocationAmount'), $(this), $('#editBudgetToAccountCodeButton'));
                }
                
                // Clear previous validation when changing budget
                $('#editBudgetAllocationAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
            });

            // Handle budget amount input in edit modal
            $('#editBudgetAllocationAmount').on('input keyup', function() {
                validateBudgetAmount($(this), $('#editBudgetAllocationWholeBudget'), $('#editBudgetToAccountCodeButton'));
            });

            // Function to refresh specific table
            function refreshTable(accountId, year) {
                if (!accountId) return;

                showLoadingIndicator();

                $.ajax({
                    url: "{{ route('budgetOfficeFetchBudgetAllocationsV2') }}",
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        _token: "{{ csrf_token() }}",
                        account_code_id: accountId,
                        college_office_unit_id: {{ $collegeOfficeUnit->id }},
                        year: year
                    },
                    success: function(response) {
                        const table = tables[`table${accountId}`];
                        if (table) {
                            table.clear();
                            table.rows.add(response.data).draw();
                        }
                    },
                    error: function(xhr) {
                        console.error("Error:", xhr.responseText);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: 'Failed to fetch budget allocations.'
                        });
                    },
                    complete: function() {
                        hideLoadingIndicator();
                    }
                });
            }

            // Handle tab changes
            $('a[data-bs-toggle="list"]').on('shown.bs.tab', function(e) {
                const accountId = $(e.target).data('account-id');
                const year = yearSelect.value;
                if (accountId) {
                    refreshTable(accountId, year);
                    console.log('filtering data from account ID ' + accountId + ' using the year ' + year);
                }
            });

            // Handle year changes
            $('#filterByYear').on('change', function() {
                const selectedYear = $(this).val();

                // Filter budget options
                filterWholeBudgetOptions();

                // Refresh current table if on an account tab
                const activeTab = $('.list-group-item.active');
                const accountId = activeTab.data('account-id');
                if (accountId) {
                    refreshTable(accountId, selectedYear);
                    console.log('filtering data from account ID ' + accountId + ' using the year ' + selectedYear);
                }
            });

            // Handle allocate budget button click
            $('.allocateNewBudgetButton').on('click', function() {
                const accountId = $(this).data('account-id');
                const accountName = $(this).data('account-name');

                $('#selectedAccountId').val(accountId);
                $('#allocationId').val('');
                $('#modalTitle').text(`Allocate ${accountName} Budget`);
                form.reset();

                // Clear validation states
                $('#budgetAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
                $('#budgetAvailableHint').text('');

                // Filter budget options when opening modal
                filterWholeBudgetOptions();
            });

            // Handle form submission - ADD BUDGET ALLOCATION
            form.addEventListener('submit', function(e) {
                e.preventDefault();

                const submitButton = $('#addBudgetToAccountCodeButton');
                submitButton.prop('disabled', true);
                submitButton.find('.submit-text').text('Saving Changes...');
                submitButton.find('.spinner-border').removeClass('d-none');

                let amount = $('#budgetAmount').val();
                amount = amount.replace(/[₱,\s]/g, '');
                amount = parseFloat(amount);

                $.ajax({
                    url: "{{ route('allocateBudgetToCollegeOfficeUnit') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        collegeOfficeUnitId: $('#college_office_unit_id').val(),
                        accountCodeId: $('#selectedAccountId').val(),
                        wholeBudgetId: $('#whole_budget_id').val(),
                        budgetAmount: amount,
                        budgetType: $('select[name="budget_type"]').val()
                    },
                    dataType: 'json',
                    success: function(response) {
                        $('#allocateBudgetModal').modal('hide');
                        
                        Swal.fire({
                            icon: 'success',
                            title: 'Success!',
                            text: response.message || 'Budget allocation saved successfully!'
                        }).then(() => {
                            // Reload the page
                            window.location.reload();
                        });
                    },
                    error: function(xhr) {
                        let errorMessage = 'Something went wrong while saving the budget allocation.';
                        
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: errorMessage
                        });
                        console.error(xhr.responseText);
                    },
                    complete: function() {
                        submitButton.prop('disabled', false);
                        submitButton.find('.submit-text').html('<i class="fas fa-save me-1"></i> Save Changes');
                        submitButton.find('.spinner-border').addClass('d-none');
                    }
                });
            });

            // Handle delete budget allocation
            $(document).on('click', '.delete-budget', function() {
                const id = $(this).data('id');
                const year = $(this).data('year');
                const amount = $(this).data('amount');
                const accountCode = $(this).data('account-code');
                const collegeOfficeUnit = $(this).data('college-office-unit');

                // Format the amount as PHP currency
                const formattedAmount = new Intl.NumberFormat('en-PH', {
                    style: 'currency',
                    currency: 'PHP'
                }).format(amount);

                Swal.fire({
                    title: `Are you sure you want to delete this budget allocation?`,
                    text: `Budget amount of ${formattedAmount} allocated to ${collegeOfficeUnit}: ${accountCode}`,
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#02681e',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if (result.isConfirmed) {
                        showLoadingIndicator();
                        $.ajax({
                            url: "{{ route('budgetOfficeDeleteBudgetAllocation') }}",
                            type: 'POST',
                            dataType: 'JSON',
                            data: {
                                _token: "{{ csrf_token() }}",
                                budget_allocation_id: id
                            },
                            success: function(response) {
                                hideLoadingIndicator();
                                Swal.fire('Deleted!', `${response.message}`, 'success').then(() => {
                                    // Reload the page
                                    window.location.reload();
                                });
                            },
                            error: function(xhr, status, error) {
                                hideLoadingIndicator();
                                let errorMessage = 'Something went wrong while deleting the budget allocation.';
                                
                                if (xhr.responseJSON && xhr.responseJSON.message) {
                                    errorMessage = xhr.responseJSON.message;
                                }

                                Swal.fire('Error!', errorMessage, 'error');
                                console.error(xhr.responseText);
                            }
                        });
                    }
                });
            });

            // Handle edit button click
            $(document).on('click', '.edit-budget', function() {
                const id = $(this).data('id');
                const amount = $(this).data('amount');
                const wholeBudgetId = $(this).data('source');
                const budgetType = $(this).data('type');

                $('#editBudgetAllocationId').val(id);
                $('#editBudgetAllocationAmount').val(amount);
                $('#editBudgetAllocationWholeBudget').val(wholeBudgetId);
                $('#editBudgetAllocationBudgetType').val(budgetType);

                // Clear validation states
                $('#editBudgetAllocationAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
                $('#editBudgetAvailableHint').text('');

                // Update hint for selected budget
                updateAvailableAmountHint($('#editBudgetAllocationWholeBudget'), $('#editBudgetAvailableHint'));

                // Show the modal
                $('#editBudgetAllocationModal').modal('show');
            });

            // Handle edit form submission - EDIT BUDGET ALLOCATION
            $(document).on('submit', '#editBudgetAllocationForm', function(e) {
                e.preventDefault();

                const submitButton = $('#editBudgetToAccountCodeButton');
                submitButton.prop('disabled', true);
                submitButton.find('.submit-text').text('Saving Changes...');
                submitButton.find('.spinner-border').removeClass('d-none');

                // Retrieve the updated values
                let amount = $('#editBudgetAllocationAmount').val();
                amount = amount.replace(/[₱,\s]/g, '');
                amount = parseFloat(amount);

                let budgetAllocationId = $('#editBudgetAllocationId').val();
                let wholeBudgetId = $('#editBudgetAllocationWholeBudget').val();
                let budgetType = $('#editBudgetAllocationBudgetType').val();

                $.ajax({
                    url: "{{ route('budgetOfficeEditBudgetAllocation') }}",
                    type: 'POST',
                    data: {
                        _token: "{{ csrf_token() }}",
                        budget_allocation_id: budgetAllocationId,
                        whole_budget_id: wholeBudgetId,
                        budget_amount: amount,
                        budget_type: budgetType,
                    },
                    dataType: 'json',
                    success: function(response) {
                        $('#editBudgetAllocationModal').modal('hide');
                        
                        Swal.fire('Updated!', `${response.message}`, 'success').then(() => {
                            // Reload the page
                            window.location.reload();
                        });
                    },
                    error: function(xhr) {
                        let errorMessage = 'Something went wrong while updating the budget allocation.';
                        
                        if (xhr.responseJSON && xhr.responseJSON.message) {
                            errorMessage = xhr.responseJSON.message;
                        }

                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: errorMessage
                        });
                        console.error(xhr.responseText);
                    },
                    complete: function() {
                        submitButton.prop('disabled', false);
                        submitButton.find('.submit-text').html('<i class="fas fa-save me-1"></i> Save Changes');
                        submitButton.find('.spinner-border').addClass('d-none');
                    }
                });
            });

            // Clear validation when modals are hidden
            $('#allocateBudgetModal').on('hidden.bs.modal', function() {
                $('#budgetAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
                $('#budgetAvailableHint').text('');
            });

            $('#editBudgetAllocationModal').on('hidden.bs.modal', function() {
                $('#editBudgetAllocationAmount').removeClass('is-invalid is-valid').next('.invalid-feedback, .valid-feedback').remove();
                $('#editBudgetAvailableHint').text('');
            });

            // Make filterWholeBudgetOptions available globally
            window.filterWholeBudgetOptions = filterWholeBudgetOptions;
        });
    </script>
@endsection