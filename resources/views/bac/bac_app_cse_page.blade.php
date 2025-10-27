@extends('layouts.app')

@section('title', 'Export APP-CSE')

@section('content')
    <div class="container-fluid p-0">
        <div class="row mb-2 mb-xl-3">
            <div class="col-12 d-flex justify-content-between align-items-center">
                <h3 class="mb-0">Annual Procurement Plan - Common-use Supplies and Equipment ({{ $year }})</h3>
                <div>
                    <button id="print-btn" class="btn btn-secondary btn-sm me-2">
                        <i class="fas fa-print"></i> Print
                    </button>
                    <button id="download-excel-btn" class="btn btn-primary btn-sm">
                        <i class="fas fa-download"></i> Download Excel
                    </button>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-body">
                <div class="exportContent">
                    <div class="row mb-3">
                        <div class="col-12 text-center">
                            <h4>ANNUAL PROCUREMENT PLAN - COMMON-USE SUPPLIES AND EQUIPMENT</h4>
                            <h5>Year {{ $year }}</h5>
                        </div>
                    </div>

                    <div class="table-responsive">
                        <table id="ppmp-export-table" class="table table-bordered table-sm">
                            <thead class="table" style="background-color: #FFCC99">
                                <tr>
                                    <th rowspan="2" class="text-center align-middle" style="width: 300px;">Item &
                                        Specifications</th>
                                    <th rowspan="2" class="text-center align-middle" style="width: 80px;">Unit of Measure
                                    </th>
                                    <th colspan="16" class="text-center">Monthly Quantity Requirement</th>
                                    <th rowspan="2" class="text-center align-middle" style="width: 100px;">Total Quantity
                                        for the year</th>
                                    <th rowspan="2" class="text-center align-middle" style="width: 120px;">Price
                                        Catalogue (₱ as of July 2025)</th>
                                </tr>
                                <tr>
                                    <th class="text-center" style="width: 50px;">Jan</th>
                                    <th class="text-center" style="width: 50px;">Feb</th>
                                    <th class="text-center" style="width: 50px;">Mar</th>
                                    <th class="text-center" style="width: 60px;"><strong>Q1</strong></th>
                                    <th class="text-center" style="width: 50px;">April</th>
                                    <th class="text-center" style="width: 50px;">May</th>
                                    <th class="text-center" style="width: 50px;">June</th>
                                    <th class="text-center" style="width: 60px;"><strong>Q2</strong></th>
                                    <th class="text-center" style="width: 50px;">July</th>
                                    <th class="text-center" style="width: 50px;">Aug</th>
                                    <th class="text-center" style="width: 50px;">Sept</th>
                                    <th class="text-center" style="width: 60px;"><strong>Q3</strong></th>
                                    <th class="text-center" style="width: 50px;">Oct</th>
                                    <th class="text-center" style="width: 50px;">Nov</th>
                                    <th class="text-center" style="width: 50px;">Dec</th>
                                    <th class="text-center" style="width: 60px;"><strong>Q4</strong></th>
                                </tr>
                            </thead>
                            <tbody>
                                @forelse($ppmpData as $index => $item)
                                    @if (isset($item['is_category_header']) && $item['is_category_header'])
                                        <tr class="table-info">
                                            <td colspan="20" class="fw-bold text-center py-2"
                                                style="background-color: #8EAADB;">
                                                {{ $item['category_name'] }}
                                            </td>
                                        </tr>
                                    @else
                                        <tr>
                                            <td style="padding: 8px;">
                                                <strong>{{ $item['item_code'] }}</strong><br>
                                                <span style="font-size: 0.9em;">{{ $item['item_name'] }}</span>
                                                @if ($item['item_description'])
                                                    <br><small class="text-muted">{{ $item['item_description'] }}</small>
                                                @endif
                                            </td>
                                            <td class="text-center align-middle">{{ $item['unit_of_measure'] }}</td>
                                            <td class="text-center align-middle">{{ $item['january_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle">{{ $item['february_quantity'] ?: '0' }}
                                            </td>
                                            <td class="text-center align-middle">{{ $item['march_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle bg-light">
                                                <strong>{{ $item['january_quantity'] + $item['february_quantity'] + $item['march_quantity'] ?: '0' }}</strong>
                                            </td>
                                            <td class="text-center align-middle">{{ $item['april_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle">{{ $item['may_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle">{{ $item['june_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle bg-light">
                                                <strong>{{ $item['april_quantity'] + $item['may_quantity'] + $item['june_quantity'] ?: '0' }}</strong>
                                            </td>
                                            <td class="text-center align-middle">{{ $item['july_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle">{{ $item['august_quantity'] ?: '0' }}</td>
                                            <td class="text-center align-middle">{{ $item['september_quantity'] ?: '0' }}
                                            </td>
                                            <td class="text-center align-middle bg-light">
                                                <strong>{{ $item['july_quantity'] + $item['august_quantity'] + $item['september_quantity'] ?: '0' }}</strong>
                                            </td>
                                            <td class="text-center align-middle">{{ $item['october_quantity'] ?: '0' }}
                                            </td>
                                            <td class="text-center align-middle">{{ $item['november_quantity'] ?: '0' }}
                                            </td>
                                            <td class="text-center align-middle">{{ $item['december_quantity'] ?: '0' }}
                                            </td>
                                            <td class="text-center align-middle bg-light">
                                                <strong>{{ $item['october_quantity'] + $item['november_quantity'] + $item['december_quantity'] ?: '0' }}</strong>
                                            </td>
                                            <td class="text-center align-middle">
                                                <strong>{{ $item['total_quantity'] }}</strong></td>
                                            <td class="text-end align-middle">
                                                <strong>{{ number_format($item['unit_price'], 2) }}</strong></td>
                                        </tr>
                                    @endif
                                @empty
                                    <tr>
                                        <td colspan="20" class="text-center">No PSDBM items found for {{ $year }}
                                        </td>
                                    </tr>
                                @endforelse
                            </tbody>
                            @if (count($ppmpData) > 0)
                                <tfoot class="table-secondary">
                                    <tr>
                                        <th colspan="19" class="text-end">TOTAL ESTIMATED AMOUNT:</th>
                                        <th class="text-end">
                                            ₱{{ number_format(collect($ppmpData)->where('is_category_header', false)->sum('total_cost'), 2) }}
                                        </th>
                                    </tr>
                                </tfoot>
                            @endif
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Print Styles -->
    <style>
        @media print {

            .btn,
            .card,
            .card-body {
                box-shadow: none !important;
                border: none !important;
            }

            .btn {
                display: none !important;
            }

            .exportContent {
                margin: 0 !important;
                padding: 0 !important;
            }

            table {
                font-size: 8px !important;
            }

            th,
            td {
                padding: 1px !important;
                font-size: 8px !important;
            }

            .table-bordered th,
            .table-bordered td {
                border: 1px solid #000 !important;
            }

            .bg-light {
                background-color: #f8f9fa !important;
            }
        }

        /* Regular screen styles */
        .table th {
            font-size: 11px;
            padding: 4px;
        }

        .table td {
            font-size: 10px;
            padding: 4px;
        }

        .bg-light {
            background-color: #f8f9fa !important;
        }

        /* Category header styling */
        .table-info td {
            background-color: #8EAADB !important;
            font-weight: bold;
            font-size: 12px;
        }
    </style>

    <!-- JavaScript for Excel Export and Print -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Print functionality - Print only the exportContent div in a new window
            document.getElementById('print-btn').addEventListener('click', function() {
                const exportContent = document.querySelector('.exportContent');
                const printWindow = window.open('', '', 'height=600,width=800');

                printWindow.document.write(`
            <!DOCTYPE html>
            <html>
            <head>
                <title>Print - APP-CSE {{ $year }}</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
                <style>
                    body { 
                        font-family: Arial, sans-serif; 
                        margin: 20px;
                    }
                    .table th {
                        font-size: 11px;
                        padding: 4px;
                    }
                    .table td {
                        font-size: 10px;
                        padding: 4px;
                    }
                    .bg-light {
                        background-color: #f8f9fa !important;
                    }
                    .table-info td {
                        background-color: #8EAADB !important;
                        font-weight: bold;
                        font-size: 12px;
                    }
                    .table-bordered th,
                    .table-bordered td {
                        border: 1px solid #000 !important;
                    }
                    @media print {
                        table {
                            font-size: 8px !important;
                        }
                        th, td {
                            padding: 1px !important;
                            font-size: 8px !important;
                        }
                    }
                </style>
            </head>
            <body>
                ${exportContent.innerHTML}
            </body>
            </html>
        `);

                printWindow.document.close();
                printWindow.focus();

                // Wait for content to load, then print
                setTimeout(() => {
                    printWindow.print();
                    printWindow.close();
                }, 250);
            });

            // Excel download functionality
            document.getElementById('download-excel-btn').addEventListener('click', function() {
                const table = document.getElementById('ppmp-export-table');
                const wb = XLSX.utils.table_to_book(table, {
                    sheet: "APP-CSE {{ $year }}"
                });

                // Format the filename
                const filename =
                    `APP-CSE_{{ $year }}_${new Date().toISOString().split('T')[0]}.xlsx`;

                XLSX.writeFile(wb, filename);
            });
        });
    </script>
@endsection
