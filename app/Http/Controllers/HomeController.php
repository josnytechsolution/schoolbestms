<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

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
        if (Auth::user()->is_admin)
        {
            return redirect()->route('adminDashboard');
        }
        elseif (Auth::user()->is_client)
        {
            return redirect()->route('clientDashboard');
        }

        return abort(403);

    }
}
