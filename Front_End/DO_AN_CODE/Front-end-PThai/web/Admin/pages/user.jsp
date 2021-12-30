<%-- 
    Document   : user.jsp
    Created on : 21-10-2021, 11:01:24
    Author     : nguyenbamang
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html>
<html>
    <head>
          <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>User Management Page</title>
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
                
                $('#dtOrderExample').DataTable({
                        "order": [[6, "desc"]]
                    });
                    $('.dataTables_length').addClass('bs-select');
                $("#show").hide();
                $("#error").hide();
                $(".delete[target='_blank']").click(function () {
                    let select = $(this).attr("title")
                    console.log(select)
                    $.ajax({
                        url: "../SupController?ac=del",
                        method: "POST",
                        data: {get: select},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            if (obj) {
                                $("#show").show();
                                setTimeout(function () {
                                    location.reload()
                                }, 2000);
                            }
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $(".1").css("background-color", "yellow")
            });
        </script>
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
                                <div class="card-body container">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">User Management</li>
                                        </ol>
                                    </nav>
                                    <h2 class="card-body" style="text-align: center;">User Management</h2>
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
                                    <div  class="table-responsive container">
                                        <table id="dtOrderExample" class="table table-striped table-bordered" >
                                            <thead>
                                                <tr>
                                                    <th id="idth">
                                                        ID
                                                    </th>
                                                    <th>
                                                        Fullname
                                                    </th>
                                                    <th>
                                                        Gender
                                                    </th>
                                                    <th>
                                                        Email
                                                    </th>
                                                    <th>
                                                        Phone
                                                    </th>
                                                    <th>
                                                        Create Date
                                                    </th>
                                                    <th>
                                                       Point
                                                    </th>
                                                    <th>
                                                        View detail
                                                    </th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:if test="${empty requestScope['listU']}">
                                                <jsp:forward page = "../../UserControllerAdmin?ac=view" />
                                            </c:if>
                                            <c:forEach items="${listU}" var = "x" >
                                                <tr class="${x.getStatus()}">
                                                    <td>${x.getUserID()}</td>
                                                    <td>${x.getFullName()}</td>
                                                    <td class="${x.getGender()}_gender"></td>
                                                    <td>${x.getEmail()}</td>
                                                    <td>${x.getPhone()}</td>
                                                    <td>${x.getCreateDate()}</td>
                                                    <td>${x.getReward_point()}</td>
                                                    <td>
                                                        <a href="viewDetailUser.jsp?id=${x.getUserID()}" class="btn btn-primary a-btn-slide-text">
                                                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                            <i class="mdi mdi-account-card-details"></i>
                                                            <span> <strong> View</strong></span>            
                                                        </a>
                                                    </td>
                                                    
                                                </tr>
                                            </c:forEach>
                                            </tbody>
                                            <tfoot>
                                                <tr>
                                                    <th>
                                                        ID
                                                    </th>
                                                    <th>
                                                        Fullname
                                                    </th>
                                                    <th>
                                                        Gender
                                                    </th>
                                                    <th>
                                                        Email
                                                    </th>
                                                    <th>
                                                        Phone
                                                    </th>
                                                    <th>
                                                        Create Date
                                                    </th>
                                                    <th>
                                                        Point
                                                    </th>
                                                    <th>
                                                        View detail
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
    <script>
    $(".1_gender").text("Male")
    $(".0_gender").text("Female")
    </script>
    </body>
</html>