<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="" class="brand-link">
        <img src="{{ asset('dist/img/schoolbest-mini-logo.png') }}" alt="Logo" class="brand-image">
        <span class="brand-text font-weight-light">SCHOOLBEST</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item mt-3">
                    <a href="{{ route('adminDashboard') }}" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            DASHBOARD
                            <i class="fas fa-angle-right right"></i>
                        </p>
                    </a>
                </li>

                <li class="nav-item mt-2">
                    <a href="{{ route('my-clients.index') }}" class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            CLIENTS
                            <i class="fas fa-angle-right right"></i>
                        </p>
                    </a>
                </li>

                <li class="nav-item has-treeview mt-2">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-th"></i>
                        <p>
                            PROJECTS
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('schoolbest-packages.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Packages</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('schoolbest-projects.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Projects</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item has-treeview mt-2">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-paper-plane"></i>
                        <p>
                            BULK SMS
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>SMS Dashboard</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Send Express SMS</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Send Bulk SMS</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>SMS Oubox</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item has-treeview mt-2">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-cogs"></i>
                        <p>
                            SETTINGS
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('financial-sessions.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Sessions/Terms</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('company-profile.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Company Profile</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('system-users.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>System Users</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('audit-trails.index') }}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Audit Trail</p>
                            </a>
                        </li>
                    </ul>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>