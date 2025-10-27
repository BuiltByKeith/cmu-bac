@extends('layouts.app')

@section('title', 'APR')

@section('content')
    <div class="container-fluid p-0">
        <div class="row mb-2 mb-xl-3">
            <div class="col-12 d-flex justify-content-end">
                <button id="download-excel-btn" class="btn btn-primary btn-sm">Download Excel <i
                        class="fas fa-download"></i></button>
            </div>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="exportContent">
                    <div class="row mb-2 mb-xl-3">
                        <div class="col-12">
                            <h3 class="mb-0">Annual Procurement Report (APR) for the year {{ $year }}</h3>
                        </div>
                    </div>

                    <div class="container-fluid p-0">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center align-middle" style="font-size: 11px;">
                                <thead>
                                    <tr>
                                        <th>ITEM NO.</th>
                                        <th>ITEM AND DESCRIPTION/SPECIFICATIONS/STOCK NO.</th>
                                        <th>QUANTITY</th>
                                        <th>UNIT</th>
                                        <th>UNIT PRICE</th>
                                        <th>AMOUNT</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $grandTotal = 0; @endphp
                                    @forelse($consolidatedItems as $index => $item)
                                        <tr>
                                            <td>{{ $index + 1 }}</td>
                                            <td class="text-start">{{ $item['item_name'] }}</td>
                                            <td>{{ number_format($item['total_quantity']) }}</td>
                                            <td>{{ $item['unit_of_measure'] }}</td>
                                            <td>₱{{ number_format($item['price'], 2) }}</td>
                                            <td>₱{{ number_format($item['total_amount'], 2) }}</td>
                                        </tr>
                                        @php $grandTotal += $item['total_amount']; @endphp
                                    @empty
                                        <tr>
                                            <td colspan="6" class="text-center" style="font-size: 16px">No data available for the year {{ $year }}</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                                <tfoot>
                                    <tr class="table-warning fw-bold">
                                        <td colspan="5" class="text-end">GRAND TOTAL:</td>
                                        <td>₱{{ number_format($grandTotal, 2) }}</td>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                        
                        <div class="row">
                            <div class="col-3 text-center">
                                Prepared By: <br><br>
                                <u><b>IRIS M. DAJAO-OPISO</b></u> <br>
                                <small>Bids and Awards Committee Secretariat</small>
                            </div>
                            <div class="col-3 text-center">
                                Recommended By: <br><br>
                                <u><b>HERMIE P. PAVA</b></u> <br>
                                <small>Bids and Awards Committee</small>
                            </div>
                            <div class="col-6 text-center">
                                Approved By: <br><br>
                                <u><b>ROLITO G. EBALLE, Ph.D</b></u> <br>
                                <small>Head of the Procuring Entity</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- Add SheetJS (xlsx) library --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Get the download button
            const downloadBtn = document.getElementById('download-excel-btn');

            // Add click event listener to the download button
            downloadBtn.addEventListener('click', function() {
                exportToExcel();
            });

            // Function to export data to Excel
            function exportToExcel() {
                // Create a workbook
                const wb = XLSX.utils.book_new();

                // Get the title of the document
                const title = document.querySelector('.exportContent h3').innerText.trim();

                // Get the table
                const table = document.querySelector('.exportContent table');

                // Convert table to worksheet
                const ws = XLSX.utils.table_to_sheet(table);

                // Set column widths (adjust as needed)
                const colWidths = [
                    { wch: 10 }, // Item No.
                    { wch: 50 }, // Item and Description
                    { wch: 15 }, // Quantity
                    { wch: 10 }, // Unit
                    { wch: 15 }, // Unit Price
                    { wch: 20 }  // Amount
                ];
                ws['!cols'] = colWidths;

                // Add data to the workbook
                XLSX.utils.book_append_sheet(wb, ws, "APR");

                // Generate Excel file
                const fileName = `Annual_Procurement_Report_{{ $year }}.xlsx`;
                XLSX.writeFile(wb, fileName);
            }
        });
    </script>
@endsection