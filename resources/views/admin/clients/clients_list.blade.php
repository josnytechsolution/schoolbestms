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
                        <h1 class="m-0 text-dark">MY CLIENTS</h1>
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
                                   <i class="fa fa-user-cog"></i> CLIENTS LIST
                                </h3>
                                <div class="card-tools">
                                    <a href="{{ route('my-clients.create') }}" class="btn btn-primary btn-sm btn-flat"><i class="fa fa-user-plus"></i> New Client</a>
                                </div>
                            </div>

                            <div class="card-body">
                                <table id="example1" class="table table-bordered table-striped table-hover">
                                    <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>ID</th>
                                        <th>NAME</th>
                                        <th>CONTACT</th>
                                        <th>EMAIL ADDRESS</th>
                                        <th>COMPANY NAME</th>
                                        <th>POSTAL ADDRESS</th>
                                        <th>COUNTY/COUNTRY</th>
                                        <th>STATUS</th>
                                        <th class="text-center">ACTION</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1; ?>
                                    @foreach($clients as $client)
                                        <tr>
                                            <td style="vertical-align: middle">{{ $i }}</td>
                                            <td style="vertical-align: middle">{{ $client->client_no }}</td>
                                            <td style="vertical-align: middle">{{ $client->full_name }}</td>
                                            <td style="vertical-align: middle">{{ $client->contact }}</td>
                                            <td style="vertical-align: middle">{{ $client->email }}</td>
                                            <td style="vertical-align: middle">{{ $client->company_name }}</td>
                                            <td style="vertical-align: middle">{{ $client->postal_address }}</td>
                                            <td style="vertical-align: middle">{{ $client->county." / ".$client->country }}</td>
                                            <td style="vertical-align: middle;text-align: center">
                                                <span class="@if($client->status === "isActive") text-success @else text-danger @endif">
                                                    {{ $client->status }}
                                                </span>
                                            </td>
                                            <td style="vertical-align: middle;text-align: center">
                                               ACTION
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