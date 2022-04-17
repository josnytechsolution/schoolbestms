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
                        <div class="card no-radius card-success card-outline">
                            <div class="card-header">
                                <h3 class="card-title"><i class="fa fa-user"></i> Client Information</h3>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-3 mb-4">
                                        <label>First Name <sup class="text-danger">required</sup></label>
                                        <input type="text" name="first_name" class="form-control form-control-border @error('first_name') is-invalid @enderror no-radius" value="{{ old('first_name') }}">
                                        @if($errors->has('first_name'))
                                            <small class="text-danger">{{ $errors->first('first_name') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Last Name <sup class="text-danger">required</sup></label>
                                        <input type="text" name="last_name" class="form-control form-control-border @error('last_name') is-invalid @enderror no-radius" value="{{ old('last_name') }}">
                                        @if($errors->has('last_name'))
                                            <small class="text-danger">{{ $errors->first('last_name') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Contact</label>
                                        <input type="text" name="contact" class="form-control form-control-border @error('contact') is-invalid @enderror no-radius" value="{{ old('contact') }}" placeholder="0712345678">
                                        @if($errors->has('contact'))
                                            <small class="text-danger">{{ $errors->first('contact') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Email Address</label>
                                        <input type="email" name="email" class="form-control form-control-border @error('email') is-invalid @enderror no-radius" value="{{ old('email') }}">
                                        @if($errors->has('email'))
                                            <small class="text-danger">{{ $errors->first('email') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Date of Registration <sup class="text-danger">required</sup></label>
                                        <input type="date" name="reg_date" class="form-control form-control-border @error('reg_date') is-invalid @enderror no-radius" value="{{ old('reg_date') }}">
                                        @if($errors->has('reg_date'))
                                            <small class="text-danger">{{ $errors->first('reg_date') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Notifications <sup class="text-danger">required</sup></label>
                                        <input type="checkbox" name="on_email" class="form-control" value="{{ old('on_email') }}" checked> Via Email
                                        <input type="checkbox" name="on_phone" class="form-control" value="{{ old('on_phone') }}" checked> Via Phone (SMS)
                                        @if($errors->has('on_email'))
                                            <small class="text-danger">{{ $errors->first('on_email') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Company Name <sup class="text-danger">required</sup></label>
                                        <input type="text" name="company_name" class="form-control form-control-border @error('company_name') is-invalid @enderror no-radius" value="{{ old('company_name') }}">
                                        @if($errors->has('company_name'))
                                            <small class="text-danger">{{ $errors->first('company_name') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Postal Address <sup class="text-danger">required</sup></label>
                                        <input type="text" name="postal_address" class="form-control form-control-border @error('postal_address') is-invalid @enderror no-radius" value="{{ old('postal_address') }}">
                                        @if($errors->has('postal_address'))
                                            <small class="text-danger">{{ $errors->first('postal_address') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Classroom <sup class="text-danger">required</sup></label>
                                        <select name="current_session_id" class="form-control select2 @error('current_session_id') is-invalid @enderror no-radius">
                                            <option value="">--Select Option--</option>
                                            @foreach($current_sessions as $current_session)
                                                <option value="{{ $current_session->id }}">{{ $current_session->name }}</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('current_session_id'))
                                            <small class="text-danger">{{ $errors->first('current_session_id') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Admission Type <sup class="text-danger">required</sup></label>
                                        <select name="adm_type" class="form-control select2 @error('adm_type') is-invalid @enderror">
                                            <option value="">--Select Option--</option>
                                            <option value="1">New Admission</option>
                                            <option value="2">Existing Student</option>
                                        </select>
                                        @if($errors->has('adm_type'))
                                            <small class="text-danger">{{ $errors->first('adm_type') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Financial Session <sup class="text-danger">required</sup></label>
                                        <select name="current_session" class="form-control select2 @error('current_session') is-invalid @enderror no-radius">
                                            <option value="">--Select Financial Session--</option>
                                            @foreach($current_sessions as $current_session)
                                                <option value="{{ $current_session->id }}">{{ ucwords($current_session->name) }}</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('current_session'))
                                            <small class="text-danger">{{ $errors->first('current_session') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Discount Level <sup class="text-danger">required</sup></label>
                                        <select name="discount_level" class="form-control select2 @error('discount_level') is-invalid @enderror no-radius">
                                            <option value="">--Select Discount Level--</option>
                                            @foreach($discount_levels as $discount_level)
                                                <option value="{{ $discount_level->id }}">{{ $discount_level->name." (".$discount_level->discount.")" }}</option>
                                            @endforeach
                                        </select>
                                        @if($errors->has('discount_level'))
                                            <small class="text-danger">{{ $errors->first('discount_level') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Send SMS To: <sup class="text-danger">required</sup></label>
                                        <select name="send_to" class="form-control select2 @error('send_to') is-invalid @enderror">
                                            <option value="">--Select Option--</option>
                                            <option value="primary_contact">Primary Contact</option>
                                            <option value="secondary_contact">Secondary Contact</option>
                                            <option value="both_contacts">Both Contacts</option>
                                        </select>
                                        @if($errors->has('send_to'))
                                            <small class="text-danger">{{ $errors->first('send_to') }}</small>
                                        @endif
                                    </div>

                                    <div class="col-md-3 mb-4">
                                        <label>Photo</label>
                                        <input type="file" name="photo" accept=".jpg,.jpeg,.png,.tiff" class="form-control">
                                        @if($errors->has('photo'))
                                            <small class="text-danger">{{ $errors->first('photo') }}</small>
                                        @endif
                                    </div>
                                </div>
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