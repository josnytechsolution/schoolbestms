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
                        <h1 class="m-0 text-dark">SCHOOLBEST PROJECTS</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('adminDashboard') }}">Home</a></li>
                            <li class="breadcrumb-item active">projects</li>
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
                        <div class="card card-outline card-primary no-radius">
                            <div class="card-header">
                                <h3 class="card-title">
                                   <i class="fa fa-th"></i> SCHOOLBEST PROJECTS LIST
                                </h3>
                                <div class="card-tools">
                                    <a href="{{ route('schoolbest-projects.create') }}" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-plus"></i> Project</a>
                                </div>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>ID</th>
                                        <th>PROJECT NAME</th>
                                        <th>CLIENT NAME</th>
                                        <th>PACKAGE</th>
                                        <th>REG. DATE</th>
                                        <th>BILLING CYCLE</th>
                                        <th>AMOUNT</th>
                                        <th>DUE ON</th>
                                        <th>STUDENTS</th>
                                        <th>STATUS</th>
                                        <th class="text-center">ACTION</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1; ?>
                                    @foreach($projects as $project)
                                        <tr>
                                            <td style="vertical-align: middle">{{ $i }}</td>
                                            <td style="vertical-align: middle">{{ $project->project_no }}</td>
                                            <td style="vertical-align: middle">{{ $project->name }}</td>
                                            <td style="vertical-align: middle">{{ $project->client->fullname }}</td>
                                            <td style="vertical-align: middle">{{ $project->package->name }}</td>
                                            <td style="vertical-align: middle">{{ $project->reg_date }}</td>
                                            <td style="vertical-align: middle">{{ strtoupper($project->billing_cycle) }}</td>
                                            <td style="vertical-align: middle">{{ number_format($project->expected,2) }}</td>
                                            <td style="vertical-align: middle">{{ $project->next_due_date }}</td>
                                            <td style="vertical-align: middle">{{ $project->students }} / {{ $project->max_students }}</td>
                                            <td style="vertical-align: middle;text-align: center">
                                                @if($project->is_active) <button type="button" class="btn btn-flat btn-sm btn-success">Active</button> @else <button type="button" class="btn btn-flat btn-sm btn-danger">InActive</button> @endif
                                            </td>
                                            <td style="vertical-align: middle;text-align: center">
                                                <div class="input-group-prepend">
                                                    <button type="button" class="btn btn-info btn-sm btn-flat dropdown-toggle" data-toggle="dropdown">
                                                        Action
                                                    </button>
                                                    <div class="dropdown-menu">
                                                        <a href="{{ route('schoolbest-projects.show', $project->slug) }}" class="dropdown-item text-primary">
                                                            <i class="fa fa-eye text-primary"></i> View Details
                                                        </a>
                                                        <a href="{{ route('schoolbest-projects.edit', $project->slug) }}" class="dropdown-item text-success">
                                                            <i class="fa fa-edit text-success"></i> Edit project
                                                        </a>
                                                        <div class="dropdown-divider"></div>
                                                        <a href="#deleteProject{{ $project->slug }}" data-toggle="modal" class="dropdown-item text-danger">
                                                            <i class="fa fa-trash text-danger"></i> Delete project
                                                        </a>
                                                    </div>
                                                </div>

                                                <!-- Start Delete Modal -->
                                                <div class="modal fade" id="deleteProject{{ $project->slug }}" tabindex="-1" role="dialog" aria-hidden="true" data-backdrop="static" data-keyboard="false">

                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                        <div class="modal-content no-radius">
                                                            <form action="{{ route('schoolbest-projects.destroy', $project->slug) }}" method="post">
                                                                @csrf
                                                                @method('DELETE')

                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="exampleModalCenterTitle"><i class="fa fa-trash text-danger"></i> <small>{{ strtoupper($project->name) }}</small></h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body text-sm">
                                                                    <div class="col-md-12 mb-3">
                                                                        <div class="alert alert-warning" style="text-align: center">
                                                                            <i class="fa fa-exclamation-triangle fa-2x"></i><br>
                                                                            This action cannot be undone.<br>
                                                                            This will delete all information related to this this student.<br>
                                                                            Are you you want to delete<br> {{ strtoupper($project->name) }}?
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
                                                                    <button type="submit" class="btn btn-danger btn-flat"><i class="fa fa-save"></i> Yes! Delete Client</button>
                                                                </div>
                                                            </form>

                                                        </div>
                                                    </div>

                                                </div>
                                                <!-- End Edit Modal -->
                                            </td>
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