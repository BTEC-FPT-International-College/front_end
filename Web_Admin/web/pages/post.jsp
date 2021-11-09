<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Posts Management Page</title>
  <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../images/favicon.png" />
</head>

<body>
  <!-- partial:partials/_navbar.html -->
  <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <div class="navbar-brand-wrapper d-flex justify-content-center">
      <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
        <a class="navbar-brand brand-logo" href="../index.html"><img src="../images/logo.png" alt="logo" /></a>
        <a class="navbar-brand brand-logo-mini" href="../index.html"><img src="../images/logo.png" alt="logo" /></a>
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-sort-variant"></span>
        </button>
      </div>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
      <ul class="navbar-nav mr-lg-4 w-100">
      </ul>
      <ul class="navbar-nav navbar-nav-right">
        <li class="nav-item dropdown mr-1">
          <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center"
            id="messageDropdown" href="#" data-toggle="dropdown">
            <i class="mdi mdi-message-text mx-0"></i>
            <span class="count"></span>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="messageDropdown">
            <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
          </div>
        </li>
        <li class="nav-item dropdown mr-4">
          <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center notification-dropdown"
            id="notificationDropdown" href="#" data-toggle="dropdown">
            <i class="mdi mdi-bell mx-0"></i>
            <span class="count"></span>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="notificationDropdown">
            <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
          </div>
        </li>
        <li class="nav-item nav-profile dropdown">
          <a class="nav-link dropdown-toggle" href="../index.html" data-toggle="dropdown" id="profileDropdown">
            <img src="../images/faces/face5.jpg" alt="profile" />
            <span class="nav-profile-name">Admin</span>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
            <a class="dropdown-item">
              <i class="mdi mdi-settings text-primary"></i>
              Settings
            </a>
            <a class="dropdown-item">
              <i class="mdi mdi-logout text-primary"></i>
              Logout
            </a>
          </div>
        </li>
      </ul>
      <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
        data-toggle="offcanvas">
        <span class="mdi mdi-menu"></span>
      </button>
    </div>
  </nav>
  <!-- partial -->
  <div class="container-fluid page-body-wrapper">
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
      <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="../index.html">
            <i class="mdi mdi-home menu-icon"></i>
            <span class="menu-title">Home</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="transaction_history.html">
            <i class="mdi mdi-audiobook"></i>
            <span class="menu-title" style="margin-left: 20px;">Transaction history </span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user.html">
            <i class="mdi mdi-account"></i>
            <span class="menu-title" style="margin-left: 20px;">User Management</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="collapse" href="#aut" aria-expanded="false" aria-controls="aut">
            <i class="mdi mdi-account menu-icon"></i>
            <span class="menu-title">Supervisor Management</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="aut">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="supervisor.html"> View </a></li>
              <li class="nav-item"> <a class="nav-link" href="addSuppervisor.html"> Add </a></li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
            <i class="mdi mdi-bitbucket"></i>
            <span class="menu-title" style="margin-left: 20px;">Category Management</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="auth">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="cate.html"> View </a></li>
              <li class="nav-item"> <a class="nav-link" href="addCate.html"> Add </a></li>
            </ul>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="collapse" href="#a" aria-expanded="false" aria-controls="a">
            <i class="mdi mdi-file-document-box-outline menu-icon"></i>
            <span class="menu-title">User'Post Management</span>
            <i class="menu-arrow"></i>
          </a>
          <div class="collapse" id="a">
            <ul class="nav flex-column sub-menu">
              <li class="nav-item"> <a class="nav-link" href="post.html"> View </a></li>
              <li class="nav-item"> <a class="nav-link" href="tran_post.html"> Transaction history </a></li>
            </ul>
          </div>
        </li>
      </ul>
    </nav>
    <div class="main-panel">
      <div class="content-wrapper">
        <div class="row">
          <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
              <div class="card-body">
                <h2 style="text-align: center;">List Post</h2>
                <br>
                <div class="row">
                  <div class="col-md-3">
                    <div class="form-check form-check-success">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" >
                        Read
                      </label>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-check form-check-danger">
                      <label class="form-check-label">
                        <input type="checkbox" class="form-check-input" >
                        Unread
                      </label>
                    </div>
                  </div>
                  <div  class="col-md-6">
                    <div class="input-group" >
                      <div class="form-outline" style="width: 100%;">
                        <input type="search" id="form1" placeholder="Search now" class="form-control" />
                      </div>
                    </div>
                  </div>
                </div>
                <br>
                <div class="table-responsive">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>ID</th>
                        <th>User</th>
                        <th>Category</th>
                        <th>Create Day</th>
                        <th>Status</th>
                        <th>
                          View detail
                        </th>
                        <th>
                          Delete
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>Jacob</td>
                        <td></td>
                        <td></td>
                        <td>Photoshop</td>
                        <td><label class="badge badge-success">Read</label></td>
                        <td>                          
                          <a href="viewDetailPost.html" class="btn btn-primary a-btn-slide-text">
                          <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                          <i class="mdi mdi-eye"></i>
                          <span> <strong> View</strong></span>            
                          </a>
                        </td>
                        <td>
                          <a href="#" class="btn btn-danger a-btn-slide-text">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            <i class="mdi mdi-delete"></i>
                             <span><strong>Delete</strong></span>            
                         </a>
                        </td>
                      </tr>
                      <tr>
                        <td>Messsy</td>
                        <td>Flash</td>
                        <td></td>
                        <td></td>
                        <td><label class="badge badge-danger">Unred</label></td>
                        <td>                          
                          <a href="viewDetailPost.html" class="btn btn-primary a-btn-slide-text">
                          <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                          <i class="mdi mdi-eye"></i>
                          <span> <strong> View</strong></span>            
                          </a>
                        </td>
                        <td>
                          <a href="#" class="btn btn-danger a-btn-slide-text">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            <i class="mdi mdi-delete"></i>
                             <span><strong>Delete</strong></span>            
                         </a>
                        </td>
                      </tr>
                      <tr>
                        <td>Peter</td>
                        <td>After effects</td>
                        <td></td>
                        <td></td>
                        <td><label class="badge badge-success">Read</label></td>
                        <td>                          
                          <a href="viewDetailPost.html" class="btn btn-primary a-btn-slide-text">
                          <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                          <i class="mdi mdi-eye"></i>
                          <span> <strong> View</strong></span>            
                          </a>
                        </td>
                        <td>
                          <a href="#" class="btn btn-danger a-btn-slide-text">
                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                            <i class="mdi mdi-delete"></i>
                             <span><strong>Delete</strong></span>            
                         </a>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- plugins:js -->
    <script src="../vendors/base/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page-->
    <script src="../vendors/chart.js/Chart.min.js"></script>
    <script src="../vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="../vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <!-- End plugin js for this page-->
    <!-- inject:js -->
    <script src="../js/off-canvas.js"></script>
    <script src="../js/hoverable-collapse.js"></script>
    <script src="../js/template.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="../js/dashboard.js"></script>
    <script src="../js/data-table.js"></script>
    <script src="../js/jquery.dataTables.js"></script>
    <script src="../js/dataTables.bootstrap4.js"></script>
    <!-- End custom js for this page-->
</body>

</html>