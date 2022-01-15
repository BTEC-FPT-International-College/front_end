<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Manager Post</title>
        <link rel="stylesheet" href="./thaicss/style-profile.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
        <link rel="stylesheet" href="./template/css/style-manage-post.css">

        <!-- Favicon -->
        <link rel="shortcut icon" href="img/iconbtec.png" type="image/x-icon">
        <!-- Font awesome -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!-- slick slider -->
        <link rel="stylesheet" type="text/css" href="css/slick.css">
        <!-- price picker slider -->
        <link rel="stylesheet" type="text/css" href="css/nouislider.css">
        <!-- Fancybox slider -->
        <link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="screen" /> 
        <!-- Theme color -->
        <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">  

        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="./template/css/date.css" rel="stylesheet">
        <!-- Main style sheet -->
        <link href="css/style.css" rel="stylesheet">    

        <link rel="stylesheet" href="./template/css/datatables.net-bs4/dataTables.bootstrap4.css">
        <link rel="stylesheet" href="./template/css/datatables.net-bs4/_data-tables.scss">
        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <!--show delete--> 
        <script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
        <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script>                                                     <%
            String username = (String) session.getAttribute("User");
            if (username == null) {
                //                out.print("cccc");
            %>
                window.location.replace('login.jsp')
            <%
                }
            %>
        </script>
        <style>
            #aa-menu-area .main-navbar .navbar-nav li a {
                font-weight: 600;
            }
            .content1-image {
                margin-left: 140px;
            }
            .content1-info .wallet {
                margin-top: 20px;
            }
            .management-des a {
                font-weight: 700;
            }
            .Expired{
                background-color: #f57a7a;
                padding : 12px
            }
            .Avaible{
                background-color: #7aebab;
                padding : 12px
            }

        </style>
    </head>
    <body>

        <%@ include file="./header-section.jsp" %>

        <!--for successfully delete--> 
        <div class="modal" tabindex="-1" id="show" role="dialog"  >
            <div class="modal-dialog alert-success" role="document" style="transform: translateX(-928px); padding: 0; box-shadow: rgb(16 16 123 / 25%) 0px 45px 27px -5px, rgb(0 0 0 / 30%) 8px 22px 16px -8px; position: absolute; left: 50%; top: 24%;     transform: translate(-50%, -50%);">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" style="color:green">Successful Delete</h5>

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

                    </div>
                </div>
            </div>
        </div>

        <!-- Container  -->
        <div class="container-p">
            <div class="contenta">
                <%@ include file="./content1.jsp" %>
                <div class="content2a">
                    <div class="content2-title">  Manage Post</div>
                    <!-- Advance Search -->
                    <div id="aa-advance-search-list">
                        <div class="container">
                            <div class="aa-advance-search-area">
                                <div class="form">
                                    <div class="aa-advance-search-top" style="margin-left: 30%">
                                        <div class="row" >
                                            <div class="col-lg-7">
                                                <form action="#" class="row">
                                                    <div class="col-md-6">
                                                        <input type="date" data-toggle="date-picker"  class="col-md-6 input-sm form-control start-date" id="pick_date"  name="fromDate" placeholder="From date"/>
                                                    </div>

                                                    <div class="col-md-6">
                                                        <input type="date" class="col-md-6 input-sm form-control" id="drop_date"  name="toDate" placeholder="To date"/>
                                                    </div>
                                                </form>
                                            </div>

                                            <div class="col-md-2">
                                                <div class="aa-single-advance-search">
                                                    <input class="aa-search-btn" type="button" value="Search" onclick="filterDate()">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div style="color: #08113b; font-weight: 600; margin-top: -20px;">
                                                    Filter By Post Status
                                                </div>
                                            </div>
                                            <div class"col-lg-3" style="margin-top: 10px">
                                                <input class="filter-button" onclick="avaible()" Style="background-color: #7aebab; padding: 10px" type="button" value="Avaible"><!-- comment -->
                                                <input class="filter-button" onclick="expired()" Style="background-color: #f57a7a; padding: 10px" type="button" value="Expired"><!-- comment -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="container">
                        <div class="row">
                            <div class="col-12" id="a-hover">
                                <table class="table table-bordered" id="table-update-form">
                                    <thead>
                                        <tr>
                                            <th scope="col" style="width: 40px">POST ID</th>
                                            <th scope="col">TITLE</th>
                                            <th scope="col" style="width: 100px">Date created</th>
                                            <th scope="col" style="width: 100px">Update Day</th>
                                            <th scope="col" style="width: 100px">Status</th>
                                            <th scope="col" style="width: 100px">Expiration date</th>
                                            <th scope="col" style="width: 100px">View comment</th>
                                            <th scope="col" style="width: 150px" >Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody">


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End of container -->
        </div>
        <div class="clear"></div>
    </div>
</div>
<!--End of container--> 

<!--Footer-->
<%@ include file="./footer.jsp" %>


<!-- jQuery library -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<!--<script src="js/jquery.min.js"></script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!--<script src="js/bootstrap.js"></script>-->
<!-- slick slider -->
<script type="text/javascript" src="js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="js/nouislider.js"></script>
<!-- mixit slider -->
<script type="text/javascript" src="js/jquery.mixitup.js"></script>
<!-- Add fancyBox -->
<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
<!-- Custom js -->
<script src="js/custom.js"></script>
<script src="./template/js/jquery-3.3.1.min.js"></script>
<script src="./template/js/popper.min.js"></script>
<script src="./template/js/bootstrap.min.js"></script>
<script src="./template/js/picker.js"></script>
<script src="./template/js/picker.date.js"></script>
<script src="./template/js/main.js"></script>
<!-- table js -->
<script src="./template/css/datatables.net-bs4/jquery.dataTables.js"></script>
<script src="./template/css/datatables.net-bs4/dataTables.bootstrap4.js"></script>
<script src="./template/css/datatables.net-bs4/data-table.js"></script>

<script>
    $(document).ready(function () {
        let id = '<%=request.getParameter("id")%>'
        $.ajax({
            url: "ManagerPost?ac=view",
            method: "POST",
            data: {get: id},
            success: function (data) {
                let o = $.parseJSON(data);
                $('#table-update-form').DataTable({
                    "order": [[0, "desc"]]
                });
                var t = $('#table-update-form').DataTable();
                 $.each(o, function (key, value) {

                    const now = Date.now()
                    const end = new Date(Date.parse(value.endDay))
                    const isA = end - now
                    let status = "";
                    if (isA > 0) {
                        status = "Avaible";
                    } else {
                        status = "Expired";
                    }

                    let upate = "";
                    if (value.updateDay) {
                        upate = value.updateDay
                    } else {
                        upate = "Not update yet!"
                    }
                     t.row.add([
                             value.postId,
                            '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '">' + value.title + '</a>',
                             value.createDay, 
                            upate,
                            "<div class='"+status+"'>" + status + "</div>",
                            value.endDay,
                            '<a href="comment.jsp?postId=' + value.postId +'&&id=' + value.userId +'">View post comment</a>',
                            '<a href="post-detail.jsp?postId=' + value.postId +'"><button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button></a>'
                            + ' <a href="update-post.jsp?postId=' + value.postId + '&&id=' + id + '"><button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button></a>'
                            + ' <button data-toggle="modal" type="submit" class="btn btn-danger delete-postt" data-target="#hellohello'+value.postId+'" ><i class="fas fa-trash-alt"></i></button>'
                            + '<div class="modal fade" id="hellohello'+value.postId+'" tabindex="-1" role="dialog" aria-hidden="true" style=\'display:none\' >'
                            + '<div class="modal-dialog modal-dialog-centered" role="document" style="transform: translateX(-956px);position: absolute; left: 50%; top: 24%;     transform: translate(-50%, -50%);">'
                            + '<div class="modal-content border-0">'
                            + '<div class="modal-body p-0">'
                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                            + '<div class="card-header pb-0 bg-white border-0 ">'
                            + '<div class="row">'
                            + '<div class="col ml-auto"><button type="button" id="closeq" class="close" data-dismiss="modal" aria-label="Close"> <span style="padding-right: 16px" aria-hidden="true">&times;</span> </button></div>'
                            + '</div>'
                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete post with id = ' + value.postId + '?</p>'
                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                            + '</div>'
                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                            + '<div class="row justify-content-end no-gutters" style="display: inline-flex; margin-left: 374px;">'
                            + '<div class="col-auto"><button type="button" id="closeq" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.postId + '" style="margin-left: 28px;" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                             ]).draw(false);
                      });
                $("#show").hide();
                $("#error").hide();
                $("#closeq").click(function () {
                    $("#hellohello'+value.postId+'").hide();
                })
                $(".delete[target='_blank']").click(function () {
                    let select = $(this).attr("title")
                    $.ajax({
                        url: "PostController?ac=del",
                        type: "post",
                        data: {get: select},
                        success: function (data) {
                            let obj = $.parseJSON(data);
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
                });
            },
            error: function () {
                alert("error");
            }
        })

    });
    $("#testbtn").click(function () {
        $("#show").show();
    });


    let userId = '<%=request.getParameter("id")%>'

    function filterDate() {
        const fromedate = document.getElementById("pick_date").value;
        const todate = document.getElementById("drop_date").value;
        let datas = {}
        datas.userId = userId;
        datas.fromDate = fromedate;
        datas.toDate = todate;
        const sentData = JSON.stringify(datas)
        $.ajax({
            url: "ManagerPost?ac=filter",
            type: "POST",
            data: {
                get: sentData
            },
            success: function (data) {
                let post = $.parseJSON(data);
                $('#tbody').empty()
                console.log(post)

                $.each(post, function (key, value) {
                    const now = Date.now()
                    const end = new Date(Date.parse(value.endDay))
                    const isA = end - now
                    let status = "";
                    if (isA > 0) {
                        status = "Avaible";
                    } else {
                        status = "Expired";
                    }

                    let upate = "";
                    if (value.updateDay) {
                        upate = value.updateDay
                    } else {
                        upate = "Not update yet!"
                    }
                    $('#tbody').append('<tr><td>' + value.postId + '</td>'
                            + "<td>"
                            + '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '">' + value.title + '</a>'
                            + "</td>"
                            + "<td>" + value.createDay + "</td>"
                            + "<td>"
                            + upate
                            + "</td>"
                            + "<td class='" + status + "'>" + status + "</td>"
                            + "<td>" + value.endDay + "</td>"
                            + " <td>"
                            +'<a href="comment.jsp?postId=' + value.postId +'&&id=' + value.userId +'">View post comment</a>'
                            + "</td>"
                            + "<td>"
                            + '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '"><button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button></a>'
                            + ' <a href="update-post.jsp?postId=' + value.postId + '&&id=' + userId + '"><button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button></a>'
                            + ' <button data-toggle="modal" type="submit" class="btn btn-danger delete-postt" data-target="#hellohello'+value.postId+'" ><i class="fas fa-trash-alt"></i></button>'
                            + '<div class="modal fade" id="hellohello'+value.postId+'" tabindex="-1" role="dialog" aria-hidden="true" style=\'display:none\' >'
                            + '<div class="modal-dialog modal-dialog-centered" role="document" style="transform: translateX(-956px); position: absolute; left: 50%; top: 24%;     transform: translate(-50%, -50%);">'
                            + '<div class="modal-content border-0">'
                            + '<div class="modal-body p-0">'
                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                            + '<div class="card-header pb-0 bg-white border-0 ">'
                            + '<div class="row">'
                            + '<div class="col ml-auto"><button type="button" id="closeq" class="close" data-dismiss="modal" aria-label="Close"> <span style="padding-right: 16px" aria-hidden="true">&times;</span> </button></div>'
                            + '</div>'
                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete ' + value.postId + ' category ?</p>'
                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                            + '</div>'
                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                            + '<div class="row justify-content-end no-gutters" style="display: inline-flex; margin-left: 392px;">'
                            + '<div class="col-auto"><button type="button" id="closeq" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.postId + '" style="margin-left: 28px;" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'

                            + "</td>"

                            + '</tr>')

                });
                $("#show").hide();
                $("#error").hide();
                $("#closeq").click(function () {
                    $("#hellohello'+value.postId+'").hide();
                })
                $(".delete[target='_blank']").click(function () {
                    let select = $(this).attr("title")
                    $.ajax({
                        url: "PostController?ac=del",
                        type: "post",
                        data: {get: select},
                        success: function (data) {
                            let obj = $.parseJSON(data);
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
                });
            },
            error: function (xhr) {

            }
        });
    };
     function avaible() {
        $.ajax({
            url: "ManagerPost?ac=avaible",
            type: "POST",
            data: {
                get: userId
            },
            success: function (data) {
                let post = $.parseJSON(data);
                $('#tbody').empty()
                console.log(post)

                $.each(post, function (key, value) {
                    const now = Date.now()
                    const end = new Date(Date.parse(value.endDay))
                    const isA = end - now
                    let status = "";
                    if (isA > 0) {
                        status = "Avaible";
                    } else {
                        status = "Expired";
                    }

                    let upate = "";
                    if (value.updateDay) {
                        upate = value.updateDay
                    } else {
                        upate = "Not update yet!"
                    }
                    $('#tbody').append('<tr><td>' + value.postId + '</td>'
                            + "<td>"
                            + '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '">' + value.title + '</a>'
                            + "</td>"
                            + "<td>" + value.createDay + "</td>"
                            + "<td>"
                            + upate
                            + "</td>"
                            + "<td class='" + status + "'>" + status + "</td>"
                            + "<td>" + value.endDay + "</td>"
                            + " <td>"
                            +'<a href="comment.jsp?postId=' + value.postId +'&&id=' + value.userId +'">View post comment</a>'
                            + "</td>"
                            + "<td>"
                            + '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '"><button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button></a>'
                            + ' <a href="update-post.jsp?postId=' + value.postId + '&&id=' + userId + '"><button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button></a>'
                            + ' <button data-toggle="modal" type="submit" class="btn btn-danger delete-postt" data-target="#hellohello'+value.postId+'" ><i class="fas fa-trash-alt"></i></button>'
                            + '<div class="modal fade" id="hellohello'+value.postId+'" tabindex="-1" role="dialog" aria-hidden="true" style=\'display:none\' >'
                            + '<div class="modal-dialog modal-dialog-centered" role="document" style="transform: translateX(-956px);position: absolute; left: 50%; top: 24%;     transform: translate(-50%, -50%);">'
                            + '<div class="modal-content border-0">'
                            + '<div class="modal-body p-0">'
                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                            + '<div class="card-header pb-0 bg-white border-0 ">'
                            + '<div class="row">'
                            + '<div class="col ml-auto"><button type="button" id="closeq" class="close" data-dismiss="modal" aria-label="Close"> <span style="padding-right: 16px" aria-hidden="true">&times;</span> </button></div>'
                            + '</div>'
                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete ' + value.postId + ' category ?</p>'
                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                            + '</div>'
                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                            + '<div class="row justify-content-end no-gutters" style="display: inline-flex; margin-left: 392px;">'
                            + '<div class="col-auto"><button type="button" id="closeq" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.postId + '" style="margin-left: 28px;" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'

                            + "</td>"

                            + '</tr>')

                });
                $("#show").hide();
                $("#error").hide();
                $("#closeq").click(function () {
                    $("#hellohello'+value.postId+'").hide();
                })
                $(".delete[target='_blank']").click(function () {
                    let select = $(this).attr("title")
                    $.ajax({
                        url: "PostController?ac=del",
                        type: "post",
                        data: {get: select},
                        success: function (data) {
                            let obj = $.parseJSON(data);
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
                });
            },
            error: function (xhr) {

            }
        });
    };
     function expired() {
        $.ajax({
            url: "ManagerPost?ac=expired",
            type: "POST",
            data: {
                get: userId
            },
            success: function (data) {
                let post = $.parseJSON(data);
                $('#tbody').empty()
                console.log(post)

                $.each(post, function (key, value) {
                    const now = Date.now()
                    const end = new Date(Date.parse(value.endDay))
                    const isA = end - now
                    let status = "";
                    if (isA > 0) {
                        status = "Avaible";
                    } else {
                        status = "Expired";
                    }

                    let upate = "";
                    if (value.updateDay) {
                        upate = value.updateDay
                    } else {
                        upate = "Not update yet!"
                    }
                    $('#tbody').append('<tr><td>' + value.postId + '</td>'
                            + "<td>"
                            + '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '">' + value.title + '</a>'
                            + "</td>"
                            + "<td>" + value.createDay + "</td>"
                            + "<td>"
                            + upate
                            + "</td>"
                            + "<td class='" + status + "'>" + status + "</td>"
                            + "<td>" + value.endDay + "</td>"
                            + " <td>"
                            +'<a href="comment.jsp?postId=' + value.postId +'&&id=' + value.userId +'">View post comment</a>'
                            + "</td>"
                            +"<td>"
                            + '<a href="post-detail.jsp?postId=' + value.postId + '&&id=' + value.userId + '"><button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button></a>'
                            + ' <a href="update-post.jsp?postId=' + value.postId + '&&id=' + userId + '"><button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button></a>'
                            + ' <button data-toggle="modal" type="submit" class="btn btn-danger delete-postt" data-target="#hellohello'+value.postId+'" ><i class="fas fa-trash-alt"></i></button>'
                            + '<div class="modal fade" id="hellohello'+value.postId+'" tabindex="-1" role="dialog" aria-hidden="true" style=\'display:none\' >'
                            + '<div class="modal-dialog modal-dialog-centered" role="document" style="transform: translateX(-956px); position: absolute; left: 50%; top: 24%;     transform: translate(-50%, -50%);">'
                            + '<div class="modal-content border-0">'
                            + '<div class="modal-body p-0">'
                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                            + '<div class="card-header pb-0 bg-white border-0 ">'
                            + '<div class="row">'
                            + '<div class="col ml-auto"><button type="button" id="closeq" class="close" data-dismiss="modal" aria-label="Close"> <span style="padding-right: 16px" aria-hidden="true">&times;</span> </button></div>'
                            + '</div>'
                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete ' + value.postId + ' category ?</p>'
                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                            + '</div>'
                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                            + '<div class="row justify-content-end no-gutters" style="display: inline-flex; margin-left: 392px;">'
                            + '<div class="col-auto"><button type="button" id="closeq" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.postId + '" style="margin-left: 28px;" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'
                            + '</div>'

                            + "</td>"

                            + '</tr>')

                });
                $("#show").hide();
                $("#error").hide();
                $("#closeq").click(function () {
                    $("#hellohello'+value.postId+'").hide();
                })
                $(".delete[target='_blank']").click(function () {
                    let select = $(this).attr("title")
                    $.ajax({
                        url: "PostController?ac=del",
                        type: "post",
                        data: {get: select},
                        success: function (data) {
                            let obj = $.parseJSON(data);
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
                });
            },
            error: function (xhr) {

            }
        });
    };
                                                        


</script>
</body>
</html>