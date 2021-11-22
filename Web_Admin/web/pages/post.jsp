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
                $(function () {
                    $('[data-toggle="popover"]').popover()
                })
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
                $('#dtOrderExample').DataTable({
                    "order": [[3, "desc"]],
                });
                $('.dataTables_length').addClass('bs-select');

                $(".1").addClass("badge-danger")
                $(".1").text("No")
                $(".0").text("Yes")
                $(".0").addClass("badge-success")
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
                            url: "../PostController?ac=search",
                            method: "POST",
                            data: {get: da},
                            success: function (data) {
                                let obj = $.parseJSON(data);
                                console.log(obj)
                                $("#dtOrderExample").DataTable().clear().destroy();
                                $('#dtOrderExample').DataTable({
                                    retrieve: true,
                                    paging: false,
                                    "order": [[3, "desc"]]
                                });
                                var t = $('#dtOrderExample').DataTable();
                                $.each(obj, function (key, value) {
                                    t.row.add([
                                        value.PostID,
                                        "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                        value.Category,
                                        value.Create_Date + " " + value.Create_Hour,
                                        value.EndDate,
                                        value.status,
                                        '<label class="badge ' + value.ReadUnread + '">' + value.ReadUnread + "</label>",
                                        "<a href='viewDetailPost.jsp?id=" + value.PostID + "'" + 'class="btn btn-primary a-btn-slide-text"' + ">"
                                                + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                                + '<i class="mdi mdi-eye"></i>'
                                                + '<span> <strong> View</strong></span>'
                                                + "</a>",
                                        '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Delete</button>'
                                                + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                                + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                                + '<div class="modal-content border-0">'
                                                + '<div class="modal-body p-0">'
                                                + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                                + '<div class="card-header pb-0 bg-white border-0 ">'
                                                + '<div class="row">'
                                                + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                                + '</div>'
                                                + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete' + value.PostID + 'post ?</p>'
                                                + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                                                + '</div>'
                                                + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                                + '<div class="row justify-content-end no-gutters">'
                                                + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                                + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                                                + '</div>'
                                                + '</div>'
                                                + '</div>'
                                                + '</div>'
                                                + '</div>'
                                                + '</div>'
                                                + '</div>'
                                                + '</div>'
                                    ]).draw(false);
                                })
                                $(".1").addClass("badge-danger")
                                $(".1").text("Unread")
                                $(".0").text("Read")
                                $(".0").addClass("badge-success")
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    }
                })
                $("#cancledate").click(function () {
                    $.ajax({
                        url: "../PostController?ac=viewP",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[3, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Category,
                                    value.Create_Date + " " + value.Create_Hour,
                                    value.EndDate,
                                    value.status,
                                    '<label class="badge' + value.ReadUnread + ">" + value.ReadUnread + "</label>",
                                    "<a href='viewDetailPost.jsp?id=" + value.PostID + "'" + 'class="btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Delete</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete' + value.PostID + 'post ?</p>'
                                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
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
                        url: "../PostController?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[3, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Category,
                                    value.Create_Date + " " + value.Create_Hour,
                                    value.EndDate,
                                    value.status,
                                    '<label class="badge' + value.ReadUnread + ">" + value.ReadUnread + "</label>",
                                    "<a href='viewDetailPost.jsp?id=" + value.PostID + "'" + 'class="btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Delete</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete' + value.PostID + 'post ?</p>'
                                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
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
                        url: "../PostController?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[3, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Category,
                                    value.Create_Date + " " + value.Create_Hour,
                                    value.EndDate,
                                    value.status,
                                    '<label class="badge' + value.ReadUnread + ">" + value.ReadUnread + "</label>",
                                    "<a href='viewDetailPost.jsp?id=" + value.PostID + "'" + 'class="btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Delete</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete' + value.PostID + 'post ?</p>'
                                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
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
                        url: "../PostController?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[3, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Category,
                                    value.Create_Date + " " + value.Create_Hour,
                                    value.EndDate,
                                    value.status,
                                    '<label class="badge' + value.ReadUnread + ">" + value.ReadUnread + "</label>",
                                    "<a href='viewDetailPost.jsp?id=" + value.PostID + "'" + 'class="btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Delete</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete' + value.PostID + 'post ?</p>'
                                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
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
                        url: "../PostController?ac=viewP",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[3, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Category,
                                    value.Create_Date + " " + value.Create_Hour,
                                    value.EndDate,
                                    value.status,
                                    '<label class="badge' + value.ReadUnread + ">" + value.ReadUnread + "</label>",
                                    "<a href='viewDetailPost.jsp?id=" + value.PostID + "'" + 'class="btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Delete</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna delete' + value.PostID + 'post ?</p>'
                                            + '<p class="text-muted "> This change may affect other data. Be sure !!!</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" target="_blank" data-dismiss="modal"><i class="mdi mdi-delete"></i>Delete</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                ]).draw(false);
                            })
                            $("#refesh").hide()
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#orther").mouseenter(function (event) {
                    $.ajax({
                        url: "../PostController?ac=viewTotalPost",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#orther").attr("data-content", "Total Post: " + rs.Total_View)
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    $(this).off(event);
                })
                $(".check").on("click", function () {
                    list = []
                    $("#dtOrderExample tbody tr").hide()
                    var flag = 1
                    $("input:checkbox[name=check]:checked").each(function () {
                        flag = 0;
                        name_list.push($(this).val())
                        var value = $(this).val();
                        $("#dtOrderExample tr").filter(function () {
                            if ($(this).text().indexOf(value) > -1)
                                $(this).show()
                        });
                    });
                    if (flag === 1)
                        $("#dtOrderExample tbody tr").show()
                });

            })
        </script>
        <style>
            thead input {
                width: 100%;
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
                                                    <input name="check" type="checkbox" class="form-check-input check" value="Read" />
                                                    Read
                                                </label>
                                            </div>
                                            <div class="form-check form-check-danger">
                                                <label class="form-check-label">
                                                    <input name="check" type="checkbox" class="form-check-input check" value="Unread" />
                                                    Unread
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            View by Category:
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="cate" type="checkbox" class="form-check-input check" value="CT01" >
                                                    Buy
                                                </label>
                                            </div>
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="cate" type="checkbox" class="form-check-input check" value="CT02" >
                                                    Rent
                                                </label>
                                            </div>
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="cate" type="checkbox" class="form-check-input check" value="CT03" >
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
                                                    <button id="cancledate" style="height:2.875rem;display: none" class="btn btn-danger" ><i class="mdi mdi-close-circle"></i></button> 
                                                    <button id="orther"
                                                            type="button" class="btn btn-danger" data-toggle="popover"
                                                            title="More information" 
                                                            data-content="">
                                                        <i class="mdi mdi-alert-circle"></i></button>
                                                </div>
                                                <div class="row" style="margin-top: 4px;margin-left:1px">
                                                    <ul class="nav">
                                                        <li class="nav-item">
                                                            <a class="nav-link disabled">Quickly Serach: </a>
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
                                            </div>
                                        </div>
                                    </div>
                                    <br>

                                    <div class="table-responsive">

                                        <table id="dtOrderExample" class="table table-striped display" width="100%">
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
                                                        <td>
                                                            <a href="#" data-toggle="modal" data-target="#modalAbandonedCart${x.getUserID()}">${x.getUserID()} </a>

                                                            <!-- Modal: modalAbandonedCart-->
                                                            <div class="modal fade right" id="modalAbandonedCart${x.getUserID()}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                                                                 aria-hidden="true" data-backdrop="false">
                                                                <div class="modal-dialog modal-side modal-bottom-right modal-notify modal-info" role="document">
                                                                    <!--Content-->
                                                                    <div class="modal-content">
                                                                        <!--Header-->
                                                                        <div class="modal-header">
                                                                            <p class="heading">Do you want to ???
                                                                            </p>
                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                <span aria-hidden="true" class="white-text">&times;</span>
                                                                            </button>
                                                                        </div>
                                                                        <!--Footer-->
                                                                        <div class="modal-footer justify-content-center">
                                                                            <a href="${x.getUserID()}" type="button" class="btn btn-info">Go to view infor</a>
                                                                            <a href="${x.getUserID()}" type="button" class="btn btn-outline-info waves-effect">Go to view user'post</a>
                                                                        </div>
                                                                    </div>
                                                                    <!--/.Content-->
                                                                </div>
                                                            </div>
                                                            <!-- Modal: modalAbandonedCart-->
                                                        </td>
                                                        <td class="${x.getCategory()}">${x.getCategory()}</td>
                                                        <td>${x.getCreate_Date()}</td>
                                                        <td>${x.getEndDate()}</td>
                                                        <td>${x.getStatus()}</td>
                                                        <td class="${x.getReadUnread()}a"><label class="badge ${x.getReadUnread()}">${x.getReadUnread()}</label></td>
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
                                                    <th>Check</th>
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