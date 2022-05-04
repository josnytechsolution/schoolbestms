@extends('admin.layouts._main')

@section('content')
    <!-- Navbar -->
    @include('admin.layouts._header')
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    @include('admin.layouts._aside')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">UPDATE {{ strtoupper($project->name) }}</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('adminDashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Projects</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-primary card-outline no-radius">
                            <div class="card-body">
                                <form action="{{ route('schoolbest-projects.update', $project->slug) }}" method="post">
                                    @csrf
                                    @method('PUT')

                                    <div class="row mt-4">
                                        <div class="col-md-4 mb-5">
                                            <label>Client <sup class="text-danger">required</sup></label>
                                            <select name="client_id" class="form-control form-control-border @error('client_id') is-invalid @enderror no-radius">
                                                <option value="{{ $project->client_id }}">{{ $project->client->client_no." - ".$project->client->fullname." - ".$project->client->company_name }}</option>
                                                @foreach($clients as $client)
                                                    <option value="{{ $client->id }}">{{ $client->client_no." - ".$client->fullname." - ".$client->company_name }}</option>
                                                @endforeach
                                            </select>
                                            @if($errors->has('client_id'))
                                                <small class="text-danger">{{ $errors->first('client_id') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Package <sup class="text-danger">required</sup></label>
                                            <select name="package_id" class="form-control form-control-border @error('package_id') is-invalid @enderror no-radius">
                                                <option value="{{ $project->package_id }}">{{ $project->package->name." - ".number_format($project->package->termly) }} / termly</option>
                                                @foreach($packages as $package)
                                                    <option value="{{ $package->id }}">{{ $package->name." - ".number_format($package->termly) }} / termly</option>
                                                @endforeach
                                            </select>
                                            @if($errors->has('package_id'))
                                                <small class="text-danger">{{ $errors->first('package_id') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Session <sup class="text-danger">required</sup></label>
                                            <select name="current_session_id" class="form-control form-control-border @error('current_session_id') is-invalid @enderror no-radius">
                                                <option value="{{ $project->current_session_id }}">{{ $project->current_session->name }}</option>
                                                @foreach($current_sessions as $current_session)
                                                    <option value="{{ $current_session->id }}">{{ $current_session->name }}</option>
                                                @endforeach
                                            </select>
                                            @if($errors->has('current_session_id'))
                                                <small class="text-danger">{{ $errors->first('current_session_id') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Project Name <sup class="text-danger">required</sup></label>
                                            <input type="text" name="name" class="form-control form-control-border @error('name') is-invalid @enderror no-radius" value="{{ old('name', $project->name) }}">
                                            @if($errors->has('name'))
                                                <small class="text-danger">{{ $errors->first('name') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Reg. Date <sup class="text-danger">required</sup></label>
                                            <input type="date" name="reg_date" class="form-control form-control-border @error('reg_date') is-invalid @enderror no-radius" value="{{ old('reg_date', $project->reg_date) }}">
                                            @if($errors->has('reg_date'))
                                                <small class="text-danger">{{ $errors->first('reg_date') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Payment Method</label>
                                            <select name="payment_method" class="form-control form-control-border @error('payment_method') is-invalid @enderror no-radius">
                                                <option value="mpesa">Lipa Na M-PESA</option>
                                            </select>
                                            @if($errors->has('payment_method'))
                                                <small class="text-danger">{{ $errors->first('payment_method') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Billing Cycle</label>
                                            <select name="billing_cycle" class="form-control form-control-border @error('billing_cycle') is-invalid @enderror no-radius">
                                                <option value="{{ $project->billing_cycle }}">{{ ucwords($project->billing_cycle) }}</option>
                                                <option value="monthly">Monthly</option>
                                                <option value="termly">Termly</option>
                                                <option value="yearly">Yearly</option>
                                            </select>
                                            @if($errors->has('billing_cycle'))
                                                <small class="text-danger">{{ $errors->first('billing_cycle') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Next Due Date <sup class="text-danger">required</sup></label>
                                            <input type="date" name="next_due_date" class="form-control form-control-border @error('next_due_date') is-invalid @enderror no-radius" value="{{ old('next_due_date', $project->next_due_date) }}">
                                            @if($errors->has('next_due_date'))
                                                <small class="text-danger">{{ $errors->first('next_due_date') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-12">
                                            <button type="submit" class="btn btn-primary btn-flat float-right">
                                                <i class="fa fa-save"></i> Save Changes
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>

@endsection