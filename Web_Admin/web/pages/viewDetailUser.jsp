<%-- 
    Document   : viewDetailUser
    Created on : 21-10-2021, 10:56:19
    Author     : nguyenbamang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View user detail Page</title>
        <link rel="stylesheet" href="../vendors/mdi/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="../vendors/base/vendor.bundle.base.css">
        <link rel="stylesheet" href="../vendors/datatables.net-bs4/dataTables.bootstrap4.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link rel="stylesheet" href="../css/style.css">
        <!-- endinject -->
        <link rel="shortcut icon" href="../images/favicon.png" />
        <script>
            $(document).ready(function () {
                $("#checkS").change(function () {
                    if ($("#checkS").attr('checked') === 'checked') {
                        $("#checkS").attr('checked', false)
                        const not = {
                            UserID: "<%=request.getParameter("id")%>",
                            Status: 0
                        }
                        const da = JSON.stringify(not)
                        console.log(da)
                        $.ajax({
                            url: "../UserController?ac=updateStatus",
                            method: "POST",
                            data: {get: da},
                            success: function (data) {
                                let rs = $.parseJSON(data);
                                console.log(rs)
                                if (rs) {
                                    $("#status").text("Allow")
                                }
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    } else {
                        $("#checkS").attr('checked', 'checked')
                        console.log("set chekced")
                        const check = {
                            UserID: "<%=request.getParameter("id")%>",
                            Status: 1
                        }
                        const da = JSON.stringify(check)
                        console.log(da)
                        $.ajax({
                            url: "../UserController?ac=updateStatus",
                            method: "POST",
                            data: {get: da},
                            success: function (data) {
                                let rs = $.parseJSON(data);
                                console.log(rs)
                                if (rs)
                                    $("#status").text("Block")
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    }
                })
                let select = $('#getid').text();
                console.log(select)
                $.ajax({
                    url: "../UserController?ac=viewTotalPost",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        if (obj === null) {
                            $("#totalPost").val("0")
                        } else {
                            $("#totalPost").val(obj.TotalPost)
                        }
                    },
                    error: function () {
                        alert("error");
                    }
                });
                $.ajax({
                    url: "../UserController?ac=viewPur",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        if (obj == null) {
                            $("#totalPur").val(0)
                        } else {
                            $("#totalPur").val(obj.TotalPurchases)
                        }

                    },
                    error: function () {
                        alert("error");
                    }
                });
                $.ajax({
                    url: "../UserController?ac=viewTotalRecharge",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        if (obj == null) {
                            $("#recharge").val(0)
                        } else {
                            $("#recharge").val(obj.Total)
                        }

                    },
                    error: function () {
                        alert("error");
                    }
                });
                $.ajax({
                    url: "../UserController?ac=viewWallet",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $("#wallet").val(obj.WalletID)
                        $("#surplus").val(obj.Surplus)
                        $("#viewRecharge").attr("href", "viewDetailRecharge.jsp?id=" + obj.WalletID)
                        $("#viewTransaction").attr("href", "viewDetaiTranbyWallet.jsp?id=" + obj.WalletID)
                    },
                    error: function () {
                        alert("error");
                    }
                });
                $.ajax({
                    url: "../UserController?ac=viewUser",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $("#name").val(obj.FullName)
                        $("#fullname").text(obj.FullName)
                        $("#email").val(obj.Email)
                        $("#phone").val(obj.Phone)
                        $("#pass").val(obj.Password)
                        $("#add").val(obj.Address)
                        $("#date").val(obj.Date_of_Birth)
                        $("#point").val(obj.Reward_point)
                        $("#gender").val(obj.Gender)
                        $("#createday").val(obj.CreateDate)
                        $("#updatedate").val(obj.UpdateDate)
                        const status = obj.Status
                        if (status == 0) {
                            $("#status").text("Allow")
                        } else {
                            $("#status").text("Block")
                            $("#checkS").attr('checked', 'checked')
                        }
                        const rank = obj.Reward_point;
                        if (rank === 0) {
                            $("#rank").val("User are not rated yet");
                            $("#rank").css("color", "white");
                            $("#rank").css("background-color", "red");
                        } else if (rank < 100) {
                            $("#rank").css("background-color", "#a37745");
                            $("#rank").css("color", "white");
                            $("#rank").val("Coper Member");
                        } else if (rank < 300) {
                            $("#rank").val("Silver Member")
                            $("#rank").css("color", "white");
                            $("#rank").css("background-color", "#61605e");
                        } else if (rank < 500) {
                            $("#rank").val("Gold Member");
                            $("#rank").css("background-color", "#e8b10c");
                        } else {
                            $("#rank").val("Diamond Member");
                            $("#rank").css("background-color", "#b5f5ee");
                        }

                    },
                    error: function () {
                        alert("error");
                    }
                });
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
                                    location.replace("user.jsp")
                                }, 1000);
                            } else {
                                $("#error").show();
                            }
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
            });
        </script>
    </head>
    <body>
        <div class="container-scroller">
            <%@ include file="../inc/nvarbar.jsp" %>
            <%@ include file="../inc/sidebar.jsp" %>
            <%@ include file="../inc/plugins.jsp" %>
            <div class="container rounded bg-white mt-5">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                        <li class="breadcrumb-item"><a href="user.jsp">User Management</a></li>
                        <li class="breadcrumb-item active" aria-current="page">User Detail</li>
                    </ol>
                    <h2 style="text-align: center">View Detail <%=request.getParameter("id")%> </h2>
                    <h1 id="getid" style="display: none "><%=request.getParameter("id")%></h1>
                    <div class="modal" tabindex="-1" id="show" role="dialog" style="display: none" >
                        <div class="modal-dialog alert-success" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" style="color:green">Successful Delete</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <p>Please wait! Redirecting to category management page</p>
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
                    <div class="row">
                        <div class="col-md-4 border-right">
                            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                                <img class="rounded-circle mt-5" src="https://i.imgur.com/0eg0aG0.jpg" width="90">
                                <span class="font-weight-bold" id="fullname"></span>       
                            </div>
                        </div>

                        <div class="col-md-8">
                            <div class="p-3 py-5">
                                <div class="row mt-2">
                                    <div class="col-md-6">FullName: <input id="name" type="text" class="form-control" readonly="true"></div>
                                    <div class="col-md-6" >Email: <input id="email" type="text" class="form-control" readonly="true"></div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-6">Password <input id="pass" type="text" class="form-control" readonly="true"></div>
                                    <div class="col-md-6" >Phone <input id="phone" type="text" class="form-control" readonly="true"></div>
                                </div>
                                <div class="row mt-2">
                                    <div class="col-md-12"> Address<input type="text" id="add" class="form-control" readonly="true"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6"> Date of Birth<input type="text" id="date" class="form-control" readonly="true"></div>
                                    <div class="col-md-6"> Gender<input type="text" id="gender" class="form-control" readonly="true"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6"> Recently Update Date <input id="updatedate" type="text" class="form-control" readonly="true"></div>
                                    <div class="col-md-6"> Create Date<input type="text" id="createday" class="form-control" readonly="true"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6"> Total Purchases<input id="totalPur" type="text" class="form-control" readonly="true">
                                        <a id="viewTransaction">
                                            <small class="text-capitalize">
                                                View transaction history list
                                            </small>
                                        </a>
                                    </div>
                                    <div class="col-md-6"> Total Post<input id="totalPost" type="text" class="form-control" readonly="true">
                                        <a href="viewPostByUser.jsp?id=<%=request.getParameter("id")%>" id="viewPost">
                                            <small class="text-capitalize">
                                                View post list
                                            </small>
                                        </a>
                                    </div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-6"> Reward Point<input id="point" type="text" class="form-control" readonly="true"></div>
                                    <div class="col-md-6"> Rank<input id="rank" type="text" class="form-control" readonly="true"></div>
                                </div>
                                <div class="row mt-3">
                                    <div class="col-md-4"> Wallet ID<input id="wallet" type="text" class="form-control" readonly="true"></div>
                                    <div class="col-md-4"> Surplus<input type="text" id="surplus" class="form-control" readonly="true"></div>
                                    <div class="col-md-4"> Total Recharge<input type="text" id="recharge" class="form-control" readonly="true">
                                        <a id="viewRecharge">
                                            <small class="text-capitalize">
                                                View recharge history list
                                            </small>
                                        </a>
                                    </div> 
                                </div>
                                <div class="form-check form-check-danger">
                                    <label class="form-check-label">
                                        Status: <p id="status"></p>
                                        <input id="checkS" type="checkbox" class="form-check-input">
                                    </label>
                                </div>
                            </div>
                            <div style="padding-bottom: 50px" class="text-right"><button class="btn btn-danger profile-button" type="button">Delete</button></div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
    <%@ include file="../inc/plugins.jsp" %>
</body>
</html>