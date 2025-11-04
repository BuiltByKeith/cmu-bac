@extends('layouts.app')

@section('title', 'PPMPs')

@section('content')
    <div class="container-fluid">
        <div class="row mb-2 mb-xl-3 align-items-center">
            <div class="col-auto">
                <h1 class="mb-0">List of Project Procurement Management Plan</h1>
            </div>
            <div class="col-auto ms-auto">
                <div class="d-flex align-items-center">
                    <div class="col-6">Filter By Year:</div>
                    <div class="col-6">
                        <select name="filterByYear" id="filterByYear" class="form-control">
                            @foreach ($years as $year)
                                <option value="{{ $year->year }}" data-deadline="{{ $year->ppmp_deadline }}"
                                    data-is_open="{{ $year->is_open }}" {{ $year->is_current == 1 ? 'selected' : '' }}>
                                    {{ $year->year }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-12">
                <div class="alert alert-info" id="deadline-info">
                    <div class="d-flex align-items-center">
                        <i class="fas fa-calendar-alt me-2"></i>
                        <div>
                            <strong>PPMP Submission Deadline:</strong>
                            <span id="ppmp-deadline-display">Loading...</span>
                        </div>
                    </div>
                    <div class="d-flex align-items-center mx-3">
                        <i class="fas fa-info-circle me-2"></i>
                        <div>
                            <strong>Submission Status:</strong>
                            <span id="submission-status">Loading...</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid p-0">
            <div class="row">
                <div class="card">
                    <div class="card-header text-end">

                        @if (now()->lt($activeYear->ppmp_deadline))
                            <button type="button" class="btn btn-success" id="addNewPPMPButton" disabled>
                                <i data-lucide="plus" class="lucide lucide-plus"></i> Create new PPMP
                            </button>
                        @endif


                    </div>
                    <div class="card-body">
                        <table class="table table-responsive table-hover" id="ppmpsTable">
                            <thead>
                                <tr>
                                    <th style="width: 15%">PPMP Code</th>
                                    <th style="width: 25%">Account Code</th>
                                    <th style="width: 25%">Purpose</th>
                                    <th>Amount</th>
                                    <th style="width: 15%">Fund Source</th>
                                    <th>Submitted</th>
                                    <th>Approval Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="addNewPPMPModal" tabindex="-1" role="dialog" aria-labelledby="addNewPPMPModal"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Create PPMP Template</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form id="addNewPPMPForm" action="" method="POST">
                    @csrf
                    <div class="modal-body mx-3">

                        <div class="row mb-3">
                            <div class="col-12 mb-3">
                                <label class="form-label">Account Code <span style="color: red">*</span></label>
                                <select name="addNewPPMPAccountCode" id="addNewPPMPAccountCode" class="form-select">

                                </select>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col-12 mb-3">
                                <label class="form-label">Purpose</label>
                                <textarea name="addNewPPMPPurpose" id="addNewPPMPPurpose" class="form-control" placeholder="E.g (CAS for Physics Department)"></textarea>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-light" data-bs-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-success" id="submitPPMPButton">
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
        function refreshPPMPsTable(year) {
            showLoadingIndicator();

            $.ajax({
                url: "{{ route('endUserFetchPPMPs') }}",
                type: 'POST',
                dataType: 'json',
                data: {
                    _token: "{{ csrf_token() }}",
                    year: year,
                },
                success: function(data) {
                    hideLoadingIndicator();

                    console.log(data); // Check fetched data in console

                    var table = $('#ppmpsTable').DataTable();
                    table.clear(); // Clear existing table data

                    data.forEach(function(ppmp) {
                        let submissionStatus;
                        if (ppmp.submissionStatus == 0) {
                            submissionStatus = '<span class="badge bg-warning">Draft</span>';
                        } else {
                            let formattedDate = new Date(ppmp.dateSubmitted).toLocaleDateString(
                                'en-US', {
                                    year: 'numeric',
                                    month: 'short',
                                    day: 'numeric',
                                    hour: '2-digit',
                                    minute: '2-digit',
                                    hour12: true
                                });

                            submissionStatus =
                                `<span class="badge bg-success">Submitted</span> <small class="text-muted">${formattedDate}</small>`;
                        }


                        let approvalStatus;
                        if (ppmp.approvalStatus == 0) {
                            approvalStatus = '<span class="badge bg-warning">Pending</span>';
                        } else if (ppmp.approvalStatus == 1) {
                            approvalStatus =
                                '<span class="badge bg-success">Approved</span> <small class="text-muted">Ready for PR</small>';
                        } else {
                            approvalStatus = '<span class="badge bg-danger">Not Approved</span>';
                        }

                        // Base action buttons that are always shown
                        var actionButtons = `
            <button type="button" class="btn btn-sm btn-primary" title="View PPMP" onclick="viewPPMP('${ppmp.hashid}')">
                <i class="fas fa-eye"></i> 
            </button>
            <button type="button" class="btn btn-sm btn-danger" title="Delete PPMP" onclick="deletePPMP(${ppmp.id}, '${ppmp.ppmpCode}')">
                <i class="fas fa-trash"></i>
            </button>
        `;



                        table.row.add([
                            ppmp.ppmpCode,
                            ppmp.accountCode,
                            ppmp.ppmpPurpose,
                            `${ppmp.totalAmount}/${ppmp.availableBudget}`,
                            ppmp.fundSource,
                            submissionStatus,
                            approvalStatus,
                            actionButtons
                        ]);
                    });

                    table.draw();
                },
                error: function(xhr, status, error) {
                    hideLoadingIndicator();
                    console.error(xhr.responseText);
                }
            });
        }

        function refreshBudgetAllocations(year) {
            $.ajax({
                url: "{{ route('fetchBudgetAllocationsForPPMP') }}", // Create this route
                type: 'POST',
                dataType: 'json',
                data: {
                    _token: "{{ csrf_token() }}",
                    year: year,
                },
                success: function(data) {
                    let select = $('#addNewPPMPAccountCode');
                    select.empty(); // Clear previous options
                    console.log(data); // Check fetched data in console


                    if (data.length > 0) {
                        select.append(
                            '<option value="" disabled selected>Select an account code with budget</option>'
                        );
                        data.forEach(allocation => {
                            select.append(`
                        <option value="${allocation.id}">
                            ${allocation.account_code.account_name} |
                            ${new Intl.NumberFormat('en-PH', { style: 'currency', currency: 'PHP' }).format(allocation.remaining_budget)} /
                            ${new Intl.NumberFormat('en-PH', { style: 'currency', currency: 'PHP' }).format(allocation.amount)} |
                            ${allocation.whole_budget.source_of_fund} |
                            ${allocation.whole_budget.year} |
                            ${allocation.whole_budget.type_of_budget}
                        </option>
                    `);
                        });
                    } else {
                        select.append(
                            '<option value="" disabled selected>No budget available for this year</option>');
                    }
                },
                error: function(xhr) {
                    console.error(xhr.responseText);
                }
            });
        }

        function updateDeadlineDisplay() {
            const selectedOption = $('#filterByYear option:selected');
            const deadline = selectedOption.data('deadline');
            const isOpen = selectedOption.data('is_open');

            // Update submission status based on is_open value
            if (isOpen == 1) {
                $('#submission-status').html(
                    '<span class="badge bg-success">OPEN</span> PPMP submission is currently open for this year.');
                $('#addNewPPMPButton').prop('disabled', false);
            } else {
                $('#submission-status').html(
                    '<span class="badge bg-danger">CLOSED</span> PPMP submission is closed for this year.');
                $('#addNewPPMPButton').prop('disabled', true);
            }

            if (deadline) {
                // Format date for display
                const deadlineDate = new Date(deadline);
                const formattedDeadline = deadlineDate.toLocaleDateString('en-US', {
                    year: 'numeric',
                    month: 'long',
                    day: 'numeric'
                });

                // Calculate days remaining
                const today = new Date();
                const daysRemaining = Math.ceil((deadlineDate - today) / (1000 * 60 * 60 * 24));

                let deadlineHTML = formattedDeadline;

                // Add days remaining context
                if (daysRemaining > 0) {
                    deadlineHTML += ` <span class="badge bg-primary ms-2">${daysRemaining} days remaining</span>`;
                } else if (daysRemaining === 0) {
                    deadlineHTML += ` <span class="badge bg-warning ms-2">Due today!</span>`;
                } else {
                    deadlineHTML += ` <span class="badge bg-danger ms-2">Deadline passed!</span>`;
                }

                $('#ppmp-deadline-display').html(deadlineHTML);

                // Update alert color based on urgency and is_open
                const alertElement = $('#deadline-info');
                if (!isOpen) {
                    alertElement.removeClass('alert-info alert-warning').addClass('alert-danger');
                } else if (daysRemaining <= 0) {
                    alertElement.removeClass('alert-info').addClass('alert-danger');
                } else if (daysRemaining <= 7) {
                    alertElement.removeClass('alert-info').addClass('alert-warning');
                } else {
                    alertElement.removeClass('alert-warning alert-danger').addClass('alert-info');
                }
            } else {
                $('#ppmp-deadline-display').text('No deadline set');
            }
        }

        $(document).ready(function() {
            $('#ppmpsTable').DataTable({
                "paging": true,
                "pageLength": 8,
                "searching": true,
                "lengthChange": false,
                "ordering": true,
                "responsive": true,
                "autoWidth": false,
                "scrollCollapse": false,
                "scrollX": false,

            }).buttons().container().appendTo('#ppmpsTable_wrapper .col-md-6:eq(0)');

            // Update deadline display on page load
            updateDeadlineDisplay();

            refreshPPMPsTable($('#filterByYear').val());
            refreshBudgetAllocations($('#filterByYear').val());

            $('#filterByYear').change(function(e) {
                let selectedYear = $(this).val();
                refreshPPMPsTable(selectedYear);
                refreshBudgetAllocations(selectedYear);
                updateDeadlineDisplay(); // Update deadline display when year changes
            });
        });
    </script>

    <script>
        function viewPPMP(id) {
            window.location.href = "{{ route('endUserPPMPDetails', ':id') }}".replace(':id', id);
        }

        function deletePPMP(id, ppmpCode) {
            Swal.fire({
                title: 'Are you sure you want to delete this PPMP?',
                text: `${ppmpCode}`,
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#02681e',
                cancelButtonColor: 'd33',
                confirmButtonText: 'Yes'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.ajax({
                        url: "{{ route('endUserDeletePPMP') }}", // URL is static
                        type: 'POST',
                        dataType: 'JSON',
                        data: {
                            _token: "{{ csrf_token() }}", // CSRF token for security
                            ppmpId: id, // Send the ID via POST data
                        },
                        success: function(response) {
                            if (response.success) {
                                Swal.fire('Deleted!', `${response.message}`, 'success').then(() => {
                                    refreshPPMPsTable($('#filterByYear').val());
                                    refreshBudgetAllocations($('#filterByYear').val());
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
                                refreshPPMPsTable($('#filterByYear').val());
                                refreshBudgetAllocations($('#filterByYear').val());
                            });
                            console.error(xhr.responseText);
                        },
                    });
                }
            });
        }

        $('#addNewPPMPButton').click(function() {
            // Double-check if submission is open before showing modal
            const isOpen = $('#filterByYear option:selected').data('is_open');
            if (isOpen == 1) {
                $('#addNewPPMPModal').modal('show');
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Submission Closed',
                    text: 'PPMP submission is currently closed for this year.'
                });
            }
        });

        $('#addNewPPMPForm').on('submit', function(e) {
            e.preventDefault();

            // Disable submit button and show loading state
            const submitButton = $('#submitPPMPButton');
            submitButton.prop('disabled', true);
            submitButton.find('.submit-text').text('Saving Changes...');
            submitButton.find('.spinner-border').removeClass('d-none');

            $.ajax({
                url: "{{ route('endUserAddNewPPMP') }}",
                type: 'POST',
                data: {
                    _token: "{{ csrf_token() }}",
                    formAddPPMPAccountCode: $('#addNewPPMPAccountCode').val(),
                    formAddPPMPPurpose: $('#addNewPPMPPurpose').val(),
                },
                dataType: 'json',
                success: function(response) {
                    $('#addNewPPMPForm')[0].reset();
                    $('#addNewPPMPModal').modal('hide');
                    if (response.success) {
                        Swal.fire({
                            icon: 'success',
                            title: 'Success!',
                            text: response.message
                        }).then(() => {
                            refreshPPMPsTable($('#filterByYear').val());
                            refreshBudgetAllocations($('#filterByYear').val());
                        });
                    } else {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error!',
                            text: response.message
                        }).then(() => {
                            refreshPPMPsTable($('#filterByYear').val());
                            refreshBudgetAllocations($('#filterByYear').val());
                        });
                    }
                },
                error: function(xhr) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error!',
                        text: 'Something went wrong.'
                    });
                    console.error(xhr.responseText);
                },
                complete: function() {
                    // Re-enable submit button and hide loading state
                    submitButton.prop('disabled', false);
                    submitButton.find('.submit-text').text('Save Changes');
                    submitButton.find('.spinner-border').addClass('d-none');
                }
            });
        });
    </script>

@endsection
