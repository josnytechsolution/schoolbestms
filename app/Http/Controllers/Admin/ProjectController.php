<?php

namespace App\Http\Controllers\Admin;

use App\Client;
use App\CurrentSession;
use App\Package;
use App\Project;
use App\UpdateMaster;
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

class ProjectController extends Controller
{
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
        $this->authorize('viewAny', Project::class);
        $projects = Project::all();

        return view('admin.projects.projects_list', compact('projects'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize('create', Project::class);

        $clients = Client::all();
        $packages = Package::all();
        $current_sessions = CurrentSession::orderBy('id', 'desc')->limit(6)->get();

        return view('admin.projects.create_project', compact('current_sessions', 'clients', 'packages'));
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
        $this->authorize('create', Project::class);

        $request->validate([
            'client_id'         => 'required|numeric',
            'package_id'        => 'required|numeric',
            'current_session_id'    => 'required|numeric',
            'name'              => 'required|string',
            'reg_date'          => 'required|date',
            'payment_method'    => 'required|string',
            'billing_cycle'     => 'required|string',
            'next_due_date'     => 'required|date',
        ]);

        $package = Package::findOrfail($request->package_id);

        if ($request->billing_cycle === "monthly") {
            $expected = $package->monthly;
        } else if ($request->billing_cycle === "termly") {
            $expected = $package->termly;
        } else {
            $expected = $package->yearly;
        }

        $no = Project::orderBy('id', 'desc')->limit(1)->first();
        if(!empty($no))
        {
            $pno = $no->project_no;
            $pro_no = ++$pno;
        }
        else
        {
            $pro_no = "SB2201";
        }

        $data = new Project();
        $data->slug             = Str::uuid()->getHex();
        $data->client_id        = $request->client_id;
        $data->package_id       = $request->package_id;
        $data->current_session_id   = $request->current_session_id;
        $data->project_no       = $pro_no;
        $data->name             = $request->name;
        $data->reg_date         = $request->reg_date;
        $data->students         = $request->students;
        $data->payment_method   = $request->payment_method;
        $data->billing_cycle    = $request->billing_cycle;
        $data->expected         = $expected;
        $data->paid             = 0;
        $data->balance          = $expected;
        $data->next_due_date    = $request->next_due_date;
        $data->next_invoice_date = date('Y-m-d', strtotime('-10 day', strtotime($request->next_due_date)));
        $data->created_by       = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'created', 'auditable_type' => 'App\Project', 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        $projectNo = $data->project_no;
        UpdateMaster::updateProject($projectNo);

        return redirect()->back()->with('success', 'Project added successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param Project $project
     * @return Response
     * @throws AuthorizationException
     */
    public function show(Project $project)
    {
        $this->authorize('view', $project);

        return view('admin.projects.show_project', compact('project'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Project $project
     * @return void
     * @throws AuthorizationException
     */
    public function edit(Project $project)
    {
        $this->authorize('update', $project);

        $clients = Client::all();
        $packages = Package::all();
        $current_sessions = CurrentSession::orderBy('id', 'desc')->limit(6)->get();

        return view('admin.projects.update_project', compact('current_sessions', 'clients', 'packages', 'project'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Project $project
     * @return Response
     * @throws AuthorizationException
     */
    public function update(Request $request, Project $project)
    {
        $this->authorize('update', $project);

        $request->validate([
            'client_id'         => 'required|numeric',
            'package_id'        => 'required|numeric',
            'current_session_id'    => 'required|numeric',
            'name'              => 'required|string',
            'reg_date'          => 'required|date',
            'payment_method'    => 'required|string',
            'billing_cycle'     => 'required|string',
            'next_due_date'     => 'required|date',
        ]);

        $package = Package::findOrfail($request->package_id);
        if ($request->billing_cycle === "monthly") {
            $expected = $package->monthly;
        } else if ($request->billing_cycle === "termly") {
            $expected = $package->termly;
        } else {
            $expected = $package->yearly;
        }

        $old = $project;

        $data = $project;
        $data->client_id        = $request->client_id;
        $data->package_id       = $request->package_id;
        $data->current_session_id   = $request->current_session_id;
        $data->name             = $request->name;
        $data->reg_date         = $request->reg_date;
        $data->payment_method   = $request->payment_method;
        $data->billing_cycle    = $request->billing_cycle;
        $data->expected         = $expected;
        $data->balance          = $expected - $project->paid;
        $data->next_due_date    = $request->next_due_date;
        $data->next_invoice_date = date('Y-m-d', strtotime('-10 day', strtotime($request->next_due_date)));
        $data->updated_by       = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'updated', 'auditable_type' => 'App\Project', 'old_values' => $old, 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);

        return redirect()->back()->with('success', 'Project updated successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Request $request
     * @param Project $project
     * @return Response
     * @throws AuthorizationException
     */
    public function destroy(Request $request, Project $project)
    {
        $this->authorize('delete', $project);

        $password = $request->input('password');

        if(Hash::check($password, Auth::user()->password))
        {
            $old = $project;

            $project->delete();

            DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'deleted', 'auditable_type' => 'App\Project', 'old_values' => $old, 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


            return redirect()->back()->with('success', 'The Project has been deleted successfully!');
        }
        else
        {
            return redirect()->back()->with('error', 'The password you entered is incorrect!');
        }
    }
}
