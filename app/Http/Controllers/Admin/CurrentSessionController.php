<?php

namespace App\Http\Controllers\Admin;

use App\CurrentSession;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;

class CurrentSessionController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('admin');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $financial_sessions = CurrentSession::orderBy('id', 'desc')->get();
        return view('admin.settings.current_sessions', compact('financial_sessions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'name'  => 'required|string|unique:users',
            'term'  => 'required|string',
            'year'  => 'required|numeric',
        ]);

        $data = new CurrentSession();
        $data->slug = Str::slug($request->name);
        $data->name = $request->name;
        $data->term = $request->term;
        $data->year = $request->year;
        $data->created_by = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => 1, 'event' => 'created', 'auditable_type' => 'App\CurrentSession', 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


        return redirect()->back()->with('success', 'Session has been created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\CurrentSession  $currentSession
     * @return \Illuminate\Http\Response
     */
    public function show(CurrentSession $currentSession)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\CurrentSession  $currentSession
     * @return \Illuminate\Http\Response
     */
    public function edit(CurrentSession $currentSession)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\CurrentSession  $currentSession
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, CurrentSession $currentSession)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\CurrentSession  $currentSession
     * @return \Illuminate\Http\Response
     */
    public function destroy(CurrentSession $currentSession)
    {
        //
    }
}
