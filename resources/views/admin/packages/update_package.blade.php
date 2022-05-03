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
                        <h1 class="m-0 text-dark">UPDATE PACKAGE <small>{{ $package->name }}</small></h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('adminDashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">Packages</li>
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
                        <div class="card card-success card-outline no-radius">
                            <div class="card-body">
                                <form action="{{ route('schoolbest-packages.update', $package->slug) }}" method="post">
                                    @csrf
                                    @method('PUT')

                                    <div class="row mt-4">
                                        <div class="col-md-4 mb-5">
                                            <label>Package Name <sup class="text-danger">required</sup></label>
                                            <input type="text" name="name" class="form-control form-control-border @error('name') is-invalid @enderror no-radius" value="{{ old('name', $package->name) }}">
                                            @if($errors->has('name'))
                                                <small class="text-danger">{{ $errors->first('name') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-8 mb-5">
                                            <label>Package Description <sup class="text-danger">required</sup></label>
                                            <input type="text" name="description" class="form-control form-control-border @error('description') is-invalid @enderror no-radius" value="{{ old('description', $package->description) }}">
                                            @if($errors->has('description'))
                                                <small class="text-danger">{{ $errors->first('last_name') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Monthly Price</label>
                                            <input type="text" name="monthly" class="form-control form-control-border @error('monthly') is-invalid @enderror no-radius" value="{{ old('monthly', $package->monthly) }}" >
                                            @if($errors->has('monthly'))
                                                <small class="text-danger">{{ $errors->first('monthly') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Termly Price</label>
                                            <input type="text" name="termly" class="form-control form-control-border @error('termly') is-invalid @enderror no-radius" value="{{ old('termly', $package->termly) }}">
                                            @if($errors->has('termly'))
                                                <small class="text-danger">{{ $errors->first('termly') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-4 mb-5">
                                            <label>Yearly Price <sup class="text-danger">required</sup></label>
                                            <input type="text" name="yearly" class="form-control form-control-border @error('yearly') is-invalid @enderror no-radius" value="{{ old('yearly', $package->yearly) }}">
                                            @if($errors->has('yearly'))
                                                <small class="text-danger">{{ $errors->first('yearly') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Campuses <sup class="text-danger">required</sup></label>
                                            <select name="campuses" class="form-control form-control-border @error('campuses') is-invalid @enderror no-radius">
                                                <option value="{{ $data->campuses }}">Up to {{ $data->campuses }}</option>
                                                <option value="1">Up to 1</option>
                                                <option value="2">Up to 2</option>
                                                <option value="3">Up to 3</option>
                                            </select>
                                            @if($errors->has('campuses'))
                                                <small class="text-danger">{{ $errors->first('campuses') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>No. of students <sup class="text-danger">required</sup></label>
                                            <select name="students" class="form-control form-control-border @error('students') is-invalid @enderror no-radius">
                                                <option value="{{ $data->students }}">Up to {{ $data->students }}</option>
                                                <option value="250">Up to 250</option>
                                                <option value="400">Up to 400</option>
                                                <option value="750">Up to 750</option>
                                                <option value="1500">Up to 1500</option>
                                            </select>
                                            @if($errors->has('students'))
                                                <small class="text-danger">{{ $errors->first('students') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Storage Capacity <sup class="text-danger">required</sup></label>
                                            <select name="storage" class="form-control form-control-border @error('storage') is-invalid @enderror no-radius">
                                                <option value="{{ $data->storage }}">{{ $data->storage }}GB SSD</option>
                                                <option value="7">7GB SSD</option>
                                                <option value="15">15GB SSD</option>
                                                <option value="20">20GB SSD</option>
                                                <option value="30">30GB SSD</option>
                                            </select>
                                            @if($errors->has('storage'))
                                                <small class="text-danger">{{ $errors->first('storage') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Bulk SMS <sup class="text-danger">required</sup></label>
                                            <select name="bulksms" class="form-control form-control-border @error('bulksms') is-invalid @enderror no-radius">
                                                <option value="{{ $data->bulksms }}">{{ $data->bulksms }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('bulksms'))
                                                <small class="text-danger">{{ $errors->first('bulksms') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Emailing <sup class="text-danger">required</sup></label>
                                            <select name="emailing" class="form-control form-control-border @error('emailing') is-invalid @enderror no-radius">
                                                <option value="{{ $data->emailing }}">{{ $data->emailing }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('emailing'))
                                                <small class="text-danger">{{ $errors->first('emailing') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Transport <sup class="text-danger">required</sup></label>
                                            <select name="transport" class="form-control form-control-border @error('transport') is-invalid @enderror no-radius">
                                                <option value="{{ $data->transport }}">{{ $data->transport }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('transport'))
                                                <small class="text-danger">{{ $errors->first('transport') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>M-Pesa Integration <sup class="text-danger">required</sup></label>
                                            <select name="mpesa" class="form-control form-control-border @error('mpesa') is-invalid @enderror no-radius">
                                                <option value="{{ $data->mpesa }}">{{ $data->mpesa }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('mpesa'))
                                                <small class="text-danger">{{ $errors->first('mpesa') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Bank Integration <sup class="text-danger">required</sup></label>
                                            <select name="bank" class="form-control form-control-border @error('bank') is-invalid @enderror no-radius">
                                                <option value="{{ $data->bank }}">{{ $data->bank }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('bank'))
                                                <small class="text-danger">{{ $errors->first('bank') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Expenditure <sup class="text-danger">required</sup></label>
                                            <select name="expenditure" class="form-control form-control-border @error('expenditure') is-invalid @enderror no-radius">
                                                <option value="{{ $data->expenditure }}">{{ $data->expenditure }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('expenditure'))
                                                <small class="text-danger">{{ $errors->first('expenditure') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Staff Management <sup class="text-danger">required</sup></label>
                                            <select name="staff" class="form-control form-control-border @error('staff') is-invalid @enderror no-radius">
                                                <option value="{{ $data->staff }}">{{ $data->staff }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('staff'))
                                                <small class="text-danger">{{ $errors->first('staff') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Staff Payroll <sup class="text-danger">required</sup></label>
                                            <select name="payroll" class="form-control form-control-border @error('payroll') is-invalid @enderror no-radius">
                                                <option value="{{ $data->payroll }}">{{ $data->payroll }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('payroll'))
                                                <small class="text-danger">{{ $errors->first('payroll') }}</small>
                                            @endif
                                        </div>

                                        <div class="col-md-3 mb-5">
                                            <label>Parents' Portal <sup class="text-danger">required</sup></label>
                                            <select name="portal" class="form-control form-control-border @error('portal') is-invalid @enderror no-radius">
                                                <option value="{{ $data->portal }}">{{ $data->portal }}</option>
                                                <option value="YES">YES</option>
                                                <option value="NO">NO</option>
                                            </select>
                                            @if($errors->has('portal'))
                                                <small class="text-danger">{{ $errors->first('portal') }}</small>
                                            @endif
                                        </div>


                                        <div class="col-12">
                                            <button type="submit" class="btn btn-outline-success btn-flat float-right">
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