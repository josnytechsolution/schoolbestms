<?php

namespace App\Http\Controllers\Admin;

use App\CurrentSession;
use App\Package;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Str;

class PackageController extends Controller
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
        $this->authorize('viewAny', Package::class);

        $packages = Package::all();
        return view('admin.packages.packages_list', compact('packages'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize('create', Package::class);

        return view('admin.packages.create_package');
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
        $this->authorize('create', Package::class);

        $request->validate([
            'name'          => 'required|string|unique:packages',
            'description'   => 'required|string',
            'monthly'       => 'required|numeric',
            'termly'        => 'required|numeric',
            'yearly'        => 'required|numeric',
            'campuses'      => 'required|string',
            'students'      => 'required|string',
            'storage'       => 'required|string',
            'bulksms'       => 'required|string',
            'emailing'      => 'required|string',
            'transport'     => 'required|string',
            'mpesa'         => 'required|string',
            'bank'          => 'required|string',
            'staff'         => 'required|string',
            'payroll'       => 'required|string',
            'expenditure'   => 'required|string',
            'portal'        => 'required|string',
        ]);

        $myArray = [
            'campuses'      => $request->campuses,
            'students'      => $request->students,
            'storage'       => $request->storage,
            'bulksms'       => $request->bulksms,
            'emailing'      => $request->emailing,
            'transport'     => $request->transport,
            'mpesa'         => $request->mpesa,
            'bank'          => $request->bank,
            'expenditure'   => $request->expenditure,
            'staff'         => $request->staff,
            'payroll'       => $request->payroll,
            'portal'        => $request->portal,
        ];

        $datas = json_encode($myArray);

        $data = new Package();
        $data->slug        = Str::uuid();
        $data->name        = $request->name;
        $data->description = $request->description;
        $data->monthly     = $request->monthly;
        $data->termly      = $request->termly;
        $data->yearly      = $request->yearly;
        $data->specification = $datas;
        $data->created_by  = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'created', 'auditable_type' => 'App\Package', 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


        return redirect()->route('schoolbest-packages.index')->with('success', 'Package Added Successfully!');
    }

    /**
     * Display the specified resource.
     *
     * @param Package $package
     * @return Response
     * @throws AuthorizationException
     */
    public function show(Package $package)
    {
        $this->authorize('view', $package);

        return view('admin.packages.show_package', compact('package'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param Package $package
     * @return Response
     * @throws AuthorizationException
     */
    public function edit(Package $package)
    {
        $this->authorize('update', $package);

        $data = json_decode($package->specification);
        return view('admin.packages.update_package', compact('package', 'data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param Package $package
     * @return Response
     * @throws AuthorizationException
     */
    public function update(Request $request, Package $package)
    {
        $this->authorize('update', $package);

        $request->validate([
            'name'          => 'required|string|unique:packages,name,'.$package->id,
            'description'   => 'required|string',
            'monthly'       => 'required|numeric',
            'termly'        => 'required|numeric',
            'yearly'        => 'required|numeric',
            'campuses'      => 'required|string',
            'students'      => 'required|string',
            'storage'       => 'required|string',
            'bulksms'       => 'required|string',
            'emailing'      => 'required|string',
            'transport'     => 'required|string',
            'mpesa'         => 'required|string',
            'bank'          => 'required|string',
            'staff'         => 'required|string',
            'payroll'       => 'required|string',
            'expenditure'   => 'required|string',
            'portal'        => 'required|string',
        ]);

        $myArray = [
            'campuses'      => $request->campuses,
            'students'      => $request->students,
            'storage'       => $request->storage,
            'bulksms'       => $request->bulksms,
            'emailing'      => $request->emailing,
            'transport'     => $request->transport,
            'mpesa'         => $request->mpesa,
            'bank'          => $request->bank,
            'expenditure'   => $request->expenditure,
            'staff'         => $request->staff,
            'payroll'       => $request->payroll,
            'portal'        => $request->portal,
        ];

        $old = $package;

        $datas = json_encode($myArray);

        $data = $package;
        $data->name        = $request->name;
        $data->description = $request->description;
        $data->monthly     = $request->monthly;
        $data->termly      = $request->termly;
        $data->yearly      = $request->yearly;
        $data->specification = $datas;
        $data->updated_by  = Auth::user()->id;
        $data->save();

        DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'updated', 'auditable_type' => 'App\Package', 'old_values' => $old, 'new_values' => json_encode($data->toArray()), 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


        return redirect()->route('schoolbest-packages.index')->with('success', 'Package Added Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param Request $request
     * @param Package $package
     * @return Response
     * @throws AuthorizationException
     */
    public function destroy(Request $request, Package $package)
    {
        $this->authorize('delete', $package);

        $password = $request->input('password');

        if(Hash::check($password, Auth::user()->password))
        {
            $old = json_encode($package->toArray());

            $package->delete();

            DB::table('audit_trails')->insert(['user_type' => 'App\User', 'user_id' => Auth::user()->id,  'current_session_id' => $this->CurrentSession(), 'event' => 'deleted', 'auditable_type' => 'App\Package', 'old_values' => $old, 'url' => URL::full(), 'ip_address' => $_SERVER["REMOTE_ADDR"], 'user_agent' => $_SERVER['HTTP_USER_AGENT']]);


            return redirect()->back()->with('success', 'The Package has been deleted successfully!');
        }
        else
        {
            return redirect()->back()->with('error', 'The password you entered is incorrect!');
        }
    }
}
