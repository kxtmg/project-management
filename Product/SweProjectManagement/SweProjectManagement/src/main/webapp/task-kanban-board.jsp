<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
<title>List | Project Management</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- App favicon -->
<link rel="shortcut icon" href="images/favicon.ico">

        <!-- Plugins css -->
        <link href="libs/spectrum-colorpicker2/spectrum.min.css" rel="stylesheet" type="text/css">
        <link href="libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />
        <link href="libs/clockpicker/bootstrap-clockpicker.min.css" rel="stylesheet" type="text/css" />
        <link href="libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="libs/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

		<!-- App css -->
<link href="css/config/default/bootstrap.min.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
<link href="css/config/default/app.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

<link href="css/config/default/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" disabled="disabled" />
<link href="css/config/default/app-dark.min.css" rel="stylesheet" type="text/css" id="app-dark-stylesheet" disabled="disabled" />

<!-- icons -->
<link href="css/icons.min.css" rel="stylesheet" type="text/css" />

    </head>

    <!-- body start -->
    <body class="loading" data-layout-mode="horizontal" data-layout='{"mode": "light", "width": "fluid", "menuPosition": "fixed", "topbar": {"color": "dark"}, "showRightSidebarOnPageLoad": true}'>

        <!-- Begin page -->
        <div id="wrapper">
            <!-- Topbar Start -->
<div class="navbar-custom">
    <div class="container-fluid">
         <ul class="list-unstyled topnav-menu float-end mb-0">

            <li class="d-none d-lg-block">
                <form class="app-search">
                    <div class="app-search-box">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..." id="top-search">
                            <button class="btn input-group-text" type="submit">
                                <i class="fe-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </li>
    
            <li class="dropdown d-inline-block d-lg-none">
                <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                    <i class="fe-search noti-icon"></i>
                </a>
                <div class="dropdown-menu dropdown-lg dropdown-menu-end p-0">
                    <form class="p-3">
                        <input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
                    </form>
                </div>
            </li>
            
            
    
            <li class="dropdown notification-list topbar-dropdown">
                <a class="nav-link dropdown-toggle nav-user me-0 waves-effect waves-light" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
                    <img src="images/users/user-1.png" alt="user-image" class="rounded-circle">
                    <span class="pro-user-name ms-1">
                        User <i class="mdi mdi-chevron-down"></i> 
                    </span>
                </a>
                <div class="dropdown-menu dropdown-menu-end profile-dropdown ">
                    <!-- item-->
                    <div class="dropdown-header noti-title">
                        <h6 class="text-overflow m-0">Welcome !</h6>
                    </div>
    
                    <!-- item-->
                    <a href="contacts-profile.html" class="dropdown-item notify-item">
                        <i class="fe-user"></i>
                        <span>My Account</span>
                    </a>
    
                    <!-- item-->
                    <a href="auth-lock-screen.html" class="dropdown-item notify-item">
                        <i class="fe-lock"></i>
                        <span>Lock Screen</span>
                    </a>
    
                    <div class="dropdown-divider"></div>
    
                    <!-- item-->
                    <a href="auth-logout.html" class="dropdown-item notify-item">
                        <i class="fe-log-out"></i>
                        <span>Logout</span>
                    </a>
    
                </div>
            </li>
    
            <li class="dropdown notification-list">
                <a href="javascript:void(0);" class="nav-link right-bar-toggle waves-effect waves-light">
                    <i class="fe-settings noti-icon"></i>
                </a>
            </li>
    
        </ul>
    
        <!-- LOGO -->
        <div class="logo-box">
            <a href="index.jsp" class="logo logo-light text-center">
                <span class="logo-sm">
                    <img src="images/logo-sm.png" alt="" height="22">
                </span>
                <span class="logo-lg">
                    <img src="images/logo-light.png" alt="" height="50">
                </span>
            </a>
            <a href="index.jsp" class="logo logo-dark text-center">
                <span class="logo-sm">
                    <img src="images/logo-sm.png" alt="" height="22">
                </span>
                <span class="logo-lg">
                    <img src="images/logo-dark.png" alt="" height="50">
                </span>
            </a>
        </div>

        <ul class="list-unstyled topnav-menu topnav-menu-left mb-0">

            <li>
                <!-- Mobile menu toggle (Horizontal Layout)-->
                <a class="navbar-toggle nav-link" data-bs-toggle="collapse" data-bs-target="#topnav-menu-content">
                    <div class="lines">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>
                </a>
                <!-- End mobile menu toggle-->
            </li>
             
        </ul>

        <div class="clearfix"></div> 
        
    </div>
              
</div>
<!-- end Topbar -->

            <div class="topnav">
    <div class="container-fluid">
        <nav class="navbar navbar-light navbar-expand-lg topnav-menu">

            <div class="collapse navbar-collapse" id="topnav-menu-content">
                <ul class="navbar-nav">
                    
                        <a class="nav-link arrow-none" href="dashboard.jsp" id="topnav-dashboard" role="button"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-view-dashboard me-1"></i> Dashboard
                        </a>
                        
                    
                    
                    <a class="nav-link arrow-none" href="task-kanban-board.jsp" id="topnav-dashboard" role="button"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-view-dashboard me-1"></i> List
                        </a>
                    
                    <a class="nav-link arrow-none" href="apps-projects.html" id="topnav-dashboard" role="button"
                            aria-haspopup="true" aria-expanded="false">
                            <i class="mdi mdi-view-dashboard me-1"></i> Overview
                        </a>

                    
                    
                </ul> <!-- end navbar-->
            </div> <!-- end .collapsed-->
        </nav>
    </div> <!-- end container-fluid -->
</div> <!-- end topnav-->
            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
<div class="row">
    <div class="col-12">
        <div class="page-title-box page-title-box-alt">
            <div class="page-title-right">
                <ol class="breadcrumb m-0">
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Team 1 - Project Management</a></li>
                    <li class="breadcrumb-item"><a href="javascript: void(0);">Tasks</a></li>
                    <li class="breadcrumb-item active">Project Tasks</li>
                </ol>
            </div>
            <h4 class="page-title">Project Tasks</h4>
        </div>
    </div>
</div>     
<!-- end page title --> 
            
                        <div class="row">
                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body taskboard-box">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Mark as Complete</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Delete</a>
                                                <!-- item-->
                                                
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-3 text-primary">Upcoming</h4>
    
                                        <ul class="sortable-list list-unstyled taskList" id="upcoming">
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox2" value="option2"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-danger float-end">Urgent</span>
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Improve animation loader</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox3" value="option3"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-warning float-end">High</span>
                                                        <h5 class="mt-0"><a href=""  class="text-dark">Write a release note for Admin v1.5</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox4" value="option4"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Invite user to a project</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox5" value="option2"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-danger float-end">Urgent</span>
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Code HTML email template for welcome email</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                        </ul>
    
                                        <div class="text-center pt-2">
                                            <a data-bs-toggle="modal" data-bs-target="#custom-modal" class="btn btn-primary waves-effect waves-light"
                                                data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                                <i class="mdi mdi-plus"></i> Add New
                                            </a>
                                        </div>
                                    </div>
                                </div>
                               
                            </div><!-- end col -->


                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body taskboard-box">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Mark as Complete</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Delete</a>
                                                <!-- item-->
                                                
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-3 text-warning">In Progress</h4>
    
                                        <ul class="sortable-list list-unstyled taskList" id="inprogress">
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox6" value="option6"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-danger float-end">Urgent</span>
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">File Uploads on cards</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox7" value="option7"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-warning float-end">High</span>
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Enable analytics tracking</a> </h4>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox8" value="option8"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Improve animation loader</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                        </ul>
    
                                        <div class="text-center pt-2">
                                            <a data-bs-toggle="modal" data-bs-target="#custom-modal" class="btn btn-primary waves-effect waves-light"
                                                data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                                <i class="mdi mdi-plus"></i> Add New
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end col -->


                            <div class="col-xl-4">
                                <div class="card">
                                    <div class="card-body taskboard-box">
                                        <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="mdi mdi-dots-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Mark as Complete</a>
                                                <!-- item-->
                                                <a href="javascript:void(0);" class="dropdown-item">Delete</a>
                                                <!-- item-->
                                                
                                            </div>
                                        </div>
    
                                        <h4 class="header-title mt-0 mb-3 text-success">Complete</h4>
    
                                        <ul class="sortable-list list-unstyled taskList" id="completed">
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox10" value="option10"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-danger float-end">Urgent</span>
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Improve animation loader</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox11" value="option11"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-warning float-end">High</span>
                                                        <h5><a href="task-details.html" class="text-dark">Write a release note for Admin v1.5</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success  float-start">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox12" value="option12"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Invite user to a project</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
    
                                            <li>
                                                <div class="kanban-box">
                                                    <div class="checkbox-wrapper float-start">
                                                        <div class="form-check form-check-success ">
                                                            <input class="form-check-input" type="checkbox" id="singleCheckbox13" value="option13"
                                                                    aria-label="Single checkbox Two">
                                                            <label></label>
                                                        </div>
                                                    </div>
    
                                                    <div class="kanban-detail">
                                                        <span class="badge bg-danger float-end">Urgent</span>
                                                        <h5 class="mt-0"><a href="task-details.html" class="text-dark">Code HTML email template for welcome email</a> </h5>
                                                        <ul class="list-inline">
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="Username">
                                                                    <img src="images/users/user-1.png" alt="img"
                                                                            class="avatar-sm rounded-circle">
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="5 Tasks">
                                                                    <i class="mdi mdi-format-align-left"></i>
                                                                </a>
                                                            </li>
                                                            <li class="list-inline-item">
                                                                <a href="" data-bs-toggle="tooltip" data-bs-placement="top"
                                                                    title="3 Comments">
                                                                    <i class="mdi mdi-comment-outline"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
    
                                        </ul>
    
                                        <div class="text-center pt-2">
                                            <a class="btn btn-primary waves-effect waves-light"
                                            data-bs-toggle="modal" data-bs-target="#custom-modal" data-animation="fadein" data-plugin="custommodal" data-overlaySpeed="200" data-overlayColor="#36404a">
                                                <i class="mdi mdi-plus"></i> Add New
                                            </a>
                                        </div>
                                    </div>
                                </div>
                               
                            </div><!-- end col -->

                        </div><!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

                <!-- Footer Start -->
<footer class="footer">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <script>document.write(new Date().getFullYear())</script> &copy; Team 1 - CS4840 
            </div>
            <div class="col-md-6">
                <div class="text-md-end footer-links d-none d-sm-block">
                    <a href="javascript:void(0);">About Us</a>
                    <a href="javascript:void(0);">Help</a>
                    <a href="javascript:void(0);">Contact Us</a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->

        </div>
        <!-- END wrapper -->

         <!-- Modal -->
         <div class="modal fade" id="custom-modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myCenterModalLabel">Add New</h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                    </div>
                    <div class="modal-body">
                        <form role="form">
                            <div class="mb-3">
                                <label class="form-label" for="name">Task Name</label>
                                <input type="text" class="form-control" id="name" placeholder="">
                            </div>
    
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label" for="assign">Assign to</label>
                                        <input type="text" class="form-control" id="assign" placeholder="">
                                    </div>
                                </div>
    
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label" for="priority">Priority</label>
                                        <input type="text" class="form-control" id="priority" placeholder="">
                                    </div>
                                </div>
                            </div>
    
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label" for="Sdate">Start Date</label>
                                        <input type="text" class="form-control" data-provide="datepicker">
                                    </div>
                                </div>
    
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label" for="Ddate">Due Date</label>
                                        <input type="text" class="form-control" data-provide="datepicker">
                                    </div>
                                </div>
                            </div>
    
                            <button type="submit" class="btn btn-success waves-effect waves-light me-1">Save</button>
                            <button type="button" class="btn btn-danger waves-effect waves-light"  data-bs-dismiss="modal">Cancel</button>
                        </form>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!-- Right Sidebar -->
<div class="right-bar">

    <div data-simplebar class="h-100">

        <div class="rightbar-title">
            <a href="javascript:void(0);" class="right-bar-toggle float-end">
                <i class="mdi mdi-close"></i>
            </a>
            <h4 class="font-16 m-0 text-white">Theme Customizer</h4>
        </div>
        
        <!-- Tab panes -->
        <div class="tab-content pt-0">  

            <div class="tab-pane active" id="settings-tab" role="tabpanel">

                <div class="p-3">
                    <div class="alert alert-warning" role="alert">
                        <strong>Customize </strong> the overall color scheme, Layout, etc.
                    </div>

                    <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Color Scheme</h6>
                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="color-scheme-mode" value="light"
                            id="light-mode-check" checked />
                        <label class="form-check-label" for="light-mode-check">Light Mode</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="color-scheme-mode" value="dark"
                            id="dark-mode-check" />
                        <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
                    </div>

                    <!-- Width -->
                    <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Width</h6>
                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="width" value="fluid" id="fluid-check" checked />
                        <label class="form-check-label" for="fluid-check">Fluid</label>
                    </div>
                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="width" value="boxed" id="boxed-check" />
                        <label class="form-check-label" for="boxed-check">Boxed</label>
                    </div>

                    <!-- Menu positions -->
                    <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Menus (Leftsidebar and Topbar) Positon</h6>

                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="menus-position" value="fixed" id="fixed-check"
                            checked />
                        <label class="form-check-label" for="fixed-check">Fixed</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="menus-position" value="scrollable"
                            id="scrollable-check" />
                        <label class="form-check-label" for="scrollable-check">Scrollable</label>
                    </div>

                    <!-- Topbar -->
                    <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Topbar</h6>

                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="topbar-color" value="dark" id="darktopbar-check"
                            checked />
                        <label class="form-check-label" for="darktopbar-check">Dark</label>
                    </div>

                    <div class="form-check form-switch mb-1">
                        <input type="checkbox" class="form-check-input" name="topbar-color" value="light" id="lighttopbar-check" />
                        <label class="form-check-label" for="lighttopbar-check">Light</label>
                    </div>

                    <div class="d-grid mt-4">
                        <button class="btn btn-primary" id="resetBtn">Reset to Default</button>
                        <a href="https://1.envato.market/admintoadmin" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
                    </div>

                </div>

            </div>
        </div>

    </div> <!-- end slimscroll-menu-->
</div>
<!-- /Right-bar -->
<!-- /Right-bar -->

<!-- Right bar overlay-->
<div class="rightbar-overlay"></div>

        <!-- Vendor js -->
        <script src="js/vendor.min.js"></script>
        <script src="libs/sortablejs/Sortable.min.js"></script>

        <!-- Plugins js-->
        <script src="libs/flatpickr/flatpickr.min.js"></script>
        <script src="libs/spectrum-colorpicker2/spectrum.min.js"></script>
        <script src="libs/clockpicker/bootstrap-clockpicker.min.js"></script>
        <script src="libs/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <!-- Init js-->
        <script src="js/pages/kanban.init.js"></script>
        <script src="js/pages/form-pickers.init.js"></script>

        <!-- App js -->
        <script src="js/app.min.js"></script>
        
    </body>
</html>