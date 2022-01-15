<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Post Comment</title>
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
            <div class="modal-dialog alert-success" role="document" style="transform: translateX(-928px); padding: 0; box-shadow: rgb(16 16 123 / 25%) 0px 45px 27px -5px, rgb(0 0 0 / 30%) 8px 22px 16px -8px;">
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
                    <div class="content2-title">  Post Comment</div>
                    <!-- Advance Search -->
                    <div id="aa-advance-search-list">
                        <div class="container">
                            <div class="aa-advance-search-area">
                                <div class="form">
                                    <div class="aa-advance-search-top" style="margin-left: 30%">
<!--                                        <div class="row" >
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
                                                <input class="filter-button" onclick="avaible()" Style="background-color: #7aebab; padding: 10px" type="button" value="Avaible"> comment 
                                                <input class="filter-button" onclick="expired()" Style="background-color: #f57a7a; padding: 10px" type="button" value="Expired"> comment 
                                            </div>
                                        </div>-->
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
                                            <th scope="col" style="width: 40px">PostID</th>
                                            <th scope="col" style="width: 100px">Name</th>
                                            <th scope="col" style="width: 100px">Email</th>
                                            <th scope="col" style="width: 100px">Phone</th>
                                            <th scope="col" style="width: 100px">Content</th>
                                            <th scope="col" style="width: 100px">Create Day</th>
                                            
                                           
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
//                                                           
                                                            let id = '<%=request.getParameter("postId")%>'
                                                            $.ajax({
                                                                url: "DController?ac=viewcomment",
                                                                method: "GET",
                                                                data: {get: id},
                                                                success: function (data) {
                                                                    let o = $.parseJSON(data);
                                                                    console.log(o)
                                                                    $('#table-update-form').DataTable({
                                                                        "order": [[5, "desc"]]
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
                                                                                 value.postid,
                                                                                 value.name,
                                                                                 value.email,
                                                                                 value.phone,
                                                                                 value.content,
                                                                                 value.create_day,
                                                                                 
                                                                                
                                                                               
                                                                              
                                                                                 ]).draw(false);
                                                                          });
                                                                    $("#show").hide();
                                                                    $("#error").hide();
                                                                    $("#closeq").click(function () {
                                                                        $("#hellohello").hide();
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
                                                       
                                                        


</script>
</body>
</html>