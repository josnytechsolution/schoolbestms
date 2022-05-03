<?php

namespace App\Http\Controllers\Admin;

use App\Client;
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

class ClientController extends Controller
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
        $this->authorize('viewAny', Client::class);

        $clients = Client::all();
        return view('admin.clients.clients_list', compact('clients'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize('create', Client::class);
        $current_sessions = CurrentSession::orderBy('id', 'desc')->limit(8)->get();
        return view('admin.clients.create_client', compact('current_sessions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param Request $request
     * @return void
     * @throws AuthorizationException
     */
    public function store(Request $request)
    {
        $this->authorize('create', Client::class);
        $request->validate([
            'first_name'  => 'required|string',
            'last_name'   => 'required|string',
            'contact'     => 'required|string',
            'email'       => 'required|email',
            'on_email'    => 'nullable|numeric',
            'on_phone'    => 'nullable|numeric',
            'reg_date'    => 'required|date',
            'company_name' => 'required|string|unique:clients',
            'postal_address' => 'nullable|string',
            'county'      => 'nullable|string',
            'country'     => 'required|string',
            'current_session_id'  => 'required|numeric',
            'logo'        => 'required|mimes:jpeg,jpg,png',
        ]);

        $password = rand(11111111, 99999999);

        $user = new User();
        $user->slug  = Str::uuid()->getHex();
        $user->name  = $request->first_name." ".$request->last_name;
        $user->email = $request->email;
        $user->password = Hash::make($password);
        $user->contact  = $request->contact;
        $user->is_client = true;
        $user->created_by = Auth::user()->id;
        $user->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'created', 'auditable_type' => 'App\User', 'new_values' => json_encode($user->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        $check = Client::orderBy('id', 'desc')->limit(1)->first();

        if ($check) { $cNo = ++$check; } else { $cNo = "SBC1001"; }

        $data = new Client();
        $data->slug     = Str::uuid()->getHex();
        $data->client_no = $cNo;
        $data->first_name = $request->first_name;
        $data->last_name  = $request->last_name;
        $data->email      = $request->email;
        $data->contact    = $request->contact;
        $data->reg_date   = $request->reg_date;
        if ($request->on_email) { $data->on_email = $request->on_email; }
        if ($request->on_phone) { $data->on_phone = $request->on_phone; }
        $data->company_name = $request->company_name;
        $data->postal_address = $request->postal_address;
        $data->county     = $request->county;
        $data->country    = $request->country;
        $data->current_session_id = $request->current_session_id;
        $data->user_id = $user->id;
        $data->raw_password = $password;
        if($file = $request->file('logo')){
            $name = rand() . '.' .$file->getClientOriginalExtension();
            $data->logo   = $file->move('storage/clients', $name);
        }
        $data->created_by = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'created', 'auditable_type' => 'App\Client', 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        return redirect()->back()->with('success', 'Client created successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param Client $client
     * @return Response
     * @throws AuthorizationException
     */
    public function show(Client $client)
    {
        $this->authorize('view', $client);

        return view('admin.clients.show_client', compact('client'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Client $client
     * @return Response
     * @throws AuthorizationException
     */
    public function edit(Client $client)
    {
        $this->authorize('update', $client);
        $current_sessions = CurrentSession::orderBy('id', 'desc')->limit(8)->get();
        return view('admin.clients.update_client', compact('client', 'current_sessions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Client $client
     * @return Response
     * @throws AuthorizationException
     */
    public function update(Request $request, Client $client)
    {
        $this->authorize('update', $client);

        $request->validate([
            'first_name'  => 'required|string',
            'last_name'   => 'required|string',
            'contact'     => 'required|string',
            'email'       => 'required|email',
            'on_email'    => 'nullable|string',
            'on_phone'    => 'nullable|string',
            'reg_date'    => 'required|date',
            'company_name' => 'required|string|unique:clients,company_name,'.$client->id,
            'postal_address' => 'nullable|string',
            'county'      => 'nullable|string',
            'country'     => 'required|string',
            'current_session_id'  => 'required|numeric',
            'is_active'   => 'nullable|string',
            'logo'        => 'nullable|mimes:jpeg,jpg,png',
        ]);

        $old = json_encode($client->toArray());

        $data = $client;
        $data->first_name = $request->first_name;
        $data->last_name  = $request->last_name;
        $data->email      = $request->email;
        $data->contact    = $request->contact;
        $data->reg_date   = $request->reg_date;

        if ($request->on_email != NULL) { $data->on_email = 1; } else { $data->on_email = 0; }
        if ($request->on_phone != NULL) { $data->on_phone = 1; } else { $data->on_phone = 0; }

        $data->company_name = $request->company_name;
        $data->postal_address = $request->postal_address;
        $data->county     = $request->county;
        $data->country    = $request->country;
        $data->current_session_id = $request->current_session_id;

        if ($request->is_active != NULL) { $data->is_active = 1; } else { $data->is_active = 0; }

        if($file = $request->file('logo')){
            $name = rand() . '.' .$file->getClientOriginalExtension();
            $data->logo   = $file->move('storage/clients', $name);
        }
        $data->created_by = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'updated', 'auditable_type' => 'App\Client', 'new_values' => json_encode($data->toArray()), 'old_values' => $old, 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        return redirect()->back()->with('success', 'Client updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Request $request
     * @param Client $client
     * @return Response
     * @throws AuthorizationException
     */
    public function destroy(Request $request, Client $client)
    {
        $this->authorize('delete', $client);

        $password = $request->input('password');

        if(Hash::check($password, Auth::user()->password))
        {
            $old = json_encode($client->toArray());

            $client->delete();

            DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'deleted', 'auditable_type' => 'App\Client', 'old_values' => $old, 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


            return redirect()->back()->with('success', 'The Client has been deleted successfully!');
        }
        else
        {
            return redirect()->back()->with('error', 'The password you entered is incorrect!');
        }
    }
}
