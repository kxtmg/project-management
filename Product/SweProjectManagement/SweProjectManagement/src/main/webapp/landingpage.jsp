<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="com.project.projects.ViewProjects" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.lang.Object" %>

<%@ page import="com.project.tasks.ViewTasks" %>
<%
  // Retrieve the username from the session
  String username = (String) session.getAttribute("username");

  // Create an instance of the ViewProjects
  ViewProjects viewProjects = new ViewProjects();

  // Call the getProjectsForUser method to retrieve the project data
  List<Object[]> projects = viewProjects.getProjectsForUser(username);
%>
<%
  // Instantiate the ViewTasks class
  ViewTasks viewTasks = new ViewTasks();

  // Retrieve tasks for a specific user
  List<Object[]> tasks = viewTasks.getTasksForUser(username);

  boolean noTasks = tasks.isEmpty();
%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8" />
  <title>Home | Project Management</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
  <meta content="Coderthemes" name="author" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- App favicon -->
  <link rel="shortcut icon" href="assets/images/favicon.ico">

  <!-- App css -->
  <link href="css/config/default/bootstrap.min.css" rel="stylesheet" type="text/css" id="bs-default-stylesheet" />
  <link href="css/config/default/app.min.css" rel="stylesheet" type="text/css" id="app-default-stylesheet" />

  <link href="css/config/default/bootstrap-dark.min.css" rel="stylesheet" type="text/css" id="bs-dark-stylesheet" disabled="disabled" />
  <link href="css/config/default/app-dark.min.css" rel="stylesheet" type="text/css" id="app-dark-stylesheet" disabled="disabled" />
  <!--<link href="../src/scss/config/creative/calendar-card.scss" rel="stylesheet"/>-->
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
                                <%= session.getAttribute("username") %> <i class="mdi mdi-chevron-down"></i>
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
            <a href="logout" class="dropdown-item notify-item">
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
        <a href="" class="logo logo-light text-center">
                        <span class="logo-sm">
                            <img src="images/logo-sm.png" alt="" height="22">
                        </span>
          <span class="logo-lg">
                            <img src="images/logo-light.png" alt="" height="50">
                        </span>
        </a>
        <a href="" class="logo logo-dark text-center">
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
                  <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard</a></li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <!-- end page title -->
        <div class="row">
          <div class="col-12">
            <h2 style="text-align: center">Welcome</h2>
            <div style="text-align: center">
              <span id="date-div"></span>
              <script>
                const dateDiv = document.getElementById('date-div');

                function myDateFunction() {
                  const now = new Date();
                  const nowStr = now.toLocaleString('en-US');
                  dateDiv.innerHTML = nowStr;
                }
                setInterval(myDateFunction, 1000);
              </script>
            </div>
          </div>
        </div>
        <p>&nbsp</p>

        <div class="row justify-content-center">
          <div class="col-xl-3 col-md-6">
            <div class="card">
              <div class="card-body">
                <div class="dropdown float-end">
                  <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
                    <i class="mdi mdi-dots-vertical"></i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-end">
                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item">Add reminder</a>
                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item">Delete reminder</a>
                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item">Sort A-Z</a>
                    <!-- item-->
                    <a href="javascript:void(0);" class="dropdown-item">Sort Z-A</a>
                  </div>
                </div>

                <h4 class="header-title mt-0 mb-3"><i class="mdi mdi-notification-clear-all me-1"></i> Upcoming Reminders</h4>

                <ul class="list-group mb-0 user-list">
                  <% if (noTasks) { %>
                  <li class="list-group-item">
                    <span class="text-muted">No upcoming tasks</span>
                  </li>
                  <% } else { %>
                  <% for (Object[] task : tasks) { %>
                  <% String taskStatus = (String) task[5]; %>
                  <% if (!taskStatus.equals("Completed")) { %>
                  <li class="list-group-item">
                    <a href="#" class="user-list-item">
                      <div class="user float-start me-3">
                        <%-- Determine the appropriate circle color based on task status --%>
                        <% if (taskStatus.equals("Pending")) { %>
                        <i class="mdi mdi-circle text-primary"></i>
                        <% } else if (taskStatus.equals("In Progress")) { %>
                        <i class="mdi mdi-circle text-success"></i>
                        <% } else if (taskStatus.equals("Delayed")) { %>
                        <i class="mdi mdi-circle text-pink"></i>
                        <% } else { %>
                        <i class="mdi mdi-circle text-muted"></i>
                        <% } %>
                      </div>
                      <div class="user-desc overflow-hidden">
                        <h5 class="name mt-0 mb-1"><%= task[6] %></h5>
                        <span class="desc text-muted font-12 text-truncate d-block">
                                <%= task[2] %> - <%= task[3] %>
                            </span>
                        <%-- Add the status span --%>
                        <span class="status text-muted font-12">Status: <%= task[5] %></span>
                      </div>
                    </a>
                  </li>
                  <% } %>
                  <% } %>
                  <% } %>
                </ul>
              </div>
            </div>

            <div class="calendar"></div>
          </div><!-- end col -->

          <div class="col-xl-3 col-md-6">
            <div class="card">
              <div class="card-body">

                <h4 class="header-title mt-0 mb-3"><i class="mdi mdi-notification-clear-all me-1"></i> My Projects</h4>

                <ul class="list-group mb-0 user-list">




                  <% if (projects.isEmpty()) { %>
                  <li class="list-group-item">
                    <span href="#" class="user-list-item">
                      <div class="user float-start me-3">
                        <i class="mdi mdi-circle text-muted"></i>
                      </div>
                      <div class="user-desc overflow-hidden">
                        <h5 class="name mt-0 mb-1">No projects found</h5>
                      </div>
                      </span>
                  </li>
                  <a href="#" class="btn btn-primary">Create Project</a>

                  <a href="#" class="btn btn-primary">Join Project</a>
                  <% } else { %>
                  <% for (Object[] project : projects) { %>
                  <li class="list-group-item">
                    <a href="dashboard.jsp?projectID=<%= project[4] %>" class="user-list-item">
                      <div class="user float-start me-3">
                        <i class="mdi mdi-circle text-primary"></i>
                      </div>
                      <div class="user-desc overflow-hidden">
                        <h5 class="name mt-0 mb-1"><%= project[0] %></h5>
                      </div>
                    </a>
                  </li>
                  <% } %>
                  <% } %>
                </ul>
              </div>

            </div>

          </div>
          <!-- end row -->

        </div> <!-- container-fluid -->

      </div> <!-- content -->

      <!-- Footer Start -->
      <footer class="footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-6">
              <script>
                document.write(new Date().getFullYear())
              </script> &copy; Team 1 - CS4840
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
              <input type="checkbox" class="form-check-input" name="color-scheme-mode" value="light" id="light-mode-check" checked />
              <label class="form-check-label" for="light-mode-check">Light Mode</label>
            </div>

            <div class="form-check form-switch mb-1">
              <input type="checkbox" class="form-check-input" name="color-scheme-mode" value="dark" id="dark-mode-check" />
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
              <input type="checkbox" class="form-check-input" name="menus-position" value="fixed" id="fixed-check" checked />
              <label class="form-check-label" for="fixed-check">Fixed</label>
            </div>

            <div class="form-check form-switch mb-1">
              <input type="checkbox" class="form-check-input" name="menus-position" value="scrollable" id="scrollable-check" />
              <label class="form-check-label" for="scrollable-check">Scrollable</label>
            </div>

            <!-- Topbar -->
            <h6 class="fw-medium font-14 mt-4 mb-2 pb-1">Topbar</h6>

            <div class="form-check form-switch mb-1">
              <input type="checkbox" class="form-check-input" name="topbar-color" value="dark" id="darktopbar-check" checked />
              <label class="form-check-label" for="darktopbar-check">Dark</label>
            </div>

            <div class="form-check form-switch mb-1">
              <input type="checkbox" class="form-check-input" name="topbar-color" value="light" id="lighttopbar-check" />
              <label class="form-check-label" for="lighttopbar-check">Light</label>
            </div>

            <div class="d-grid mt-4">
              <button class="btn btn-primary" id="resetBtn">Reset to Default</button>

            </div>

          </div>

        </div>
      </div>

    </div> <!-- end slimscroll-menu-->
  </div>
  <!-- /Right-bar -->

  <!-- Right bar overlay-->
  <div class="rightbar-overlay"></div>

  <!-- Vendor js -->
  <script src="js/vendor.min.js"></script>
  <script src="libs/flot-charts/jquery.flot.js"></script>
  <script src="libs/flot-charts/jquery.flot.time.js"></script>
  <script src="libs/jquery.flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
  <script src="libs/flot-charts/jquery.flot.resize.js"></script>
  <script src="libs/flot-charts/jquery.flot.pie.js"></script>
  <script src="libs/flot-charts/jquery.flot.selection.js"></script>
  <script src="libs/flot-charts/jquery.flot.stack.js"></script>
  <script src="libs/flot-orderbars/js/jquery.flot.orderBars.js"></script>
  <script src="libs/flot-charts/jquery.flot.crosshair.js"></script>


  <!-- knob plugin -->
  <script src="libs/jquery-knob/jquery.knob.min.js"></script>

  <!--Morris Chart-->
  <script src="libs/morris.js06/morris.min.js"></script>
  <script src="libs/raphael/raphael.min.js"></script>

  <!-- jquery knob -->
  <script src="libs/jquery-knob/jquery.knob.min.js"></script>

  <!-- Sparkline charts -->
  <script src="libs/jquery-sparkline/jquery.sparkline.min.js"></script>

  <!-- peity charts -->
  <script src="libs/peity/jquery.peity.min.js"></script>

  <script src="js/pages/chart-sparkline.init.js"></script>

  <!-- Chart JS -->
  <script src="libs/chart.js/Chart.bundle.min.js"></script>

  <!-- Init js -->
  <script src="js/pages/chartjs.init.js"></script>

  <!-- Calendar Init js -->
  <script src="js/pages/calendar.js"></script>

  <!-- init js -->
  <script src="js/pages/flot.init.js"></script>

  <!-- Dashboar init js-->
  <script src="js/pages/dashboard.init.js"></script>


  <!-- App js-->
  <script src="js/app.min.js"></script>


</div></body></html>