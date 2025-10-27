@extends('layouts.app')

@section('title', 'Items')
@section('content')
    <div class="container-fluid p-0">

        <div class="row mb-2 mb-xl-3 align-items-center">
            <div class="col-auto">
                <h1 class="mb-0">Items Inventory</h1>
            </div>
            <div class="col-auto ms-auto">
                <div class="d-flex align-items-center gap-2">
                    <!-- Existing category filter -->
                    <select name="filterByCategory" id="filterByCategory" class="form-select">
                        <option value="" selected>Filter By Item Category</option>
                        @foreach ($itemCategories as $category)
                            <option value="{{ $category->id }}">{{ $category->item_category_name }}</option>
                        @endforeach
                    </select>

                    <!-- ✅ New account code filter -->
                    <select name="filterByAccountCode" id="filterByAccountCode" class="form-select">
                        <option value="" selected>Filter By Account Code</option>
                        @foreach ($accountCodes as $accountCode)
                            <option value="{{ $accountCode->id }}">{{ $accountCode->account_name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

        </div>
        <div class="container-fluid p-0">

            <div class="row">
                <div class="col-12">
                    <div class="card">

                        <div class="card-body">
                            <table id="itemTable" class="table table-responsive w-100 table-hover">
                                <thead>
                                    <tr>
                                        <th>Item Code</th>
                                        <th>Item Name</th>
                                        <th>Item Category</th>
                                        <th>Account Code</th>
                                        <th>Unit of Measure</th>
                                        <th>Is Available?</th>
                                        <th>Is PSDBM?</th>
                                        <th>Current Price</th>

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
    </div>


    <script type="text/javascript">
        function refreshItemTable(category, accountCode) {
            showLoadingIndicator();
            $.ajax({
                url: "{{ route('fetchItems') }}",
                type: 'POST',
                dataType: 'json',
                data: {
                    _token: "{{ csrf_token() }}",
                    category: category,
                    account_code: accountCode, // ✅ include new filter
                },
                success: function(data) {
                    hideLoadingIndicator();
                    var table = $('#itemTable').DataTable();
                    table.clear();

                    data.forEach(function(item) {
                        var isAvailableIcon = item.is_available ?
                            '<i class="fas fa-check-circle text-success" style="font-size: 1.2em;"></i>' :
                            '<i class="fas fa-times-circle text-danger" style="font-size: 1.2em;"></i>';

                        var isPSDBMIcon = item.is_psdbm ?
                            '<i class="fas fa-check-circle text-success" style="font-size: 1.2em;"></i>' :
                            '<i class="fas fa-times-circle text-danger" style="font-size: 1.2em;"></i>';

                        table.row.add([
                            item.item_code,
                            item.item_name,
                            item.item_category_name,
                            item.account_code_name,
                            item.item_unit_of_measure,
                            isAvailableIcon,
                            isPSDBMIcon,
                            item.current_price
                        ]);
                    });
                    table.draw();
                },
                error: function(xhr) {
                    hideLoadingIndicator();
                    console.error(xhr.responseText);
                }
            });
        }

        $(document).ready(function() {
            const table = $('#itemTable').DataTable({
                paging: true,
                pageLength: 8,
                searching: true,
                ordering: true,
                responsive: true,
                autoWidth: false
            });

            refreshItemTable($('#filterByCategory').val(), $('#filterByAccountCode').val());

            // ✅ Trigger on both dropdowns
            $('#filterByCategory, #filterByAccountCode').change(function() {
                const category = $('#filterByCategory').val();
                const accountCode = $('#filterByAccountCode').val();
                refreshItemTable(category, accountCode);
            });
        });
    </script>



@endsection
