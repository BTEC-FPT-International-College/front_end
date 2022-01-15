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
        <style>
            .Expired{
                background-color: #f57a7a;
                padding : 12px
            }
            .Avaible{
                background-color: #7aebab;
                padding : 12px
            }
        </style>
        <script src="https://smtpjs.com/v3/smtp.js">
</script>
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
                            url: "../../PostControllerAdmin?ac=search",
                            method: "POST",
                            data: {get: da},
                            success: function (data) {
                                let obj = $.parseJSON(data);
                                console.log(obj)
                                $("#dtOrderExample").DataTable().clear().destroy();
                                $('#dtOrderExample').DataTable({
                                    retrieve: true,
                                    paging: false,
                                    "order": [[0, "desc"]]
                                });

                                var t = $('#dtOrderExample').DataTable();
                                $.each(obj, function (key, value) {
                                    const now = Date.now()
                                    const end = new Date(Date.parse(value.EndDate))
                                    const isA = end - now
                                    console.log(isA)
                                    let status = "";
                                    if (isA > 0) {
                                        status = "Avaible";
                                    } else {
                                        status = "Expired";
                                    }
                                    const isBlock = value.isBlocked
                                let data = ""
                                if (isBlock == 0) {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Block</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                } else {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-border-color"></i>UnBlock</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>UnBlock</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                }
                                    t.row.add([
                                        value.PostID,
                                        "<a href='../../post-detail.jsp?postId=${value.getPostID()}'" + ">" + value.UserID + " </a>",
                                        value.Sale_rent,
                                        value.Create_Date,
                                        value.EndDate,
                                        "<div class='" + status + "'>" + status + "</div>",
                                        '<lable class=" badge ' + value.ReadUnread + '"' + ">" + value.ReadUnread + " </lable>",
                                        "<a href='../../post-detail.jsp?postId=" + value.PostID + "'" + 'title="'+value.PostID+'" class="update-read btn btn-primary a-btn-slide-text"' + ">"
                                                + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                                + '<i class="mdi mdi-eye"></i>'
                                                + '<span> <strong> View</strong></span>'
                                                + "</a>",
                                                 data
                                        
                                    ]).draw(false);
                                })
                                $(".1").addClass("badge-danger")
                                $(".1").text("No")
                                $(".0").text("Yes")
                                $(".0").addClass("badge-success")
                                 $('.update-read').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateRead",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.delete').click(function () {

                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.unblock').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
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
                        url: "../../PostControllerAdmin?ac=viewP",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[0, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                const now = Date.now()
                                const end = new Date(Date.parse(value.EndDate))
                                const isA = end - now
                                console.log(isA)
                                let status = "";
                                if (isA > 0) {
                                    status = "Avaible";
                                } else {
                                    status = "Expired";
                                }
                                const isBlock = value.isBlocked
                                let data = ""
                                if (isBlock == 0) {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Block</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                } else {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-border-color"></i>UnBlock</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>UnBlock</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                }
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Sale_rent,
                                    value.Create_Date,
                                    value.EndDate,
                                    "<div class='" + status + "'>" + status + "</div>",
                                    '<lable class=" badge ' + value.ReadUnread + '"' + ">" + value.ReadUnread + " </lable>",
                                    "<a href='../../post-detail.jsp?postId=" + value.PostID + "'" + 'title="'+value.PostID+'" class="update-read btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                            data
                                   
                                ]).draw(false);
                            })
                            $(".1").addClass("badge-danger")
                            $(".1").text("No")
                            $(".0").text("Yes")
                            $(".0").addClass("badge-success")
                             $('.update-read').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateRead",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.delete').click(function () {

                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.unblock').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
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
                        url: "../../PostControllerAdmin?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[0, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                const now = Date.now()
                                const end = new Date(Date.parse(value.EndDate))
                                const isA = end - now
                                console.log(isA)
                                let status = "";
                                if (isA > 0) {
                                    status = "Avaible";
                                } else {
                                    status = "Expired";
                                }
                                const isBlock = value.isBlocked
                                let data = ""
                                if (isBlock == 0) {
                                    data =
                                            `
                                    <div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal${value.postID}"><i class="mdi mdi-delete"></i>Block</button>
                                                                <div id="my-modal${value.postID}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                                        <div class="modal-content border-0">
                                                                            <div class="modal-body p-0">
                                                                                <div class="card border-0 p-sm-3 p-2 justify-content-center">
                                                                                    <div class="card-header pb-0 bg-white border-0 ">
                                                                                        <div class="row">
                                                                                            <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                                                                                        </div>
                                                                                        <p class="font-weight-bold mb-2"> Are you sure you wanna Block ${value.postID} post ?</p>
                                                                                        
                                                                                    </div>
                                                                                    <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                                                                                        <div class="row justify-content-end no-gutters">
                                                                                            <div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>
                                                                                            <div class="col-auto"><div class="col-auto"><button title="${value.postID}" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                    `
                                } else {
                                    data =
                                            `
                                    <div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal${value.postID}block"><i class="mdi mdi-border-color"></i>UnBlock</button>
                                                                <div id="my-modal${value.postID}block" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                                        <div class="modal-content border-0">
                                                                            <div class="modal-body p-0">
                                                                                <div class="card border-0 p-sm-3 p-2 justify-content-center">
                                                                                    <div class="card-header pb-0 bg-white border-0 ">
                                                                                        <div class="row">
                                                                                            <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                                                                                        </div>
                                                                                        <p class="font-weight-bold mb-2"> Are you sure you wanna Unblock ${value.postID} post ?</p>
                                                                                        
                                                                                    </div>
                                                                                    <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                                                                                        <div class="row justify-content-end no-gutters">
                                                                                            <div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>
                                                                                            <div class="col-auto"><div class="col-auto"><button title="${value.postID}" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>Unblock</button></div></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                    `
                                }
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Sale_rent,
                                    value.Create_Date,
                                    value.EndDate,
                                    "<div class='" + status + "'>" + status + "</div>",
                                    '<lable class=" badge ' + value.ReadUnread + '"' + ">" + value.ReadUnread + " </lable>",
                                    "<a href='../../post-detail.jsp?postId=" + value.PostID + "'" + 'title="'+value.PostID+'" class="update-read btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    data

                                ]).draw(false);
                            })
                            $(".1").addClass("badge-danger")
                            $(".1").text("No")
                            $(".0").text("Yes")
                            $(".0").addClass("badge-success")
                            $("#refesh").show()
                             $('.update-read').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateRead",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.delete').click(function () {

                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.unblock').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
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
                        url: "../../PostControllerAdmin?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[0, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                const now = Date.now()
                                const end = new Date(Date.parse(value.EndDate))
                                const isA = end - now
                                console.log(isA)
                                let status = "";
                                if (isA > 0) {
                                    status = "Avaible";
                                } else {
                                    status = "Expired";
                                }
                                const isBlock = value.isBlocked
                                let data = ""
                                if (isBlock == 0) {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Block</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                } else {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-border-color"></i>UnBlock</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>UnBlock</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                }
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Sale_rent,
                                    value.Create_Date,
                                    value.EndDate,
                                    "<div class='" + status + "'>" + status + "</div>",
                                    '<lable class=" badge ' + value.ReadUnread + '"' + ">" + value.ReadUnread + " </lable>",
                                    "<a href='../../post-detail.jsp?postId=" + value.PostID + "'" + 'title="'+value.PostID+'" class="update-read btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                            data
                                    
                                ]).draw(false);
                            })
                            $(".1").addClass("badge-danger")
                            $(".1").text("No")
                            $(".0").text("Yes")
                            $(".0").addClass("badge-success")
                            $("#refesh").show()
                             $('.update-read').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateRead",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.delete').click(function () {

                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.unblock').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
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
                        url: "../../PostControllerAdmin?ac=search1",
                        method: "POST",
                        data: {get: da},
                        success: function (data) {

                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[0, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(obj, function (key, value) {
                                const now = Date.now()
                                const end = new Date(Date.parse(value.EndDate))
                                const isA = end - now
                                console.log(isA)
                                let status = "";
                                if (isA > 0) {
                                    status = "Avaible";
                                } else {
                                    status = "Expired";
                                }
                                const isBlock = value.isBlocked
                                let data = ""
                                if (isBlock == 0) {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Block</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                } else {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-border-color"></i>UnBlock</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>UnBlock</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                }
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Sale_rent,
                                    value.Create_Date,
                                    value.EndDate,
                                    "<div class='" + status + "'>" + status + "</div>",
                                    '<lable class=" badge ' + value.ReadUnread + '"' + ">" + value.ReadUnread + " </lable>",
                                    "<a href='../../post-detail.jsp?postId=" + value.PostID + "'" + 'title="'+value.PostID+'" class="update-read btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                    data

                                ]).draw(false);
                            })
                            $(".1").addClass("badge-danger")
                            $(".1").text("No")
                            $(".0").text("Yes")
                            $(".0").addClass("badge-success")
                            $("#refesh").show()
                            $('.update-read').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateRead",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.delete').click(function () {

                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.unblock').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#refesh").click(function () {
                    $.ajax({
                        url: "../../PostControllerAdmin?ac=viewP",
                        method: "GET",
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            $("#dtOrderExample").DataTable().clear().destroy();
                            $('#dtOrderExample').DataTable({
                                retrieve: true,
                                paging: false,
                                "order": [[ 0, "desc"]]
                            });
                            var t = $('#dtOrderExample').DataTable();
                            $.each(rs, function (key, value) {
                                const now = Date.now()
                                const end = new Date(Date.parse(value.EndDate))
                                const isA = end - now
                                console.log(isA)
                                let status = "";
                                if (isA > 0) {
                                    status = "Avaible";
                                } else {
                                    status = "Expired";
                                }
                                const isBlock = value.isBlocked
                                let data = ""
                                if (isBlock == 0) {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-delete"></i>Block</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                } else {
                                    data =
                                            '<div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal' + value.PostID + '">' + '<i class="mdi mdi-border-color"></i>UnBlock</button>'
                                            + '<div id="my-modal' + value.PostID + '" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">'
                                            + '<div class="modal-dialog modal-dialog-centered" role="document">'
                                            + '<div class="modal-content border-0">'
                                            + '<div class="modal-body p-0">'
                                            + '<div class="card border-0 p-sm-3 p-2 justify-content-center">'
                                            + '<div class="card-header pb-0 bg-white border-0 ">'
                                            + '<div class="row">'
                                            + '<div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>'
                                            + '</div>'
                                            + '<p class="font-weight-bold mb-2"> Are you sure you wanna block' + value.PostID + 'post ?</p>'
                                            + '</div>'
                                            + '<div class="card-body px-sm-4 mb-2 pt-1 pb-0">'
                                            + '<div class="row justify-content-end no-gutters">'
                                            + '<div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>'
                                            + '<div class="col-auto"><div class="col-auto"><button title="' + value.PostID + '" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>UnBlock</button></div></div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                            + '</div>'
                                }
                                t.row.add([
                                    value.PostID,
                                    "<a href='viewDetailUser.jsp?id=" + value.UserID + "'" + ">" + value.UserID + " </a>",
                                    value.Sale_rent,
                                    value.Create_Date,
                                    value.EndDate,
                                    "<div class='" + status + "'>" + status + "</div>",
                                    '<lable class=" badge ' + value.ReadUnread + '"' + ">" + value.ReadUnread + " </lable>",
                                    "<a href='../../post-detail.jsp?postId=" + value.PostID + "'" + 'title="'+value.PostID+'" class="update-read btn btn-primary a-btn-slide-text"' + ">"
                                            + '<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>'
                                            + '<i class="mdi mdi-eye"></i>'
                                            + '<span> <strong> View</strong></span>'
                                            + "</a>",
                                              data
                                    
                                ]).draw(false);
                            })
                            $(".1").addClass("badge-danger")
                            $(".1").text("No")
                            $(".0").text("Yes")
                            $(".0").addClass("badge-success")
                            $("#refesh").hide()
                             $('.update-read').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateRead",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.delete').click(function () {

                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }
                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                            $('.unblock').click(function () {
                                let select = $(this).attr("title")
                                console.log(select)
                                $.ajax({
                                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                                    method: "POST",
                                    data: {get: select},
                                    success: function (data) {
                                        let rs = $.parseJSON(data);
                                        console.log(rs)
                                        if (rs) {
                                            location.reload()
                                        } else {
                                            alert("Error")
                                        }

                                    },
                                    error: function () {
                                        alert("error");
                                    }
                                });
                            })
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                })
                $("#orther").mouseenter(function (event) {
                    $.ajax({
                        url: "../../PostControllerAdmin?ac=viewTotalPost",
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
                    $("#dtOrderExample tbody tr").hide()
                    var flag = 1
                    $("input:checkbox[name=check]:checked").each(function () {
                        flag = 0;
                        var value = $(this).val();
                        $("#dtOrderExample tr").filter(function () {
                            if ($(this).text().indexOf(value) > -1)
                                $(this).show()
                        });
                    });
                    if (flag == 1)
                        $("#dtOrderExample tr").show()
                });


                $('#dtOrderExample thead tr')
                        .clone(true)
                        .addClass('filters')
                        .attr('id', 'filter')
                        .appendTo('#dtOrderExample thead')
                        .hide()
                var table = $('#dtOrderExample').DataTable({
                    orderCellsTop: true,
                    fixedHeader: true,
                    "order": [[0, "desc"]],
                    initComplete: function () {
                        var api = this.api();
                        console.log(api)
                        // For each column
                        api
                                .columns()
                                .eq(0)
                                .each(function (colIdx) {
                                    // Set the header cell to contain the input element
                                    var cell = $('.filters th').eq(
                                            $(api.column(colIdx).header()).index()
                                            );
                                    if (colIdx > 6) {
                                        $(cell).html('<a></a>');
                                    } else {

                                        var title = $(cell).text();
                                        $(cell).html('<input type="text" placeholder="' + title + '" />');
                                    }
                                    // On every keypress in this input
                                    $(
                                            'input',
                                            $('.filters th').eq($(api.column(colIdx).header()).index())
                                            )
                                            .off('keyup change')
                                            .on('keyup change', function (e) {
                                                e.stopPropagation();

                                                // Get the search value
                                                $(this).attr('title', $(this).val());
                                                var regexr = '({search})'; //$(this).parents('th').find('select').val();

                                                var cursorPosition = this.selectionStart;
                                                // Search the column for that value
                                                api
                                                        .column(colIdx)
                                                        .search(
                                                                this.value != ''
                                                                ? regexr.replace('{search}', '(((' + this.value + ')))')
                                                                : '',
                                                                this.value != '',
                                                                this.value == ''
                                                                )
                                                        .draw();

                                                $(this)
                                                        .focus()[0]
                                                        .setSelectionRange(cursorPosition, cursorPosition);
                                            });
                                });
                    },
                });
                $("#more").click(function () {
                    $("#filter").toggle()
                })
               

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
                                                    <h5 class="modal-title" style="color:green">Successful Block</h5>
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
                                                    <input name="check" type="checkbox" class="form-check-input check" value="Yes" />
                                                    Read
                                                </label>
                                            </div>
                                            <div class="form-check form-check-danger">
                                                <label class="form-check-label">
                                                    <input name="check" type="checkbox" class="form-check-input check" value="No" />
                                                    Unread
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            View by Category:
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input  name="check" type="checkbox" class="form-check-input check" value="sale" >
                                                    Buy
                                                </label>
                                            </div>
                                            <div class="form-check form-check-primary">
                                                <label class="form-check-label">
                                                    <input name="check" type="checkbox" class="form-check-input check" value="rent" >
                                                    Rent
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
                                    <span id="more" class="table-add float-right mb-3 mr-2"
                                          ><a href="#" class="text-success"
                                        ><i class="mdi mdi-chevron-double-down" style="font-size: 20px" aria-hidden="true"></i>More</a
                                        ></span>
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
                                                        Block
                                                    </th>
                                                </tr>

                                            </thead>
                                            <tbody>
                                                <c:if test="${empty requestScope['listPost']}">
                                                    <jsp:forward page = "../../PostControllerAdmin?ac=view" />
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
                                                                            <a href="viewDetailUser.jsp?id=${x.getUserID()}" type="button" class="btn btn-info">Go to view infor</a>
                                                                            <a href="viewPostByUser.jsp?id=${x.getUserID()}" type="button" class="btn btn-outline-info waves-effect">Go to view user'post</a>
                                                                        </div>
                                                                    </div>
                                                                    <!--/.Content-->
                                                                </div>
                                                            </div>
                                                            <!-- Modal: modalAbandonedCart-->

                                                        </td>
                                                        <td class="">${x.getSale_rent()}</td>
                                                        <td>${x.getCreate_Date()}</td>
                                                        <td>${x.getEndDate()}</td>

                                                        <c:if test = "${x.getStatus() >= 0}"><td style="background-color: #7aebab">
                                                                <c:out  value="Avaible"/>
                                                            </td>
                                                        </c:if>    

                                                        <c:if test = "${x.getStatus() < 0}"><td style="background-color: #f57a7a">
                                                                <c:out  value="Expired"/>
                                                            </td>
                                                        </c:if>
                                                        <td class="${x.getReadUnread()}a"><label class="badge ${x.getReadUnread()}">${x.getReadUnread()}</label></td>
                                                        <td>                          
                                                            <a href="../../post-detail.jsp?postId=${x.getPostID()}" target="blank" title="${x.getPostID()}" class="update-read btn btn-primary a-btn-slide-text">
                                                                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                                                <i class="mdi mdi-eye"></i>
                                                                <span> <strong> View</strong></span>            
                                                            </a>
                                                        </td>
                                                        <c:if test = "${x.getIsBlocked() == 0}"><td>
                                                                <div class="container d-flex justify-content-center"> <button class="btn btn-danger " data-toggle="modal" data-target="#my-modal${x.getPostID()}"><i class="mdi mdi-delete" onclick="sendEmail()"></i>Block</button>
                                                                    <div id="my-modal${x.getPostID()}" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                                            <div class="modal-content border-0">
                                                                                <div class="modal-body p-0">
                                                                                    <div class="card border-0 p-sm-3 p-2 justify-content-center">
                                                                                        <div class="card-header pb-0 bg-white border-0 ">
                                                                                            <div class="row">
                                                                                                <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                                                                                            </div>
                                                                                            <p class="font-weight-bold mb-2"> Are you sure you wanna Block ${x.getPostID()} post ?</p>

                                                                                        </div>
                                                                                        <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                                                                                            <div class="row justify-content-end no-gutters">
                                                                                                <div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>
                                                                                                <div class="col-auto"><div class="col-auto"><button title="${x.getPostID()}" type="button" class="btn btn-danger delete" data-dismiss="modal"><i class="mdi mdi-delete"></i>Block</button></div></div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </c:if>
                                                        <c:if test = "${x.getIsBlocked() == 1}"><td>
                                                                <div class="container d-flex justify-content-center"> <button class="btn btn-warning " data-toggle="modal" data-target="#my-modal${x.getPostID()}block"><i class="mdi mdi-border-color"></i>UnBlock</button>
                                                                    <div id="my-modal${x.getPostID()}block" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
                                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                                            <div class="modal-content border-0">
                                                                                <div class="modal-body p-0">
                                                                                    <div class="card border-0 p-sm-3 p-2 justify-content-center">
                                                                                        <div class="card-header pb-0 bg-white border-0 ">
                                                                                            <div class="row">
                                                                                                <div class="col ml-auto"><button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">&times;</span> </button></div>
                                                                                            </div>
                                                                                            <p class="font-weight-bold mb-2"> Are you sure you wanna Unblock ${x.getPostID()} post ?</p>

                                                                                        </div>
                                                                                        <div class="card-body px-sm-4 mb-2 pt-1 pb-0">
                                                                                            <div class="row justify-content-end no-gutters">
                                                                                                <div class="col-auto"><button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="mdi mdi-close-box-outline"></i>Cancel</button></div>
                                                                                                <div class="col-auto"><div class="col-auto"><button title="${x.getPostID()}" type="button" class="btn btn-warning unblock" data-dismiss="modal"><i class="mdi mdi-border-color"></i>Unblock</button></div></div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </c:if>

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
                                                        Block
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
        <script>
            $('.update-read').click(function () {
                let select = $(this).attr("title")
                console.log(select)
                $.ajax({
                    url: "../../PostControllerAdmin?ac=updateRead",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let rs = $.parseJSON(data);
                        console.log(rs)

                    },
                    error: function () {
                        alert("error");
                    }
                });
            })
            $('.delete').click(function () {
                let select = $(this).attr("title")
                console.log(select)
                $.ajax({
                    url: "../../PostControllerAdmin?ac=updateBlock",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let rs = $.parseJSON(data);
                        console.log(rs)
                        if (rs) {
                            location.reload()
                        } else {
                            alert("Error")
                        }
                    },
                    error: function () {
                        alert("error");
                    }
                });
            })
            $('.unblock').click(function () {
                let select = $(this).attr("title")
                console.log(select)
                $.ajax({
                    url: "../../PostControllerAdmin?ac=updateUnBlock",
                    method: "POST",
                    data: {get: select},
                    success: function (data) {
                        let rs = $.parseJSON(data);
                        console.log(rs)
                        if (rs) {
                            location.reload()
                        } else {
                            alert("Error")
                        }

                    },
                    error: function () {
                        alert("error");
                    }
                });
            })
        </script>
    </body>
</html>