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
                        <h1 class="m-0 text-dark">SCHOOLBEST PACKAGES</h1>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"> <a href="{{ route('adminDashboard') }}">Home</a> </li>
                            <li class="breadcrumb-item active">Packages</li>
                        </ol>
                    </div>
                    <!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col-md-12 mb-4">
                        <a href="{{ route('schoolbest-packages.create') }}" class="btn btn-primary btn-sm btn-flat float-right"> <i class="fa fa-plus"></i> Packages</a>
                    </div>
                    <div class="col-md-2">
                        <!-- TABLE: LATEST ORDERS -->
                        <div class="card no-radius">
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table m-0">
                                        <thead style="height: 235px;" class="bg-gray-light">
                                            <tr>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th>NO. OF STUDENTS</th>
                                            </tr>
                                            <tr>
                                                <th>NO. OF CAMPUSES</th>
                                            </tr>
                                            <tr>
                                                <th>STORAGE CAPACITY</th>
                                            </tr>
                                            <tr>
                                                <th>BULK SMS INTEGRATION</th>
                                            </tr>
                                            <tr>
                                                <th>BULK EMAILING</th>
                                            </tr>
                                            <tr>
                                                <th>M-PESA INTEGRATION</th>
                                            </tr>
                                            <tr>
                                                <th>BANK INTEGRATION</th>
                                            </tr>
                                            <tr>
                                                <th>TRANSPORT MANAGEMENT</th>
                                            </tr>
                                            <tr>
                                                <th>EXPENDITURE </th>
                                            </tr>
                                            <tr>
                                                <th>STAFF MANAGEMENT</th>
                                            </tr>
                                            <tr>
                                                <th>STAFF PAYROLL</th>
                                            </tr>
                                            <tr>
                                                <th>PARENTS' PORTAL</th>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.table-responsive -->
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->

                    @foreach($packages as $package)
                        @php($data = json_decode($package->specification))
                        <div class="col-md-2">
                            <!-- TABLE: LATEST ORDERS -->
                            <div class="card no-radius">
                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table m-0">
                                            <thead>
                                            <tr><th class="text-center">{{ strtoupper($package->name) }} PACKAGE</th></tr>
                                            <tr><th class="text-center bg-info">{{ strtoupper($package->description) }}</th></tr>
                                            <tr><th class="text-center bg-info"> KES. {{ number_format($package->monthly) }} <small>/ MONTH</small></th></tr>
                                            <tr><th class="text-center bg-info"> KES. {{ number_format($package->termly) }} <small>/ TERM</small></th></tr>
                                            <tr><th class="text-center bg-info"> KES. {{ number_format($package->yearly) }} <small>/ YEAR</small></th></tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <th style="text-align: center">Up To {{ $data->students }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">Up To {{ $data->campuses }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->storage }}GB SSD</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->bulksms }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->emailing }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->mpesa }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->bank }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->transport }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->expenditure }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->staff }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->payroll }}</th>
                                            </tr>
                                            <tr>
                                                <th style="text-align: center">{{ $data->portal }}</th>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.card-body -->
                                <div class="card-footer text-center clearfix">
                                    <a href="{{ route('schoolbest-packages.show', $package->slug) }}" class="text-info"> view</a> |
                                    <a href="{{ route('schoolbest-packages.edit', $package->slug)}}" class="text-primary"> edit</a> |
                                    <a href="#deletePackage{{ $package->slug }}" class="text-danger" data-toggle="modal"> delete</a>
                                </div>
                                <!-- /.card-footer -->

                                <!-- Start Delete Modal -->
                                <div class="modal fade" id="deletePackage{{ $package->slug }}" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">

                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content no-radius">
                                            <form action="{{ route('schoolbest-packages.destroy', $package->slug) }}" method="post">
                                                @csrf
                                                @method('DELETE')

                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-trash text-danger"></i> <small>{{ strtoupper($package->name) }} PACKAGE</small></h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body text-sm">
                                                    <div class="col-md-12 mb-3">
                                                        <div class="alert alert-warning" style="text-align: center">
                                                            <i class="fa fa-exclamation-triangle fa-2x"></i><br>
                                                            This action cannot be undone.<br>
                                                            This will delete all information related to this this package.<br>
                                                            Are you you want to delete<br> {{ strtoupper($package->name) }}?
                                                        </div>
                                                    </div>

                                                    <div class="col-md-12 mb-3">
                                                        <label>Enter Your Password<span class="text-danger"><sup>*</sup></span> </label>
                                                        <input type="password" name="password" class="form-control no-radius @error('password') is-invalid @enderror" required>
                                                        <small>This action requires your password</small>
                                                        @if($errors->has('password'))
                                                            <p style="font-family:courier new;color:red;font-size:12px">
                                                                {{ $errors->first('password') }}
                                                            </p>
                                                        @endif
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> No! Cancel</button>
                                                    <button type="submit" class="btn btn-danger btn-flat"><i class="fa fa-save"></i> Yes! Delete Package</button>
                                                </div>
                                            </form>

                                        </div>
                                    </div>

                                </div>
                                <!-- End Edit Modal -->
                            </div>
                            <!-- /.card -->
                        </div>
                        <!-- /.col -->
                    @endforeach
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>

@endsection