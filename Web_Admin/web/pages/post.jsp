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
                                            <input style="float: right" type="button" id="save_value" name="save_value" value="Search" />
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
        </div>
        <%@ include file="../inc/plugins.jsp" %>
    </body>
</html>