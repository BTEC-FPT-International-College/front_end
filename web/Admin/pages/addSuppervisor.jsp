<%-- 
    Document   : addSuppervisor
    Created on : 21-10-2021, 10:54:51
    Author     : nguyenbamang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add a new suppervisor Page</title>
        <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
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
        <script>
             <%
            String username = (String)session.getAttribute("User");
            String role = (String)session.getAttribute("Role");
            if(username == null){
                %>
                 window.location.replace('../../login.jsp');
                 <%
            }else{
                if(role.equals("3")){
%>
                     window.location.replace('../../login.jsp');
                     <%
                }
                }
            
        %>
            $(document).ready(function () {
                $('[data-toggle="popover"]').popover()
                $('.popover-dismiss').popover({
                    trigger: 'focus'
                })
                var now = new Date().toLocaleString();
                $('#datePicker').val(now);
                $("#select").on("mouseover", function (event) {
                    $.ajax({
                        url: "../../SupControllerAdmin?ac=viewCategory",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $.each(rs, function (key, value) {
                                $('#select').append('<option value="' + value.CateID + '">' + value.CateName + '</option>')
                            });
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $(this).off(event);
                });
                $('#supID').keyup(function (e) {
                    let select = e.target.value;
                    console.log(select)
                    if (select.length > 5) {
                        $("#checkid").text("must be less than 5 characters")
                        $("#checkid").css({"color": "red", "margin-left": "10px"});
                        $("#add").prop('disabled', true);
                    } else {
                        $.ajax({
                            url: "../../SupControllerAdmin?ac=checkIDempty",
                            method: "POST",
                            data: {get: select},
                            success: function (data) {
                                let obj = $.parseJSON(data);
                                console.log(obj)
                                if (obj) {
                                    $("#checkid").text("ID already")
                                    $("#checkid").css({"color": "red", "margin-left": "10px"});
                                    $("#add").prop('disabled', true);

                                } else {
                                    $("#checkid").text("ID valid")
                                    $("#checkid").css({"color": "green", "margin-left": "10px"});
                                    $("#add").prop('disabled', false);
                                }
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    }

                });
                $('#phone').keyup(function (e) {
                    let select = e.target.value;
                    console.log(select)
                    if (!phone_validate(select)) {
                        $("#checkphone").text("must be less than 12 characters or is a phone number")
                        $("#checkphone").css({"color": "red", "margin-left": "10px"});
                        $("#add").prop('disabled', true);
                    } else {
                        $("#checkphone").text("Phone Number valid")
                        $("#checkphone").css({"color": "green", "margin-left": "10px"});
                        $("#add").prop('disabled', false);
                        e.preventDefault();
                    }

                });
                $('#email').keyup(function (e) {
                    let select = e.target.value;
                    console.log(select)
                    var re = /^\w+([-+.'][^\s]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;

                    var emailFormat = re.test($("#email").val()); // This return result in Boolean type

                    if (!emailFormat) {
                        $("#checkemail").text("Email is not valid")
                        $("#checkemail").css({"color": "red", "margin-left": "10px"});
                        $("#add").prop('disabled', true);
                    } else {
                        $("#checkemail").text("Email is valid")
                        $("#checkemail").css({"color": "green", "margin-left": "10px"});
                        $("#add").prop('disabled', false);
                    }

                });
                var d = {};
                var c = {};
                $("#add").click(function () {
                    d.UserID = $("#supID").val();
                    d.FullName = $("#supName").val()
                    d.Phone = $('#phone').val()
                    d.Email = $("#email").val()
                    d.Address = $("#address").val()
                    d.Date_of_Birth = $("#datepicker").val();
                    d.Password = $("#pass").val()
                    d.Gender = $('input[name=membershipRadios]:checked', '#myForm').val();
                    d.CreateDate = $("#datePicker").val()
                    const da = JSON.stringify(d)
                    console.log(da)
                    $.ajax({
                        url: "../../SupControllerAdmin?ac=add",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            if (rs) {

                                $.ajax({
                                    url: "../../SupControllerAdmin?ac=getLastIndexSup",
                                    method: "GET",
                                    success: function (data) {
                                        let rs2 = $.parseJSON(data);
                                         c.CategoryID = $('#select option:selected').attr('value');
                                        c.UserID = rs2[0].UserID
                                        console.log(rs2)
                                        console.log(c)

                                        const cate = JSON.stringify(c)
                                         $.ajax({
                                        url: "../../SupControllerAdmin?ac=addtoCate",
                                        method: "POST",
                                         data: {get: cate},
                                         success: function (data) {
                                        let rs1 = $.parseJSON(data);
                                        console.log(rs1)
                                        if (rs1) {
                                            $("#show").show();
                                        } else {
                                            $("#error").show()
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                               
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
                    $("#myForm").trigger("reset");
                    $("#add").prop('disabled', true);
                    $("#checkid").text("")
                    $("#checkemail").text("")
                    $("#checkphone").text("")
                })
            });
            function phone_validate(phno)
            {
                var regexPattern = new RegExp(/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im);    // regular expression pattern
                return regexPattern.test(phno);
            }
        </script>

    </head>
    <body>
        <div class="container-scroller">
            <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="col-12 grid-margin">
                        <div class="card">
                            <div class="card-body">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                                        <li class="breadcrumb-item"><a href="suppervisor.jsp">Suppervisor Management</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Add new a suppervisor</li>
                                    </ol>
                                </nav>
                                <br>
                                <a tabindex="0" class="btn btn-lg btn-danger" style="float: right" role="button" data-toggle="popover" data-trigger="focus" 
                                   title="Guidance for add suppervisor" 
                                   data-content="1. ID no more than 10 characters  <br />   
                                   2. Name must not exceed 100 characters  <br />  
                                   3. Phone numbers under 12 numbers and all numbers <br /> 
                                   4. Emails under 100 characters <br /> 
                                   5. Address less than 200 characters <br /> 
                                   6. Password under 45 characters"
                                   data-html="true">
                                    Guidance</a>
                                <h2>Add a new suppervisor </h2>
                                <form class="form-sample" id="myForm">
                                    <p class="card-description">
                                        Supervisor info
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
                                                    <a href="suppervisor.jsp"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
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
<!--                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">ID</label>
                                                <div class="col-sm-9">
                                                    <input id="supID" type="text" class="form-control" style="border-color:#686868" placeholder="Enter ID" required="true" />
                                                    <small id="checkid">
                                                        ID must be less than 5 characters 
                                                    </small>
                                                </div>
                                            </div>

                                        </div>-->
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">FullName</label>
                                                <div class="col-sm-9">
                                                    <input id="supName" type="text" class="form-control" style="border-color:#686868" placeholder="Enter Full Name" required="true" />
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">

                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Email</label>
                                                <div class="col-sm-9">
                                                    <input id="email" class="form-control" style="border-color:#686868" placeholder="Enter Email" required="true"/>
                                                    <small id="checkemail">

                                                    </small>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Password</label>
                                                <div class="col-sm-9">
                                                    <input id="pass" class="form-control" style="border-color:#686868" placeholder="Enter Password" required="true" />
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Address</label>
                                                <div class="col-sm-9">
                                                    <input id="address" type="text" class="form-control" placeholder="Enter Address" style="border-color:#686868" required ="true"/>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Phone</label>
                                                <div class="col-sm-9">
                                                    <input id="phone" type="text" class="form-control" style="border-color:#686868" placeholder="Enter Phone" required="true" />
                                                    <small id="checkphone">
                                                        Phone must be less than 12 characters and is number
                                                    </small>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6" style="border-color:#686868">
                                            <div class="form-group row" style="border-color:#686868">
                                                <label class="col-sm-3 col-form-label">Category</label>
                                                <div class="col-sm-9" >
                                                    <select id="select" class="form-control" style="border-color:#686868" required="true" >

                                                    </select>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Gender</label>
                                                <div class="col-sm-4">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="membershipRadios"
                                                                   id="membershipRadios1" value="Male" checked>
                                                            Male
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-5">
                                                    <div class="form-check">
                                                        <label class="form-check-label">
                                                            <input type="radio" class="form-check-input" name="membershipRadios"
                                                                   id="membershipRadios2" value="Female">
                                                            Female
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">Date of Birth</label>
                                                <div class="col-sm-9" style="border-color:#686868">
                                                    <input id="datepicker" placeholder="dd/mm/yyyy" required="true">
                                                    <script>
                                                        $('#datepicker').datepicker({
                                                            uiLibrary: 'bootstrap4'
                                                        });
                                                    </script>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row" style="display: ">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-sm-3 col-form-label">CreateDay</label>
                                                <div class="col-sm-9">
                                                    <input type="text" readonly="true" id="datePicker" name="create" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="float: right;">
                                        <input id="add" type="button" value="Add" disabled="true" class="btn btn-primary mr-2" />
                                        <button class="btn btn-light">Reset</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="../inc/plugins.jsp" %>
    </body>
</html>