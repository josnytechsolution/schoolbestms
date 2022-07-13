<?php

namespace App\Http\Controllers\Admin;

use App\AuditTrail;
use App\CurrentSession;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
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
        $this->middleware('super');
    }

    private function CurrentSession()
    {
        $current_session = CurrentSession::Current()->first();
        return $current_session->id;
    }

    /**
     * Display a listing of the resource.
     *
     * @return Response
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize('viewAny', CurrentSession::class);
        $financial_sessions = CurrentSession::orderBy('id', 'desc')->get();
        return view('admin.settings.current_sessions', compact('financial_sessions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize('create', CurrentSession::class);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return Response
     * @throws AuthorizationException
     */
    public function store(Request $request)
    {
        $this->authorize('create', CurrentSession::class);

        $request->validate([
            'name'  => 'required|string|unique:current_sessions',
            'term'  => 'required|string',
            'year'  => 'required|numeric',
            'start_date'  => 'required|date',
        ]);

        $data = new CurrentSession();
        $data->slug = Str::slug($request->name);
        $data->name = $request->name;
        $data->term = $request->term;
        $data->year = $request->year;
        $data->start_date = $request->start_date;
        $data->created_by = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'created', 'auditable_type' => 'App\CurrentSession', 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        return redirect()->back()->with('success', 'Session has been created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param CurrentSession $currentSession
     * @return void
     * @throws AuthorizationException
     */
    public function show(CurrentSession $currentSession)
    {
        $this->authorize('view', $currentSession);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param CurrentSession $currentSession
     * @return void
     * @throws AuthorizationException
     */
    public function edit(CurrentSession $currentSession)
    {
        $this->authorize('update', CurrentSession::class);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param CurrentSession $currentSession
     * @return Response
     * @throws AuthorizationException
     */
    public function update(Request $request, CurrentSession $currentSession)
    {
        $this->authorize('update', $currentSession);

        $request->validate([
            'name'  => 'required|string|unique:users,name,'.$currentSession->id,
            'term'  => 'required|string',
            'year'  => 'required|numeric',
            'start_date'  => 'required|date',
        ]);

        $old = json_encode($currentSession->toArray());

        $data = $currentSession;
        $data->slug         = Str::slug($request->name);
        $data->name         = $request->name;
        $data->term         = $request->term;
        $data->year         = $request->year;
        $data->start_date = $request->start_date;
        $data->updated_by   = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'updated', 'auditable_type' => 'App\CurrentSession', 'old_values' => $old, 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


        return redirect()->back()->with('success', 'Session has been updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Request $request
     * @param CurrentSession $currentSession
     * @return void
     * @throws AuthorizationException
     */
    public function destroy(Request $request, CurrentSession $currentSession)
    {
        $this->authorize('delete', $currentSession);

        $password = $request->input('password');

        if(Hash::check($password, Auth::user()->password))
        {
            $old = json_encode($currentSession->toArray());
            $count = AuditTrail::where('current_session_id', $currentSession->id)->count();
            if ($count)
            {
                $currentSession->status = "Deleted";
                $currentSession->updated_by = Auth::user()->id;
                $currentSession->save();

                DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'deleted', 'auditable_type' => 'App\CurrentSession', 'old_values' => $old, 'new_values' => json_encode($currentSession->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);
            }
            else
            {
                $currentSession->delete();

                DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'deleted', 'auditable_type' => 'App\CurrentSession', 'old_values' => $old, 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

            }

            return redirect()->back()->with('success', 'The Session has been deleted successfully!');

        }
        else
        {
            return redirect()->back()->with('error', 'The password you entered is incorrect!');
        }
    }
}
