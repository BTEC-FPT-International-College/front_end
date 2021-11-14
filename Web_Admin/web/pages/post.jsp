<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Management page</title>
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

        <script>
            $(document).ready(function () {
                var val = [];
                $(".selector").change(function () {
                    if (this.checked) {
                        console.log($(this).val())
                        val.push($(this).val());
                    }
                    console.log(val)
                });
                $('#save_value').click(function () {
                    var va = [];
                    $(':checkbox:checked').each(function (i) {
                        va[i] = $(this).val();
                    });
                    console.log(va)
                });
                $(document).ready(function () {
                    $('#dtOrderExample').DataTable({
                        "order": [[3, "desc"]]
                    });
                    $('.dataTables_length').addClass('bs-select');
                    $(".1").addClass("badge-danger")
                    $(".1").text("Unread")
                    $(".0").text("Read")
                    $(".0").addClass("badge-success")
                });
            })
        </script>
    </head>
    <body>
        <div class="container-scroller">
            <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-lg-12 grid-margin stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <h2 style="text-align: center;">List Post</h2>
                                    <div class="modal" tabindex="-1" id="show" role="dialog" style="display: none ">
                                        <div class="modal-dialog alert-success" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" style="color:green">Successful Delete</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Please wait! Reloading the page</p>
                                                    <div class="spinner-grow text-primary" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-secondary" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-success" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-danger" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-warning" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-info" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-light" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                    <div class="spinner-grow text-dark" role="status">
                                                        <span class="sr-only">Loading...</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="alert alert-danger alert-dismissible fade show" id="error" role="alert" style="display: none ">
                                        <strong>Fail Deelete!</strong> Please wait check out again!!
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <br>
                                    <div class="row">
                                        <div class="col-md-3">
                                            View by post status:
                                            <div class="form-check form-check-success">
                                                <label class="form-check-label">
                                                    <input name="selector" type="checkbox" class="form-check-input" value="read" >
                                                    Read
                                                </label>
                                            </div>
                                            <div class="form-check form-check-danger">
                                                <label class="form-check-label">
                                                    <input name="selector" type="checkbox" class="form-check-input" value="unread" >
                                                    Unread
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            View by Category:
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="selector" type="checkbox" class="form-check-input" value="Buy" >
                                                    Buy
                                                </label>
                                            </div>
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="selector" type="checkbox" class="form-check-input" value="Rent" >
                                                    Rent
                                                </label>
                                            </div>
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="selector" type="checkbox" class="form-check-input" value="Project" >
                                                    Project
                                                </label>
                                            </div>
                                        </div>
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
                                    </div>
                                    <br>
                                    <div class="table-responsive">

                                        <table id="dtOrderExample" class="table table-striped" width="100%">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>User</th>
                                                    <th>Category</th>
                                                    <th>Create Date</th>
                                                    <th>End Date</th>
                                                    <th>Status</th>
                                                    <th>Check</th>
                                                    <th>
                                                        View detail
                                                    </th>
                                                    <th>
                                                        Delete
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:if test="${empty requestScope['listPost']}">
                                                <jsp:forward page = "/PostController?ac=view" />
                                            </c:if>
                                                <c:forEach items="${listPost}" var = "x" >
                                                    <tr>
                                                    <td>${x.getPostID()}</td>
                                                    <td>${x.getUserID()}</td>
                                                    <td>${x.getCategory()}</td>
                                                    <td>${x.getCreate_Date()}</td>
                                                    <td>${x.getEndDate()}</td>
                                                    <td>${x.getStatus()}</td>
                                                    <td><label class="badge ${x.getReadUnread()}">${x.getReadUnread()}</label></td>
                                                    <td>                          
                                                        <a href="viewDetailPost.jsp?id=${x.getPostID()}" class="btn btn-primary a-btn-slide-text">
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                            <i class="mdi mdi-eye"></i>
                                                            <span> <strong> View</strong></span>            
                                                        </a>
                                                    </td>
                                                    <td>
                                                         <div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal${x.getPostID()}"><i class="mdi mdi-delete"></i>Delete</button>
                                                            <div id="my-modal${x.getPostID()}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                                    <div class="modal-content border-0">
                                                                        <div class="modal-body p-0">
                                                                            <div class="card border-0 p-sm-3 p-2 justify-content-center">
                                                                                <div class="card-header pb-0 bg-white border-0 ">
                                                                                    <div class="row">
                                                                                        <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                                                                                    </div>
                                                                                    <p class="font-weight-bold mb-2"> Are you sure you wanna delete ${x.getPostID()} post ?</p>
                                                                                    <p class="text-muted "> This change may affect other data. Be sure !!!</p>
                                                                                </div>
                                                                                <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                                                                                    <div class="row justify-content-end no-gutters">
                                                                                        <div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>
                                                                                        <div class="col-auto"><div class="col-auto"><button title="${x.getPostID()}" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>User</th>
                                                    <th>Category</th>
                                                    <th>Create Date</th>
                                                     <th>End Date</th>
                                                    <th>Status</th>
                                                    <th>
                                                        View detail
                                                    </th>
                                                    <th>
                                                        Delete
                                                    </th>
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