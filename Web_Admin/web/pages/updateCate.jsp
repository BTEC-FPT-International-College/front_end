<%-- 
    Document   : updateCate
    Created on : 21-10-2021, 10:55:37
    Author     : nguyenbamang
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Update a category Page</title>
        <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
        <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="shortcut icon" href="../images/favicon.png" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            var img = "";
            $(document).ready(function () {
                            <%
            String username = (String)session.getAttribute("User");
            if(username != null){
                out.print("Hello"+ username);
            }else if(username==null){
//                out.print("cccc");
                %>
                    window.location.replace('../login.jsp')
                        <%
            }
        %>
                $("#cancle").hide();
                var now = new Date().toLocaleString()
                $('#datePicker').val(now);
                let select = $('#getid').text();
                console.log(select)
                $.ajax({
                    url: "../CateController?ac=viewCategory",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $("#upfile").val(obj.CateImage);
                        $('#CateID').val(obj.CateID);
                        $('#CateName').val(obj.CateName);
                        $('#exampleTextarea1').val(obj.CateDes);
                    },
                    error: function () {
                        alert("error");
                    }
                });
                $("#edit").click(function () {
                    $("#img").prop('disabled', false);
                    $("#cancle").show()
                    $("#edit").hide();
                    img = $("#upfile").val()
                })
                $("#cancle").click(function () {
                    $("#img").prop('disabled', true);
                    $("#cancle").hide()
                    $("#edit").show();
                    $("#img").val("");
                    $("#upfile").val(img)
                })
                $("#img").change(function (e) {
                    var y = $("#img").val().replace(/C:\\fakepath\\/i, '')
                    $("#upfile").val(y)
                })
                var d = {};
                $("#add").click(function () {
                    d.CateID = $("#CateID").val();
                    d.CateName = $("#CateName").val()
                    d.CateImage = $('#upfile').val()
                    d.CateDes = $("#exampleTextarea1").val()
                    d.CateUpdateDate = $("#datePicker").val()
                    const da = JSON.stringify(d)
                    console.log(da)
                    $.ajax({
                        url: "../CateController?ac=update",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            if (rs) {
                                $("#show").show();
                            } else {
                                $("#error").show()
                            }
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#x").click(function () {
                    $("#show").hide()
                    //$("#form").trigger("reset");
                    //$("#add").prop('disabled', true);
                    //$("#check").hide()
                })
                $("#chuyen").click(function () {
                    $("#show").hide()
                    //$("#form").trigger("reset");
                    //$("#add").prop('disabled', true);
                    //$("#check").text("")
                })
            });
        </script>
    </head>
    <body>
        <div class="container-scroller">
            <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <%@ include file="../inc/plugins.jsp" %>
            <div class="main-panel">        
                <div class="content-wrapper">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                                        <li class="breadcrumb-item"><a href="cate.jsp">Category Management</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Update category</li>
                                    </ol>
                                </nav>
                                <h2 >Update category <%=request.getParameter("id")%> </h2>
                                <h1 id="getid" style="display: none"><%=request.getParameter("id")%></h1>
                                <form class="form-sample" >
                                    <p class="card-description">
                                        Category info
                                    </p>
                                    <div class="modal" tabindex="-1" id="show" role="dialog">
                                        <div class="modal-dialog alert-success" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" style="color:green">Successful Update</h5>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span id="x" aria-hidden="true">&times;</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Do you want to stay on the page or change the page?</p>
                                                    <p>You will move to category management page</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button id="chuyen" type="button" class="btn btn-warning"><i class="mdi mdi-close"></i>Stay</button>
                                                    <a href="cate.jsp"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="alert alert-danger alert-dismissible fade show" id="error" role="alert" style="display: none">
                                        <strong>Fail Update!</strong> Please wait check out again!!
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Category ID</label> 
                                                <span id="check">
                                                </span>
                                                <div class="input-group">
                                                    <div class="input-group-prepend bg-transparent" >
                                                        <div class="input-group-text" style="background-color: #ed1607 ;border-color: #ed1607;display: block">
                                                            <i class="mdi mdi-key-variant "></i>
                                                        </div>
                                                    </div>
                                                    <input type="text" id="CateID" name="id" class="form-control" style="border-left-color: #ed1607 "  placeholder="Enter Category ID " readonly="true" />

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Category Name</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend bg-transparent">
                                                        <span class="input-group-text" style="background-color: #ed1607 ;border-color: #ed1607">
                                                            <i class="mdi mdi-format-text "></i>
                                                        </span>
                                                    </div>
                                                    <input type="text" id="CateName" name="name" class="form-control"style="border-color:#1c1b1b;border-left-color: #ed1607 " placeholder="Enter Category Name" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Image</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend bg-transparent">
                                                        <span class="input-group-text" style="background-color: #ed1607 ;border-color: #ed1607">
                                                            <i class="mdi mdi-file-image "></i>
                                                        </span>
                                                    </div>
                                                    <input type="file" class="form-control file-upload-info" id="img" disabled="true" name="file" placeholder="Upload Image"><br/>
                                                    <input style="display: none" type="text" class="form-control file-upload-info" id="upfile" name="upfile">
                                                    <span class="input-group-append">
                                                        <button id="edit" class="file-upload-browse btn btn btn-outline-danger" type="button"><i class="mdi mdi-border-color"></i>Edit</button>
                                                        <button id="cancle" class="file-upload-browse btn btn-primary" type="button"><i class="mdi mdi-close-box-outline"></i>Cancle</button>
                                                    </span>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Description</label>
                                                <div class="input-group">
                                                    <div class="input-group-prepend bg-transparent">
                                                        <span class="input-group-text" style="background-color: #ed1607 ;border-color: #ed1607">
                                                            <i class="mdi mdi-alert-circle "></i>
                                                        </span>
                                                    </div>

                                                    <textarea class="form-control" id="exampleTextarea1" style="border-color:#1c1b1b;border-left-color: #ed1607 " name="description" placeholder="Enter Category Description" rows="4"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row" style="display:none ">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Update Date</label>
                                                <div class="col-sm-9">
                                                    <input type="text" readonly="true" id="datePicker" name="update" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: right;">
                                       <input id="add" type="button" value="Update" class="btn btn-primary mr-2" />
                                        <button class="btn btn-light">Reset</button>
                                        <a href="cate.jsp" class="btn btn-danger">Cancle</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- plugins:js -->
    <%@ include file="../inc/plugins.jsp" %>
</body>
</html>