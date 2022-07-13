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
                        <h1 class="m-0 text-dark">Financial Sessions</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
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
                                   <i class="fa fa-clock"></i> Financial Sessions List
                                </h3>
                                <div class="card-tools">
                                    <button type="button" class="btn btn-primary btn-sm btn-flat" data-toggle="modal" data-target="#createSession"><i class="fa fa-plus"></i> New Session</button>
                                </div>
                            </div>
                            <!-- Start Edit Modal -->
                            <div class="modal fade" id="createSession" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">

                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content no-radius">
                                        <form action="{{ route('financial-sessions.store') }}" method="post">
                                            @csrf

                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-plus-circle text-primary"></i> CREATE SESSION</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                    <span aria-hidden="true">&times;</span>
                                                </button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="row">
                                                    <div class="form-group col-md-12 mt-2">
                                                        <label>Session Name <sup class="text-danger">required</sup></label>
                                                        <input type="text" name="name" class="form-control form-control-border @error('name') is-invalid @enderror no-radius" placeholder="Session Name" value="{{ old('name') }}" >

                                                        @if($errors->has('name'))
                                                            <small class="text-danger">{{ $errors->first('name') }}</small>
                                                        @endif
                                                    </div>
                                                    <div class="form-group col-md-12 mt-2">
                                                        <label>Academic Term <sup class="text-danger">required</sup></label>
                                                        <select name="term" class="form-control form-control-border @error('term') is-invalid @enderror no-radius">
                                                            <option value="">--Select Term--</option>
                                                            <option value="TERM 1">TERM 1</option>
                                                            <option value="TERM 2">TERM 2</option>
                                                            <option value="TERM 3">TERM 3</option>
                                                        </select>
                                                        @if($errors->has('term'))
                                                            <small class="text-danger">{{ $errors->first('term') }}</small>
                                                        @endif
                                                    </div>

                                                    <div class="form-group col-md-12 mt-2">
                                                        <label>Fianacial Year <sup class="text-danger">required</sup></label>
                                                        <select name="year" class="form-control form-control-border @error('year') is-invalid @enderror no-radius">
                                                            <option value="">--Select Year--</option>
                                                            <option value="2022">2022</option>
                                                            <option value="2023">2023</option>
                                                            <option value="2024">2024</option>
                                                            <option value="2025">2025</option>
                                                            <option value="2026">2026</option>
                                                            <option value="2027">2027</option>
                                                            <option value="2028">2028</option>
                                                            <option value="2029">2029</option>
                                                            <option value="2030">2030</option>
                                                        </select>
                                                        @if($errors->has('year'))
                                                            <small class="text-danger">{{ $errors->first('year') }}</small>
                                                        @endif
                                                    </div>
                                                    <div class="form-group col-md-12 mt-2">
                                                        <label>Start Date <sup class="text-danger">required</sup></label>
                                                        <input type="date" name="start_date" class="form-control form-control-border @error('start_date') is-invalid @enderror no-radius" placeholder="Session Name" value="{{ old('start_date') }}" >

                                                        @if($errors->has('start_date'))
                                                            <small class="text-danger">{{ $errors->first('start_date') }}</small>
                                                        @endif
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                                                <button type="submit" class="btn btn-primary btn-flat"><i class="fa fa-save"></i> Save Session</button>
                                            </div>
                                        </form>

                                    </div>
                                </div>

                            </div>
                            <!-- End Edit Modal -->
                            <div class="card-body">

                                <table id="example1" class="table table-bordered table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>SESSION</th>
                                        <th>TERM</th>
                                        <th>YEAR</th>
                                        <th>STATUS</th>
                                        <th>START DATE</th>
                                        <th>EDIT</th>
                                        <th>DELETE</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1; ?>
                                    @foreach($financial_sessions as $financial_session)
                                        <tr>
                                            <td>{{ $i }}</td>
                                            <td>{{ $financial_session->name }}</td>
                                            <td>{{ $financial_session->term }}</td>
                                            <td>{{ $financial_session->year }}</td>
                                            <td>{{ $financial_session->status }}</td>
                                            <td>{{ date('d-m-Y', strtotime($financial_session->start_date)) }}</td>
                                            <td class="text-center">
                                                @if($financial_session->status === "Future")
                                                    <a href="#editFSess{{ $financial_session->slug }}" data-toggle="modal">
                                                        <i class="fa fa-edit text-success"></i>
                                                    </a>
                                                @else
                                                    <a href="javascript:;" class="toastrDefaultError">
                                                        <i class="fa fa-edit text-gray"></i>
                                                    </a>
                                                @endif
                                            </td>
                                            <td class="text-center">
                                                @if($financial_session->status === "Future")
                                                    <a href="#deleteFSess{{ $financial_session->slug }}" data-toggle="modal">
                                                        <i class="fa fa-trash text-danger"></i>
                                                    </a>
                                                @else
                                                    <a href="javascript:;" class="toastrDefaultError">
                                                        <i class="fa fa-trash text-gray"></i>
                                                    </a>
                                                @endif
                                            </td>
                                            <!-- Start Edit Modal -->
                                            <div class="modal fade" id="editFSess{{ $financial_session->slug }}" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">

                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content no-radius">
                                                        <form action="{{ route('financial-sessions.update', $financial_session->slug) }}" method="POST">
                                                            @csrf
                                                            @method('PUT')

                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-edit text-success"></i> Edit Session {{ strtoupper($financial_session->name) }}</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="row">
                                                                    <div class="form-group col-md-12 mt-2">
                                                                        <label>Session Name <sup class="text-danger">required</sup></label>
                                                                        <input type="text" name="name" class="form-control form-control-border @error('name') is-invalid @enderror no-radius" placeholder="Session Name" value="{{ old('name', $financial_session->name) }}" >

                                                                        @if($errors->has('name'))
                                                                            <small class="text-danger">{{ $errors->first('name') }}</small>
                                                                        @endif
                                                                    </div>
                                                                    <div class="form-group col-md-12 mt-2">
                                                                        <label>Academic Term <sup class="text-danger">required</sup></label>
                                                                        <select name="term" class="form-control form-control-border @error('term') is-invalid @enderror no-radius">
                                                                            <option value="{{ $financial_session->term }}">{{ $financial_session->term }}</option>
                                                                            <option value="TERM 1">TERM 1</option>
                                                                            <option value="TERM 2">TERM 2</option>
                                                                            <option value="TERM 3">TERM 3</option>
                                                                        </select>
                                                                        @if($errors->has('term'))
                                                                            <small class="text-danger">{{ $errors->first('term') }}</small>
                                                                        @endif
                                                                    </div>

                                                                    <div class="form-group col-md-12">
                                                                        <label>Financial Year <sup class="text-danger">required</sup></label>
                                                                        <select name="year" class="form-control form-control-border @error('year') is-invalid @enderror no-radius">
                                                                            <option value="{{ $financial_session->year }}">{{ $financial_session->year }}</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2024">2024</option>
                                                                            <option value="2025">2025</option>
                                                                            <option value="2026">2026</option>
                                                                            <option value="2027">2027</option>
                                                                            <option value="2028">2028</option>
                                                                            <option value="2029">2029</option>
                                                                            <option value="2030">2030</option>
                                                                        </select>
                                                                        @if($errors->has('year'))
                                                                            <small class="text-danger">{{ $errors->first('year') }}</small>
                                                                        @endif
                                                                    </div>
                                                                    <div class="form-group col-md-12 mt-2">
                                                                        <label>Start Date <sup class="text-danger">required</sup></label>
                                                                        <input type="date" name="start_date" class="form-control form-control-border @error('start_date') is-invalid @enderror no-radius" placeholder="Session Name" value="{{ old('start_date', $financial_session->start_date) }}" >

                                                                        @if($errors->has('start_date'))
                                                                            <small class="text-danger">{{ $errors->first('start_date') }}</small>
                                                                        @endif
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> Cancel</button>
                                                                <button type="submit" class="btn btn-success btn-flat"><i class="fa fa-save"></i> Save Changes</button>
                                                            </div>
                                                        </form>

                                                    </div>
                                                </div>

                                            </div>
                                            <!-- End Edit Modal -->

                                            <!-- Start Delete Modal -->
                                            <div class="modal fade" id="deleteFSess{{ $financial_session->slug }}" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">

                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content no-radius">
                                                        <form action="{{ route('financial-sessions.destroy', $financial_session->slug) }}" method="post">
                                                            @csrf
                                                            @method('DELETE')
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-trash text-danger"></i> Delete Class: {{ strtoupper($financial_session->name) }}</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body text-sm">
                                                                <div class="col-md-12 mb-3">
                                                                    <div class="alert alert-warning" style="text-align: center">
                                                                        <i class="fa fa-exclamation-triangle fa-2x"></i><br>
                                                                        This action cannot be undone.<br>
                                                                        This will delete all information related to this class.<br>
                                                                        Are you you want to delete<br> {{ strtoupper($financial_session->name) }}?
                                                                    </div>
                                                                </div>

                                                                <div class="col-md-12 mb-3">
                                                                    <label>Enter Administrator Password<span class="text-danger"><sup>*</sup></span> </label>
                                                                    <input type="password" name="password" class="form-control no-radius @error('password') is-invalid @enderror" required>
                                                                    <small>This action requires Admin rights</small>
                                                                    @if($errors->has('password'))
                                                                        <p style="font-family:courier new;color:red;font-size:12px">
                                                                            {{ $errors->first('password') }}
                                                                        </p>
                                                                    @endif
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary btn-flat float-left" data-dismiss="modal"><i class="fa fa-times"></i> No! Cancel</button>
                                                                <button type="submit" class="btn btn-danger btn-flat"><i class="fa fa-save"></i> Yes! Delete Session</button>
                                                            </div>
                                                        </form>

                                                    </div>
                                                </div>

                                            </div>
                                            <!-- End Delete Modal -->
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