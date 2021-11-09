<%-- 
    Document   : tran_post
    Created on : 21-10-2021, 10:55:24
    Author     : nguyenbamang
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transactin History Page</title>
        <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
        <!-- endinject -->
        <!-- plugin css for this page -->
        <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="../css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="../images/favicon.png" />

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
    </head>
    <body>
        <div class="container-scroller">
            <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-12 stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Recharge History Management</li>
                                        </ol>
                                    </nav>
                                    <h2 class="card-body" style="text-align: center;">Recharge history List</h2>
                                    <div class="alert alert-danger alert-dismissible fade show" id="error" role="alert" style="display: none ">
                                        <strong>Fail Search because end date is smaller than start date !</strong> Please wait check out again!!
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <br>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <input style="border: 1px solid rgb(177, 172, 172);
                                                               color: #9ca3af;
                                                               border-left: 1px solid #d1d5db" id="startdate" placeholder="Start Date" />
                                                    </div>
                                                    <div class="col-md-4">
                                                        <input style="border: 1px solid rgb(177, 172, 172);
                                                               color: #9ca3af;
                                                               border-left: 1px solid #d1d5db ; float: right;" id="enddate" placeholder="End Date" />
                                                    </div>
                                                    <script>
                                                        $('#startdate').datepicker({
                                                            uiLibrary: 'bootstrap4'
                                                        });
                                                        $('#enddate').datepicker({
                                                            uiLibrary: 'bootstrap4'
                                                        });
                                                    </script>
                                                    <div class="col-md-4">
                                                        <button id="getdate" style="height:2.875rem" class="btn btn-primary" ><i class="mdi mdi-magnify"></i></button> 
                                                        <button id="cancledate" style="height:2.875rem;display: none" class="btn btn-danger" >Cancle</button> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                <div class="btn-group" style="height:2.875rem">
                                                    <button type="button" id="top3" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                        Top 3 User Buy
                                                    </button>
                                                    <div id="top" class="dropdown-menu">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <button type="button" style="height:2.875rem" class="btn btn-secondary" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus
                                                        sagittis lacus vel augue laoreet rutrum faucibus.">
                                                    Number of pakcet
                                                </button>
                                            </div>
                                            <div style="float: right;" class="col-md-4" >
                                                <button style="height:2.875rem" type="button" class="btn btn-facebook" data-container="body" 
                                                        data-toggle="popover" data-placement="top" id="orther"
                                                        data-content="">
                                                    Other information
                                                </button>
                                            </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <br>
                                    <div class="row" style="margin-top: 4px;margin-left:1px">
                                        <ul class="nav">
                                            <li class="nav-item">
                                                <a class="nav-link disabled">Quickly Serach: </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="1day" href="#">1 day ago</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="1week" href="#">1 week ago</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="1month" href="#">1 month ago</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" style="display: none" id="refesh" href="#">Refesh</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="container table-responsive-xl">
                                        <table id="example" class="table table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>WalletID</th>
                                                    <th>PostID</th>
                                                    <th>Create Date</th>
                                                    <th>Packet</th>
                                                    <th>Price</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:if test="${empty requestScope['listTran']}">
                                                    <jsp:forward page = "/TransactionController?ac=view" />
                                                </c:if>
                                                <c:forEach items="${listTran}" var = "x" >
                                                    <tr>
                                                        <td>${x.getTransactionID()}</td>
                                                        <td>${x.getWalletID()}</td>
                                                        <td>${x.getPostID()}</td><!-- comment -->
                                                        <td>${x.getCreateDate()}, ${x.getCreateHour()} </td><!-- comment -->
                                                        <td>${x.getPacket()}</td><!-- comment -->
                                                        <td>${x.getPrice()}</td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>WalletID</th>
                                                    <th>PostID</th>
                                                    <th>Create Date</th>
                                                    <th>Packet</th>
                                                    <th>Price</th>
                                                </tr>
                                            </tfoot>
                                        </table>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="../inc/plugins.jsp" %>
    </body>
</html>