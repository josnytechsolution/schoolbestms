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
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">CREATE CLIENT</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('adminDashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Clients</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-body">
                                <form action="{{ route('my-clients.store') }}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="row">
                                        <div class="col-md-4 mb-4">
                                            <label>First Name <sup class="text-danger">required</sup></label>
                                            <input type="text" name="first_name" class="form-control form-control-border @error('first_name') is-invalid @enderror no-radius" value="{{ old('first_name') }}">
                                            @if($errors->has('first_name'))
                                                <small class="text-danger">{{ $errors->first('first_name') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Last Name <sup class="text-danger">required</sup></label>
                                            <input type="text" name="last_name" class="form-control form-control-border @error('last_name') is-invalid @enderror no-radius" value="{{ old('last_name') }}">
                                            @if($errors->has('last_name'))
                                                <small class="text-danger">{{ $errors->first('last_name') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Contact</label>
                                            <input type="text" name="contact" class="form-control form-control-border @error('contact') is-invalid @enderror no-radius" value="{{ old('contact') }}" placeholder="0712345678">
                                            @if($errors->has('contact'))
                                                <small class="text-danger">{{ $errors->first('contact') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Email Address</label>
                                            <input type="email" name="email" class="form-control form-control-border @error('email') is-invalid @enderror no-radius" value="{{ old('email') }}">
                                            @if($errors->has('email'))
                                                <small class="text-danger">{{ $errors->first('email') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Date of Registration <sup class="text-danger">required</sup></label>
                                            <input type="date" name="reg_date" class="form-control form-control-border @error('reg_date') is-invalid @enderror no-radius" value="{{ old('reg_date') }}">
                                            @if($errors->has('reg_date'))
                                                <small class="text-danger">{{ $errors->first('reg_date') }}</small>
                                            @endif
                                        </div>

                                        <div class="form-group col-md-4 mb-4">
                                            <label>Notifications <sup class="text-danger">required</sup></label><br>
                                            <input type="checkbox" name="on_email" value="{{ old('on_email') }}" checked> Via Email
                                            <input type="checkbox" name="on_phone" class="ml-3" value="{{ old('on_phone') }}" checked> Via SMS

                                            @if($errors->has('on_email'))
                                                <small class="text-danger">{{ $errors->first('on_email') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Company Name <sup class="text-danger">required</sup></label>
                                            <input type="text" name="company_name" class="form-control form-control-border @error('company_name') is-invalid @enderror no-radius" value="{{ old('company_name') }}">
                                            @if($errors->has('company_name'))
                                                <small class="text-danger">{{ $errors->first('company_name') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Postal Address <sup class="text-danger">required</sup></label>
                                            <input type="text" name="postal_address" class="form-control form-control-border @error('postal_address') is-invalid @enderror no-radius" value="{{ old('postal_address') }}">
                                            @if($errors->has('postal_address'))
                                                <small class="text-danger">{{ $errors->first('postal_address') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Session/Term <sup class="text-danger">required</sup></label>
                                            <select name="current_session_id" class="form-control form-control-border @error('current_session_id') is-invalid @enderror no-radius">
                                                <option value="">--Select Option--</option>
                                                @foreach($current_sessions as $current_session)
                                                    <option value="{{ $current_session->id }}">{{ $current_session->name }}</option>
                                                @endforeach
                                            </select>
                                            @if($errors->has('current_session_id'))
                                                <small class="text-danger">{{ $errors->first('current_session_id') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>County <sup class="text-danger">required</sup></label>
                                            <select name="county" class="form-control form-control-border @error('county') is-invalid @enderror">
                                                <option value="">--Select Option--</option>
                                                @include('counties')
                                            </select>
                                            @if($errors->has('county'))
                                                <small class="text-danger">{{ $errors->first('county') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Countries <sup class="text-danger">required</sup></label>
                                            <select name="country" class="form-control form-control-border @error('country') is-invalid @enderror">
                                                <option value="">--Select Financial Session--</option>
                                                @include('countries')
                                            </select>
                                            @if($errors->has('country'))
                                                <small class="text-danger">{{ $errors->first('country') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-4">
                                            <label>Company Logo <sup class="text-danger">required</sup></label>
                                            <input type="file" name="logo" accept=".jpg,.jpeg,.png,.tiff" class="form-control form-control-border">
                                            @if($errors->has('logo'))
                                                <small class="text-danger">{{ $errors->first('logo') }}</small>
                                            @endif
                                        </div>
                                        <div class="col-12 mt-4">
                                            <button type="submit" class="btn btn-primary btn-flat float-right">
                                                <i class="fa fa-user-plus"></i> Save Client
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