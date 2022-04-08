<?php

namespace App\Http\Controllers\Admin;

use App\AuditTrail;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;

class AuditTrailController extends Controller
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
     * @return void
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize('viewAny', AuditTrail::class);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return void
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize('create', AuditTrail::class);
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
        $this->authorize('create', AuditTrail::class);
    }

    /**
     * Display the specified resource.
     *
     * @param AuditTrail $auditTrail
     * @return void
     * @throws AuthorizationException
     */
    public function show(AuditTrail $auditTrail)
    {
        $this->authorize('view', AuditTrail::class);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param AuditTrail $auditTrail
     * @return void
     * @throws AuthorizationException
     */
    public function edit(AuditTrail $auditTrail)
    {
        $this->authorize('update', AuditTrail::class);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param Request $request
     * @param AuditTrail $auditTrail
     * @return void
     * @throws AuthorizationException
     */
    public function update(Request $request, AuditTrail $auditTrail)
    {
        $this->authorize('update', AuditTrail::class);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param AuditTrail $auditTrail
     * @return void
     * @throws AuthorizationException
     */
    public function destroy(AuditTrail $auditTrail)
    {
        $this->authorize('delete', AuditTrail::class);
    }
}
