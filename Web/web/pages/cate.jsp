<%-- 
    Document   : cate
    Created on : 21-10-2021, 10:55:01
    Author     : nguyenbamang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category Management Page</title>
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
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />

        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css"></script>
        <script>
            $(document).ready(function () {

                // Cấu hình các nhãn phân trang
                $('#example').dataTable({
                    "language": {
                        "sProcessing": "Processing...",
                        "sLengthMenu": "View _MENU_ item",
                        "sZeroRecords": "No matching lines found",
                        "sInfo": "Viewing _START_ to _END_ of total _TOTAL_ entries",
                        "sInfoEmpty": "Viewing 0 to 0 out of 0 entries",
                        "sInfoFiltered": "(filtered from _MAX_ entries)",
                        "sInfoPostFix": "",
                        "sSearch": "Search now:",
                        "sUrl": "",
                        "oPaginate": {
                            "sFirst": "Head",
                            "sPrevious": "Previous",
                            "sNext": "Nex",
                            "sLast": "End"
                        }
                    }
                });

            });
        </script>
        <style>
            .a:focus {
                box-shadow: none;
                border: none
            }
        </style>
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
                                    <h2 class="card-body" style="text-align: center;">Category Management</h2>
                                    <div class="container">
                                        <table id="example" class="table table-striped table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>
                                                        ID
                                                    </th>
                                                    <th>
                                                        Name
                                                    </th>
                                                    <th>
                                                        Description
                                                    </th>
                                                    <th>
                                                        Image
                                                    </th>
                                                    <th>
                                                        View detail
                                                    </th>
                                                    <th>
                                                        Update
                                                    </th>
                                                    <th>
                                                        Delete
                                                    </th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Tiger Nixon</td>
                                                    <td>System Architect</td>
                                                    <td>Edinburgh</td>
                                                    <td>61</td>
                                                    <td> <a href="viewDetailCate.jsp" class="btn btn-primary a-btn-slide-text">
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                            <i class="mdi mdi-eye"></i>
                                                            <span> <strong> View</strong></span>            
                                                        </a></td>
                                                    <td><a href="updateCate.jsp" class="btn btn-warning a-btn-slide-text">
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                            <i class="mdi mdi-border-color"></i>
                                                            <span> <strong> Update</strong></span>            
                                                        </a></td>
                                                    <td><a href="#" class="btn btn-danger a-btn-slide-text">
                                                            <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
                                                            <i class="mdi mdi-delete"></i>
                                                            <span><strong>Delete</strong></span>            
                                                        </a></td>
                                                </tr>

                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>
                                                        ID
                                                    </th>
                                                    <th>
                                                        Name
                                                    </th>
                                                    <th>
                                                        Description
                                                    </th>
                                                    <th>
                                                        Image
                                                    </th>
                                                    <th>
                                                        View detail
                                                    </th>
                                                    <th>
                                                        Update
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
    </div>
    <%@ include file="../inc/plugins.jsp" %>
</body>
</html>