@extends('layouts.app')

@section('title', 'Dashboard')
@section('content')
    <style>
        .card-hover {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
        }

        .card-hover:hover {
            transform: scale(1.03);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        }

        .card-link {
            text-decoration: none;
            color: inherit;
        }
    </style>

    <div class="container-fluid p-0">
        <div class="row mb-2 mb-xl-3">
            <div class="col-auto d-none d-sm-block">
                <h3>Dashboard</h3>
            </div>
        </div>

        <div class="row">


            <div class="col-12 col-sm-6 col-xxl-3 d-flex">
                <a href="{{ route('budgetOfficeAccountCodesPage') }}" class="card-link w-100">
                    <div class="card flex-fill card-hover">
                        <div class="card-body py-4">
                            <div class="d-flex align-items-start">
                                <div class="flex-grow-1">
                                    <h3 class="mb-2">{{ $accountCodes->count() }}</h3>
                                    <p class="mb-2">Account Codes</p>
                                </div>
                                <div class="d-inline-block ms-3">
                                    <div class="stat">
                                        <i class="align-middle text-danger" data-lucide="binary"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
@endsection
