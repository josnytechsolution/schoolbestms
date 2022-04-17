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
                        <h1 class="m-0 text-dark">SYSTEM USERS</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('adminDashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Settings</li>
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
                        <div class="card card-outline card-primary no-radius">
                            <div class="card-header">
                                <h3 class="card-title">
                                   <i class="fa fa-user-cog"></i> SYSTEM USERS LIST
                                </h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-primary btn-sm btn-flat" data-toggle="modal" data-target="#createUser"><i class="fa fa-user-plus"></i> New User</button>
                                </div>
                            </div>
                            <!-- Start Create User Modal -->
                            <div class="modal fade" id="createUser" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <form action="{{ route('system-users.store') }}" method="post">
                                        @csrf
                                        <div class="modal-content no-radius">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-user-plus text-primary"></i> Create New User</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="form-group col-md-12">
                                                        <label>{{ __('Name') }}<sup class="text-danger">*</sup></label>
                                                        <input id="name" type="text" class="form-control form-control-border @error('name') is-invalid @enderror no-radius" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                                        @error('name')
                                                        <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                        @enderror
                                                    </div>

                                                    <div class="form-group col-md-12">
                                                        <label>{{ __('E-Mail Address') }}<sup class="text-danger">*</sup></label>
                                                        <input id="email" type="email" class="form-control form-control-border @error('email') is-invalid @enderror no-radius" name="email" value="{{ old('email') }}" required autocomplete="off">

                                                        @error('email')
                                                        <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                        @enderror
                                                    </div>

                                                    <div class="form-group col-md-12">
                                                        <label>{{ __('Contact') }}<sup class="text-danger">*</sup></label>
                                                        <input type="text" class="form-control form-control-border @error('contact') is-invalid @enderror no-radius" name="contact" value="{{ old('contact') }}" required autocomplete="off">

                                                        @error('contact')
                                                        <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                        @enderror
                                                    </div>

                                                    <div class="form-group col-md-12">
                                                        <label>{{ __('Is Admin?') }}<sup class="text-danger">*</sup></label>
                                                        <select  class="form-control form-control-border @error('is_admin') is-invalid @enderror no-radius" name="is_admin">
                                                            <option value="1">YES</option>
                                                            <option value="0">NO</option>
                                                        </select>

                                                        @error('is_admin')
                                                        <span class="invalid-feedback" role="alert">
                                                                        <strong>{{ $message }}</strong>
                                                                    </span>
                                                        @enderror
                                                    </div>

                                                    <div class="col-md-12 bg-gray-light border">
                                                        <div class="form-group col-md-12 mt-2">
                                                            <label>{{ __('Password') }}<sup class="text-danger">*</sup></label>
                                                            <input id="password" type="password" class="form-control form-control-border @error('password') is-invalid @enderror no-radius" name="password" required autocomplete="new-password">

                                                            @error('password')
                                                            <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                            @enderror
                                                        </div>

                                                        <div class="form-group col-md-12">
                                                            <label>{{ __('Confirm Password') }}<sup class="text-danger">*</sup></label>
                                                            <input id="password-confirm" type="password" class="form-control form-control-border no-radius" name="password_confirmation" required autocomplete="new-password">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                                                <button type="submit" class="btn btn-success btn-flat"><i class="fa fa-database"></i> Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- End Create User Modal -->

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>NAME</th>
                                        <th>EMAIL ADDRESS</th>
                                        <th>CONTACT</th>
                                        <th class="text-center">USER  TYPE</th>
                                        <th class="text-center">STATUS</th>
                                        <th class="text-center">EDIT</th>
                                        <th class="text-center">CHANGE PASSWORD</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1; ?>
                                    @foreach($users as $user)
                                        <tr>
                                            <td style="vertical-align: middle">{{ $i }}</td>
                                            <td style="vertical-align: middle">{{ $user->name }}</td>
                                            <td style="vertical-align: middle">{{ $user->email }}</td>
                                            <td style="vertical-align: middle">{{ $user->contact }}</td>
                                            <td style="vertical-align: middle;text-align: center">
                                                <span class="@if($user->is_admin) text-success @else text-primary @endif">
                                                    @if($user->is_admin) is_admin @else is_client @endif
                                                </span>
                                            </td>
                                            <td style="vertical-align: middle;text-align: center">
                                                <button class="btn btn-flat btn-sm @if($user->is_active) btn-success @else btn-danger @endif">
                                                    @if($user->is_active) Active @else Inactive @endif
                                                </button>
                                            </td>
                                            <td style="vertical-align: middle;text-align: center">
                                                <a class="text-success" href="#editUser{{ $user->slug }}" data-toggle="modal">
                                                    edit_user
                                                </a>
                                            </td>
                                            <td style="vertical-align: middle;text-align: center">
                                                <a class="text-primary" href="#changePassword{{ $user->slug }}" data-toggle="modal">
                                                    change_password
                                                </a>
                                            </td>

                                            <!-- Start Create User Modal -->
                                            <div class="modal fade" id="changePassword{{ $user->slug }}" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <form action="{{ route('system-users.update', $user->slug) }}" method="post">
                                                        @csrf
                                                        @method('PUT')
                                                        <div class="modal-content no-radius">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-user-edit text-primary"></i> Change {{ $user->name }} Password</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="row">
                                                                    <input type="hidden" name="type" value="pwd_change">

                                                                    <div class="col-md-12 bg-gray-light border">
                                                                        <div class="form-group col-md-12 mt-2">
                                                                            <label>{{ __('Password') }}<sup class="text-danger">*</sup></label>
                                                                            <input id="password" type="password" class="form-control form-control-border @error('password') is-invalid @enderror no-radius" name="password" required autocomplete="new-password">

                                                                            @error('password')
                                                                                <span class="invalid-feedback" role="alert">
                                                                                    <strong>{{ $message }}</strong>
                                                                                </span>
                                                                            @enderror
                                                                        </div>

                                                                        <div class="form-group col-md-12">
                                                                            <label>{{ __('Confirm Password') }}<sup class="text-danger">*</sup></label>
                                                                            <input id="password-confirm" type="password" class="form-control form-control-border no-radius" name="password_confirmation" required autocomplete="new-password">
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                                                                <button type="submit" class="btn btn-success btn-flat"><i class="fa fa-save"></i> Save Changes</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <!-- End Create User Modal -->

                                            <!-- Start Create User Modal -->
                                            <div class="modal fade" id="editUser{{ $user->slug }}" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <form action="{{ route('system-users.update', $user->slug) }}" method="post">
                                                        @csrf
                                                        @method('PUT')
                                                        <div class="modal-content no-radius">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-user-edit text-primary"></i> Edit User {{ $user->name }}</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="row">
                                                                    <input type="hidden" name="type" value="info_change">
                                                                    <div class="form-group col-md-12">
                                                                        <label>{{ __('Name') }}<sup class="text-danger">*</sup></label>
                                                                        <input id="name" type="text" class="form-control @error('name') is-invalid @enderror no-radius" name="name" value="{{ old('name', $user->name) }}" required autocomplete="name" autofocus>

                                                                        @error('name')
                                                                        <span class="invalid-feedback" role="alert">
                                                                    <strong>{{ $message }}</strong>
                                                                </span>
                                                                        @enderror
                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label>{{ __('E-Mail Address') }}<sup class="text-danger">*</sup></label>
                                                                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror no-radius" name="email" value="{{ old('email', $user->email) }}" required autocomplete="off">

                                                                        @error('email')
                                                                        <span class="invalid-feedback" role="alert">
                                                                            <strong>{{ $message }}</strong>
                                                                        </span>
                                                                        @enderror
                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label>{{ __('Contact') }}<sup class="text-danger">*</sup></label>
                                                                        <input type="text" class="form-control @error('contact') is-invalid @enderror no-radius" name="contact" value="{{ old('contact', $user->contact) }}" required autocomplete="off">

                                                                        @error('contact')
                                                                        <span class="invalid-feedback" role="alert">
                                                                            <strong>{{ $message }}</strong>
                                                                        </span>
                                                                        @enderror
                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label>{{ __('Is Admin') }}<sup class="text-danger">*</sup></label>
                                                                        <select class="form-control @error('profile') is-invalid @enderror no-radius" name="profile">
                                                                            <option value="{{ $user->is_admin }}">@if($user->is_admin) YES @else NO @endif</option>
                                                                            <option value="1">YES</option>
                                                                            <option value="0">NO</option>
                                                                        </select>

                                                                        @error('profile')
                                                                        <span class="invalid-feedback" role="alert">
                                                                        <strong>{{ $message }}</strong>
                                                                    </span>
                                                                        @enderror
                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label>{{ __('Status') }}<sup class="text-danger">*</sup></label>
                                                                        <select class="form-control @error('is_active') is-invalid @enderror no-radius" name="status">
                                                                            <option value="{{ $user->is_active }}">@if($user->is_active) Active @else Inactive @endif</option>
                                                                            <option value="1">Active</option>
                                                                            <option value="0">Inactive</option>
                                                                        </select>

                                                                        @error('is_active')
                                                                        <span class="invalid-feedback" role="alert">
                                                                        <strong>{{ $message }}</strong>
                                                                    </span>
                                                                        @enderror
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                                                                <button type="submit" class="btn btn-success btn-flat"><i class="fa fa-save"></i> Save Changes</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                            <!-- End Create User Modal -->
                                        </tr>
                                        <?php $i++; ?>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- ./col -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>

@endsection