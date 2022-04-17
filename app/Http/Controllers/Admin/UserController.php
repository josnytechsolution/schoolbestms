<?php

namespace App\Http\Controllers\Admin;

use App\CurrentSession;
use App\User;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;

class UserController extends Controller
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
     * @return void
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize('viewAny', User::class);

        $users = User::all();
        return view('admin.settings.system_users', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
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
        $this->authorize('create', User::class);

        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'contact' => 'required|numeric|min:11',
            'is_admin' => 'required|numeric',
            'password' => 'required|min:8|string|confirmed',
        ]);

        $data = new User();
        $data->slug     = Str::uuid()->getHex();
        $data->name     = ucwords($request->name);
        $data->email    = strtolower($request->email);
        $data->password = Hash::make($request->password);
        $data->contact  = $request->contact;
        if ($request->is_admin > 0) {
            $data->is_admin = 1;
            $data->is_client = 0;
        }
        $data->created_by = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'created', 'auditable_type' => 'App\User', 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        return redirect()->back()->with('success', 'User added successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param User $user
     * @return Response
     */
    public function show(User $user)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param User $user
     * @return Response
     */
    public function edit(User $user)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param User $user
     * @return Response
     * @throws AuthorizationException
     */
    public function update(Request $request, User $user)
    {
        $this->authorize('update', $user);

        if ($request->type === "info_change")
        {
            $request->validate([
                'name' => 'required|string',
                'email' => 'required|email|unique:users,email,'.$user->id,
                'contact' => 'required|numeric|min:11',
            ]);

            $old = json_encode($user->toArray());

            $data = $user;
            $data->name       = ucwords($request->name);
            $data->email      = strtolower($request->email);
            $data->contact    = $request->contact;
            $data->updated_by = Auth::user()->id;
            $data->save();

            DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'updated', 'auditable_type' => 'App\User', 'old_values' => $old, 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

            return redirect()->back()->with('success', 'User updated successfully!');
        }
        elseif ($request->type === "pwd_change")
        {
            $request->validate([
                'password' => 'required|string|confirmed',
            ]);

            $old = json_encode($user->toArray());

            $data = $user;
            $data->password    = Hash::make($request->password);
            $data->updated_by = Auth::user()->id;
            $data->save();

            DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'updated', 'auditable_type' => 'App\User', 'old_values' => $old, 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

            return redirect()->back()->with('success', 'User password changed successfully!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param User $user
     * @return Response
     */
    public function destroy(User $user)
    {
        //
    }
}
