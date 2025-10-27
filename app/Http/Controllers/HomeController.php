<?php

namespace App\Http\Controllers;

use App\Models\PPMP;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $pendingPPMPsCount = PPMP::where('approval_status', 0)->where('is_submitted', 1)->count();
        return view('home', compact('pendingPPMPsCount'));
    }
}
