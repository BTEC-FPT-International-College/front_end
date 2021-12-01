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
        <script>
            $(document).ready(function () {
                $(function () {
                    $('[data-toggle="popover"]').popover()
                })
                $(function () {
                    $('.example-popover').popover({
                        container: 'body'
                    })
                })
                $('#dtOrderExample').DataTable({
                    "order": [[4, "desc"]]
                });
                $('.dataTables_length').addClass('bs-select');
                $("#getdate").click(function () {
                    $("#cancledate").show();
                    $("#getdate").hide()
                    a.Start = $("#startdate").val()
                    a.End = $("#enddate").val()
                    const end = Date.parse(a.End)
                    const start = Date.parse(a.Start)
                    if ((end - start) < 0) {
                        $("#error").show()
                    } else {
                        const da = JSON.stringify(a)
                        console.log(da)
                        $.ajax({
                            url: "../TransactionController?ac=search",
                            method: "POST",
                            data: {get: da},
                            success: function (data) {
                                let obj = $.parseJSON(data);
                                console.log(obj)
                                $("#dtOrderExample").DataTable().clear().destroy();
                                $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                                var t = $('#dtOrderExample').DataTable();
                                $.each(obj, function (key, value) {
                                    t.row.add([
                                        value.TransactionID,
                                        "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                        "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                        "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                        value.CreateDate + " " + value.CreateHour,
                                        value.Packet,
                                        value.Price
                                    ]).draw(false);
                                })
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    }
                })
                $("#cancledate").click(function () {
                    $.ajax({
                        url: "../TransactionController?ac=viewT",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                t.row.add([
                                    value.TransactionID,
                                    "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                    value.CreateDate + " " + value.CreateHour,
                                    value.Packet,
                                    value.Price
                                ]).draw(false);
                            })
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $("#getdate").show()
                    $("#cancledate").hide()
                    $("#startdate").val("")
                    $("#enddate").val("")
                })
                $("#1day").click(function () {
                    var curr = new Date;
                    var first = curr.getDate();
                    var last = first - 1;
                    var firstday = new Date().toLocaleDateString();
                    var lastday = new Date(curr.setDate(last)).toLocaleDateString();
                    console.log(firstday)
                    console.log(lastday)
                    const searh1day = {
                        Start: lastday,
                        End: firstday
                    }
                    const da = JSON.stringify(searh1day)
                    console.log(da)
                    $.ajax({
                        url: "../TransactionController?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                t.row.add([
                                    value.TransactionID,
                                    "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                    value.CreateDate + " " + value.CreateHour,
                                    value.Packet,
                                    value.Price
                                ]).draw(false);
                            })
                            $("#refesh").show()
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#1week").click(function () {
                    var today = new Date();
                    var lastweek = new Date(today.getFullYear(), today.getMonth(), today.getDate() - 7);
                    console.log(today.toLocaleDateString())
                    console.log(lastweek.toLocaleDateString())
                    const searh1weeek = {
                        Start: lastweek.toLocaleDateString(),
                        End: today.toLocaleDateString()
                    }
                    const da = JSON.stringify(searh1weeek)
                    console.log(da)
                    $.ajax({
                        url: "../TransactionController?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                t.row.add([
                                    value.TransactionID,
                                    "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                    value.CreateDate + " " + value.CreateHour,
                                    value.Packet,
                                    value.Price
                                ]).draw(false);
                            })
                            $("#refesh").show()
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#1month").click(function () {
                    var d = new Date();
                    const first = d.toLocaleDateString()
                    console.log(first);
                    d.setMonth(d.getMonth() - 1);
                    console.log(d.toLocaleDateString())
                    const searh1month = {
                        Start: d.toLocaleDateString(),
                        End: first
                    }
                    const da = JSON.stringify(searh1month)
                    console.log(da)
                    $.ajax({
                        url: "../TransactionController?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                t.row.add([
                                    value.TransactionID,
                                    "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                    value.CreateDate + " " + value.CreateHour,
                                    value.Packet,
                                    value.Price
                                ]).draw(false);
                            })
                            $("#refesh").show()
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#refesh").click(function () {
                    $.ajax({
                        url: "../TransactionController?ac=viewT",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                t.row.add([
                                    value.TransactionID,
                                    "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                    value.CreateDate + " " + value.CreateHour,
                                    value.Packet,
                                    value.Price
                                ]).draw(false);
                            })
                            $("#refesh").hide()
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#top3").click(function (event) {
                    $.ajax({
                        url: "../TransactionController?ac=viewTop3",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);

                            $.each(rs, function (key, value) {
                                $('#top').append('<a class="dropdown-item" id="' + key + '" href="viewDetaiTranbyWallet.jsp?id=' + value.WalletID + '">' + "Top " + (key + 1) + " " + "Wallet: " + value.WalletID + "- UserID: " + value.UserID + "- Total: " + value.totalPrice + '</a>')
                            });
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $(this).off(event);
                })
                $("#topPacket").mouseenter(function (event) {
                    $.ajax({
                        url: "../TransactionController?ac=viewTopPacket",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $('#topPacket').attr("data-content"
                                    , "Top 1: " + "Packet " + rs[0].Packet + "- Amount: " + rs[0].numberOfPacket + "<br>" +
                                    "Top 2: " + "Packet " + rs[1].Packet + "- Amount: " + rs[1].numberOfPacket + "<br>" +
                                    "Top 3: " + "Packet " + rs[2].Packet + "- Amount: " + rs[2].numberOfPacket + "<br>" +
                                    "Top 4: " + "Packet " + rs[3].Packet + "- Amount: " + rs[3].numberOfPacket + "<br>")
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $(this).off(event);
                })
                $("#orther").mouseenter(function (event) {
                    $.ajax({
                        url: "../TransactionController?ac=viewTop1PostBuy",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)

                            $("#orther").attr("data-content", "Top 1: PostID: " + rs[0].PostID + " Wallet: " + rs[0].UserID + " Amount: " + rs[0].totalPrice)

                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $(this).off(event);
                })
                $("#1hour").click(function () {
                    $.ajax({
                        url: "../TransactionController?ac=viewTby1Hour",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[4, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                t.row.add([
                                    value.TransactionID,
                                    "<a href='viewDetaiTranbyWallet.jsp?id=" + value.WalletID + "'" + ">" + value.WalletID + " </a>",
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    "<a href='viewDetailByPost.jsp?id=" + value.PostID + "'" + ">" + value.PostID + " </a>",
                                    value.CreateDate + " " + value.CreateHour,
                                    value.Packet,
                                    value.Price
                                ]).draw(false);
                            })
                            $("#refesh").show()
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
            <div class="main-panel">
                <div class="content-wrapper">
                    <div class="row">
                        <div class="col-md-12 stretch-card">
                            <div class="card">
                                <div class="card-body">
                                    <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
                                            <li class="breadcrumb-item active" aria-current="page">Transaction History Management</li>
                                        </ol>
                                    </nav>
                                    <h2 class="card-body" style="text-align: center;">Transaction history List</h2>
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
                                                        <button type="button" style="height:2.875rem" class="btn btn-github" data-toggle="popover" data-placement="left"
                                                                title="Top packages purchased" data-content="" id="topPacket" data-html="true">
                                                            Top Packet purchased</button>
                                                    </div>
                                                    <div style="float: right;" class="col-md-4" >
                                                        <button style="height:2.875rem" type="button"  class="btn btn-facebook" data-container="body" 
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
                                                <a class="nav-link" id="1hour" href="#">1 hour ago</a>
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
                                        <table id="dtOrderExample" class="table table-bordered" style="width:100%">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>WalletID</th>
                                                    <th>UserID</th>
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
                                                        <td><a href="viewDetaiTranbyWallet.jsp?id=${x.getWalletID()}">${x.getWalletID()}</a></td>
                                                        <td><a href="viewDetailUser.jsp?id=${x.getUserID()}">${x.getUserID()}</a></td>
                                                        <td><a href="viewDetailByPost.jsp?id=${x.getPostID()}">${x.getPostID()}</a></td><!-- comment -->
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