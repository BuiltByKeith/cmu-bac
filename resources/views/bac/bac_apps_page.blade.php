@extends('layouts.app')

@section('title', 'PPMPs')

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
                            <h3 class="mb-0">Annual Procurement Plan (APP) for the year {{ $year }}</h3>
                        </div>
                    </div>

                    <div class="container-fluid p-0">
                        <div>
                            <table class="table table-bordered text-center align-middle" style="font-size: 11px;">
                                <thead>
                                    <tr>
                                        <th rowspan="2">Code (PAP)</th>
                                        <th rowspan="2">Procurement Project</th>
                                        <th rowspan="2">PMO/End-User</th>
                                        <th rowspan="2">Is this an Early Procurement Activity?<br>(Yes/No)</th>
                                        <th rowspan="2" style="width: 15%">Mode of Procurement</th>
                                        <th colspan="4">Schedule for Each Procurement Activity</th>
                                        <th rowspan="2">Source of Funds</th>
                                        <th colspan="3">Estimated Budget (PhP)</th>
                                        <th rowspan="2">Remarks<br>(Brief Description of Project)</th>
                                    </tr>
                                    <tr>
                                        <th>Advertisement/Posting of IB/REI</th>
                                        <th>Submission/Opening of Bids</th>
                                        <th>Notice of Award</th>
                                        <th>Contract Signing</th>
                                        <th>Total</th>
                                        <th>MOOE</th>
                                        <th>CO</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($grouped === null || $grouped->isEmpty())
                                        <tr>
                                            <td colspan="14" class="text-center" style="font-size: 16px">No data available
                                                for
                                                the
                                                year {{ $year }}
                                            </td>
                                        </tr>
                                    @else
                                        @foreach ($grouped as $accountCode => $categories)
                                            {{-- Account header row --}}
                                            <tr class="table-warning fw-bold text-start">
                                                <td colspan="14">
                                                    {{ $accountCode }} - {{ $categories->first()['account_description'] }}
                                                </td>
                                            </tr>

                                            {{-- Rows for each category under this account --}}
                                            @foreach ($categories as $categoryName => $item)
                                                <tr>
                                                    <td>{{ $accountCode }}</td>
                                                    <td>{{ $item['account_description'] }}</td>
                                                    <td>{{ $categoryName }}</td>
                                                    <td>–</td> {{-- Early Procurement (blank) --}}
                                                    <td>–</td> {{-- Mode of Procurement (blank) --}}
                                                    <td>Jan.–Dec. {{ $year }}</td>
                                                    <td>Jan.–Dec. {{ $year }}</td>
                                                    <td>Jan.–Dec. {{ $year }}</td>
                                                    <td>Jan.–Dec. {{ $year }}</td>
                                                    <td>–</td> {{-- Source of Funds (blank) --}}
                                                    <td>₱{{ number_format($item['total'], 2) }}</td>
                                                    <td>–</td> {{-- MOOE (blank) --}}
                                                    <td>–</td> {{-- CO (blank) --}}
                                                    <td>–</td> {{-- Remarks (blank) --}}
                                                </tr>
                                            @endforeach
                                        @endforeach
                                    @endif
                                </tbody>
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
                                <u> <b>ROLITO G. EBALLE, Ph.D</b></u> <br>
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
                const colWidths = [{
                        wch: 25
                    }, // Code
                    {
                        wch: 40
                    }, // Procurement Project
                    {
                        wch: 15
                    }, // PMO/End-User
                    {
                        wch: 30
                    }, // Early Procurement
                    {
                        wch: 30
                    }, // Mode of Procurement
                    {
                        wch: 30
                    }, // Advertisement
                    {
                        wch: 30
                    }, // Submission
                    {
                        wch: 30
                    }, // Notice of Award
                    {
                        wch: 30
                    }, // Contract Signing
                    {
                        wch: 30
                    }, // Source of Funds
                    {
                        wch: 40
                    }, // Total
                    {
                        wch: 30
                    }, // MOOE
                    {
                        wch: 30
                    }, // CO
                    {
                        wch: 50
                    } // Remarks
                ];
                ws['!cols'] = colWidths;



                // Add data to the workbook
                XLSX.utils.book_append_sheet(wb, ws, "APP");


                // Generate Excel file
                const fileName = `Annual_Procurement_Plan_{{ $year }}.xlsx`;
                XLSX.writeFile(wb, fileName);
            }
        });
    </script>
@endsection
