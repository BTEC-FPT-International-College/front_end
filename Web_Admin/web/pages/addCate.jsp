<%-- 
    Document   : addCate
    Created on : 21-10-2021, 10:54:36
    Author     : nguyenbamang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Add a new category Page</title>
        <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
        <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <link rel="stylesheet" href="../css/style.css">
        <link rel="shortcut icon" href="../images/favicon.png" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>

            var id = "";
            $(document).ready(function () {
                $('[data-toggle="popover"]').popover()
                $('.popover-dismiss').popover({
                    trigger: 'focus'
                })
                var now = new Date();
                $('#datePicker').val(now.toLocaleString());
                $('#CateID').keyup(function (e) {
                    let select = e.target.value;
                    console.log(select)
                    if (select.length > 5) {
                        $("#check").text("must be less than 5 characters")
                        $("#check").css({"color": "red", "margin-left": "10px"});
                        $("#add").prop('disabled', true);
                    } else {
                        $.ajax({
                            url: "../CateController?ac=checkIDempty",
                            method: "POST",
                            data: {get: select},
                            success: function (data) {
                                let obj = $.parseJSON(data);
                                console.log(obj)
                                if (obj) {
                                    $("#check").text("ID already")
                                    $("#check").css({"color": "red", "margin-left": "10px"});
                                    $("#add").prop('disabled', true);

                                } else {
                                    $("#check").text("ID valid")
                                    $("#check").css({"color": "green", "margin-left": "10px"});
                                    $("#add").prop('disabled', false);
                                }
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    }

                });
                var d = {};
                $("#add").click(function () {
                    d.CateID = $("#CateID").val();
                    d.CateName = $("#CateName").val()
                    d.CateImage = $('#formFileDisabled').val().replace(/C:\\fakepath\\/i, '')
                    d.CateDes = $("#exampleTextarea1").val()
                    d.CateCreateDate = $("#datePicker").val()
                    const da = JSON.stringify(d)
                    console.log(da)
                    $.ajax({
                        url: "../CateController?ac=add",
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
                    $("#form").trigger("reset");
                    $("#add").prop('disabled', true);
                    $("#check").hide()
                })
                $("#chuyen").click(function () {
                    $("#show").hide()
                    $("#form").trigger("reset");
                    $("#add").prop('disabled', true);
                    $("#check").text("")
                })
            });
        </script>
    </head>
    
    <body>
          <%
            String username = (String)session.getAttribute("User");
            if(username != null){
                out.print("Hello"+ username);
            }else if(username==null){
//                out.print("cccc");
                request.setAttribute("error", "Bạn cần phải đăng nhập!");
                response.sendRedirect("../login.jsp");
            }
        %>

        <div class="container-scroller">
            <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <!-- partial -->
            <div class="main-panel">        
                <div class="content-wrapper">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                                        <li class="breadcrumb-item"><a href="cate.jsp">Category Management</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Add new a category</li>
                                    </ol>
                                </nav>
                                <br>
                                <a tabindex="0" class="btn btn-lg btn-danger" style="float: right" role="button" data-toggle="popover" data-trigger="focus" 
                                   title="Guidance for add category" 
                                   data-content="1. ID no more than 5 characters  <br />   
                                   2. Name must not exceed 45 characters  <br />  
                                   3. Image file name should not exceed 45 characters  <br />  
                                   4. Descrition should not describe too long"
                                   data-html="true">
                                    Guidance</a>
                                <h2>Add a new category </h2>
                                <form class="form-sample" id="form">
                                    <p class="card-description">
                                        Category info
                                    </p>
                                    <div class="modal" tabindex="-1" id="show" role="dialog">
                                        <div class="modal-dialog alert-success" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" style="color:green">Successful Add</h5>
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
                                        <strong>Fail Add!</strong> Please wait check out again and read guidance!!
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
                                                        <div class="input-group-text" style="background-color: #ed1607 ;border-color: #ed1607">
                                                            <i class="mdi mdi-key-variant "></i>
                                                        </div>
                                                    </div>
                                                    <input type="text" id="CateID" name="id" class="form-control" style="border-color:#686868;border-left-color: #ed1607 "  placeholder="Enter Category ID " required="true" />

                                                </div>

                                            </div>

                                            <small id="passwordHelpInline" class="text-muted">
                                                ID must be less than 5 characters and should be start widt CTG
                                            </small>
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
                                            <small id="passwordHelpInline" class="text-muted">
                                                Name must be less than 45 characters 
                                            </small>
                                        </div>
                                    </div>
                                    <br>
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
                                                    <input type="file" class="form-control file-upload-info" id="formFileDisabled" style="border-color:#1c1b1b;border-left-color: #ed1607 "  name="file" placeholder="Upload Image"><br/>
                                                </div>
                                                <br>
                                                <small id="passwordHelpInline" class="text-muted">
                                                    File name must be less than 45 characters include filename.format
                                                </small>
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
                                    <div class="row" style="display: none ">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Create Date</label>
                                                <div class="col-sm-9">
                                                    <input type="text" readonly="true" id="datePicker" name="create" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: right;">
                                        <input id="add" type="button" disabled="true" value="Add" class="btn btn-primary mr-2" />
                                        <button class="btn btn-light">Reset</button>
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