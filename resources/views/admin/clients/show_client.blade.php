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
                        <h1 class="m-0 text-dark">{{ $client->fullname }}</h1>
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
                        <div class="card card-outline card-primary no-radius">
                            <div class="card-header">
                                <h3 class="card-title">
                                   <i class="fa fa-user-cog"></i> CLIENT
                                </h3>
                            </div>

                            <div class="card-body">

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