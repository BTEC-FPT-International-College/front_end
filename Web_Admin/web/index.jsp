<%-- 
    Document   : Index
    Created on : 21-10-2021, 10:11:42
    Author     : nguyenbamang
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Admin Home Page</title>
        <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="images/favicon.png" />
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
         <script>
             $(document).ready(function(){
                 $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[1, "desc"]]
                 });
             })
         </script>
    </head>
    <body>
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="navbar-brand-wrapper d-flex justify-content-center">
                <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
                    <a class="navbar-brand brand-logo" href="index.html"><img src="images/logo.png" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo.png" alt="logo" /></a>
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
                        <a class="nav-link dropdown-toggle" href="index.html" data-toggle="dropdown" id="profileDropdown">
                            <img src="images/faces/face5.jpg" alt="profile" />
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
                        <a class="nav-link" href="index.jsp">
                            <i class="mdi mdi-home menu-icon"></i>
                            <span class="menu-title">Home</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/recharge_history.jsp">
                            <i class="mdi mdi-history"></i>
                            <span class="menu-title" style="margin-left: 20px;">Recharge history </span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pages/user.jsp">
                            <i class="mdi mdi-account"></i>
                            <span class="menu-title" style="margin-left: 20px;">User Management</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#aut" aria-expanded="false" aria-controls="auth">
                            <i class="mdi mdi-account menu-icon"></i>
                            <span class="menu-title">Supervisor Management</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="aut">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"> <a class="nav-link" href="pages/suppervisor.jsp"> View </a></li>
                                <li class="nav-item"> <a class="nav-link" href="pages/addSuppervisor.jsp"> Add </a></li>
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
                                <li class="nav-item"> <a class="nav-link" href="pages/cate.jsp"> View </a></li>
                                <li class="nav-item"> <a class="nav-link" href="pages/addCate.jsp"> Add </a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="collapse" href="#a" aria-expanded="false" aria-controls="auth">
                            <i class="mdi mdi-file-document-box-outline menu-icon"></i>
                            <span class="menu-title" >User'Post Management</span>
                            <i class="menu-arrow"></i>
                        </a>
                        <div class="collapse" id="a">
                            <ul class="nav flex-column sub-menu">
                                <li class="nav-item"> <a class="nav-link" href="pages/post.jsp"> View </a></li>
                                <li class="nav-item"> <a class="nav-link" href="pages/tran_post.jsp">Transaction history </a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </nav>
            <!-- partial -->
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-12 grid-margin">
                            <div class="d-flex justify-content-between flex-wrap">
                                <div class="d-flex align-items-end flex-wrap">
                                    <div class="mr-md-3 mr-xl-5">
                                        <h2>Welcome back Admin</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body dashboard-tabs p-0">
                                    <ul class="nav nav-tabs px-4" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" id="overview-tab" data-toggle="tab" role="tab" aria-controls="overview"
                                               aria-selected="true">Overview</a>
                                        </li>
                                    </ul>
                                    <div class="tab-content py-0 px-0">
                                        <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview-tab">
                                            <div class="d-flex flex-wrap justify-content-xl-between">
                                                <div
                                                    class="d-none d-xl-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                    <i class="mdi mdi-calendar-heart icon-lg mr-3 text-primary"></i>
                                                    <div class="d-flex flex-column justify-content-around">
                                                        <small class="mb-1 text-muted">Date</small>
                                                        <div class="dropdown">
                                                            <a class="btn btn-secondary dropdown-toggle p-0 bg-transparent border-0 text-dark shadow-none font-weight-medium"
                                                               href="#" role="button" id="dropdownMenuLinkA" data-toggle="dropdown"
                                                               aria-haspopup="true" aria-expanded="false">
                                                                <h5 class="mb-0 d-inline-block">Now</h5>
                                                            </a>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLinkA">
                                                                <a class="dropdown-item" href="#">12 Aug 2018</a>
                                                                <a class="dropdown-item" href="#">22 Sep 2018</a>
                                                                <a class="dropdown-item" href="#">21 Oct 2018</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div
                                                    class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                    <i class="mdi mdi-currency-usd mr-3 icon-lg text-danger"></i>
                                                    <div class="d-flex flex-column justify-content-around">
                                                        <small class="mb-1 text-muted">Revenue</small>
                                                        <h5 class="mr-2 mb-0">$577545</h5>
                                                    </div>
                                                </div>
                                                <div
                                                    class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                    <i class="mdi mdi-account mr-3 icon-lg text-success"></i>
                                                    <div class="d-flex flex-column justify-content-around">
                                                        <small class="mb-1 text-muted">Total User</small>
                                                        <h5 class="mr-2 mb-0">9833</h5>
                                                    </div>
                                                </div>
                                                <div
                                                    class="d-flex border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                    <i class="mdi mdi-bulletin-board mr-3 icon-lg text-warning"></i>
                                                    <div class="d-flex flex-column justify-content-around">
                                                        <small class="mb-1 text-muted">Total Post</small>
                                                        <h5 class="mr-2 mb-0">22337</h5>
                                                    </div>
                                                </div>
                                                <div
                                                    class="d-flex py-3 border-md-right flex-grow-1 align-items-center justify-content-center p-3 item">
                                                    <i class="mdi mdi-bulletin-board mr-3 icon-lg text-danger"></i>
                                                    <div class="d-flex flex-column justify-content-around">
                                                        <small class="mb-1 text-muted">Top Post</small>
                                                        <h5 class="mr-2 mb-0">7</h5>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Total Revenue by month</p>
                                    <div id="cash-deposits-chart-legend" class="d-flex justify-content-center pt-3"></div>
                                    <canvas id="monthChar" style="width:100%;max-width:600px"></canvas>
                                    <script>
                                        var d = new Date();
                                        let getMonth = d.getMonth()
                                        var xValues = [];
                                        for (let i = 0; i <= getMonth; i++) {
                                            xValues.push("M" + (i + 1))
                                        }
                                         var yValues = [];
                                        <c:if test="${empty requestScope['listMonth']}">
                                                    <jsp:forward page = "MainControllers?ac=viewMonth" />
                                                </c:if>
                                               <c:forEach items="${listMonth}" var = "x" >
                                                    yValues.push(${x.getAmount()})
                                                </c:forEach>
                                        console.log(yValues)
                                        var barColors = [];
                                        for (let i = 0; i < getMonth; i++) {
                                            const randomColor = Math.floor(Math.random() * 16777215).toString(16);
                                            barColors.push('#' + randomColor)
                                        }
                                        new Chart("monthChar", {
                                            type: "bar",
                                            data: {
                                                labels: xValues,
                                                datasets: [{
                                                        backgroundColor: barColors,
                                                        data: yValues
                                                    }]
                                            },
                                            options: {
                                                legend: {display: false},
                                                title: {
                                                    display: true,
                                                    text: "Total Veneue"
                                                }
                                            }
                                        });
                                    </script>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Total Revenue by yearr</p>
                                    <div id="cash-deposits-chart-legend" class="d-flex justify-content-center pt-3"></div>
                                    <canvas id="YearChart" style="width:100%;max-width:600px"></canvas>
                                    <script>
                                        var d = new Date();
                                        let getYear = d.getFullYear()
                                        var xValues = [];
                                        for(let i = getYear;i>getYear-6;i--){
                                            xValues.push(i)
                                        }
                                        console.log(xValues)
                                        var yValues = [300, 4229, 4114, 3457];
                                        var barColors = ["red", "green", "blue", "yellow"];

                                        new Chart("YearChart", {
                                            type: "bar",
                                            data: {
                                                labels: xValues,
                                                datasets: [{
                                                        backgroundColor: barColors,
                                                        data: yValues
                                                    }]
                                            },
                                            options: {
                                                legend: {display: false},
                                                title: {
                                                    display: true,
                                                    text: "Total Veneue"
                                                }
                                            }
                                        });
                                    </script>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <p class="card-title">Recent Purchases</p>
                                    <div class="table-responsive">
                                        <table id="dtOrderExample" class="table">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Create Date</th>
                                                    <th>WalletID</th>
                                                    <th>User</th>
                                                    <th>Bank Acount</th>
                                                    <th>Bank</th>
                                                    <th>Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:if test="${empty requestScope['listR']}">
                                                    <jsp:forward page = "MainControllers?ac=view" />
                                                </c:if>
                                                <c:forEach items="${listR}" var = "x" >
                                                    <tr>
                                                        <td>${x.getRechargeID()}</td>
                                                        <td>${x.getCreateDate()} ${x.getCreateHourl()}</td>
                                                        <td><a href="viewDetailRecharge.jsp?id=${x.getWalletID()}">${x.getWalletID()}</a></td><!-- comment -->
                                                        <td><a href="viewDetailUser.jsp?id=${x.getUserID()}">${x.getUserID()}</a></td><!-- comment -->
                                                        <td>${x.getBankAccount()}</td><!-- comment -->
                                                        <td>${x.getBank()}</td>
                                                        <td>${x.getAmount()}</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <!-- container-scroller -->

                <!-- plugins:js -->
                <script src="vendors/base/vendor.bundle.base.js"></script>
                <!-- endinject -->
                <!-- Plugin js for this page-->
                <script src="vendors/chart.js/Chart.min.js"></script>
                <script src="vendors/datatables.net/jquery.dataTables.js"></script>
                <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
                <!-- End plugin js for this page-->
                <!-- inject:js -->
                <script src="js/off-canvas.js"></script>
                <script src="js/hoverable-collapse.js"></script>
                <script src="js/template.js"></script>
                <!-- endinject -->
                <!-- Custom js for this page-->
                <script src="js/dashboard.js"></script>
                <script src="js/data-table.js"></script>
                <script src="js/jquery.dataTables.js"></script>
                <script src="js/dataTables.bootstrap4.js"></script>
                <!-- End custom js for this page-->
                </body>

                </html>