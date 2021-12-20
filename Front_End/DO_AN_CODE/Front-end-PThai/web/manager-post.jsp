<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="./style-profile.css">
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
       
</head>
<body>
    
    <%@ include file="./header-section.jsp" %>
    <!-- for successful add-->
            <div class="modal" tabindex="-1" id="show" role="dialog">
                <div class="modal-dialog alert-success" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" style="color:green">Successful UPDATE</h5>
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
                            <a href="profile.jsp"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
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
                                <div class="aa-advance-search-top">
                                    <div class="row">
                                        <div class="col-md-2">
                                            <div class="aa-single-advance-search">
                                                <input type="text" placeholder="Type to search">
                                            </div>
                                        </div>

                                        <div class="col-lg-7">
                                            <form action="#" class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="input_from" placeholder=" Start Date">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="input_to" placeholder=" End Date">
                                                    </div>
                                                           </div>
                                            </form>
                                        </div>

                                        <div class="col-md-2">
                                            <div class="aa-single-advance-search">

                                            </div>
                                        </div>
                                        <div class="col-md-2">
                                            <div class="aa-single-advance-search">
                                                <input class="aa-search-btn" type="submit" value="Search">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- / Advance Search -->

<!--                <div class="row">-->
<!--                    <div class="col-md-12 stretch-card">-->
<!--                        <div class="card">-->
<!--                            <div class="card-body">-->
<!--                                <p class="card-title">Recent Purchases</p>-->
<!--                                <div class="table-responsive">-->
<!--                                    <table id="recent-purchases-listing" class="table">-->
<!--                                        <thead>-->
<!--                                        <tr>-->
<!--                                            <th>Id</th>-->
<!--                                            <th>Date</th>-->
<!--                                            <th>Post ID</th>-->
<!--                                            <th>User</th>-->
<!--                                            <th>Category</th>-->
<!--                                            <th>Packet</th>-->
<!--                                            <th>Total Day</th>-->
<!--                                            <th>Price</th>-->
<!--                                        </tr>-->
<!--                                        </thead>-->
<!--                                        <tbody>-->
<!--                                        </tbody>-->
<!--                                    </table>-->
<!--                                </div>-->
<!--                            </div>-->
<!--                        </div>-->
<!--                    </div>-->
<!--                </div>-->

                <div class="container">
                    <div class="row">
                        <div class="col-12" id="a-hover">
                            <table class="table table-bordered" id="table-update-form">
                                <thead>
                                <tr>
                                    <th scope="col">POST ID</th>
                                    <th scope="col">TITLE</th>
                                    <th scope="col">Date created</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">Expiration date</th>
                                    <th scope="col">Action</th>
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
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.js"></script>
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
        $(document).ready(function(){
        let id = '<%=request.getParameter("id")%>'
        console.log(id)
        $.ajax({
                    url: "ManagerPost?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let o = $.parseJSON(data);
                        console.log("aaaaaa"+o)
                         $.each(o, function (key, value) {
                            $('#tbody').append('<tr><td>'+value.postId+'</td>' 
                    +"<td>"
                       +"<a href='post-detail.jsp?postId="+value.postId+"'>"+value.title+"</a>"
                    +"</td>"
                    +"<td>"+value.createDay+"</td>"
            +"<td>"+value.status+"</td>"
                +"<td>"+value.end_day+"</td>"
                      +" <td>"
                               +'<a href="post-detail.jsp?postId='+value.postId+'"><button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button></a>'  
                               +' <a href="update-post.jsp?postId='+value.postId+'&&id='+id+'"><button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button></a>'     
                                 +'       <button type="button" class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>'
                                    +"</td>"     
                    +'</tr>')
//             <tr>
//                                    <td><a href="post-detail.html">Ciputra: Industrial and modern s</a></td>
//                                    <td>1/10/2021</td>
//                                    <td>106,789</td>
//                                    <td>Expired</td>
//                                    <td>20/10/2021</td>
//                                    <td>
//                                       <a href="post-detail.html"><button type="button" class="btn btn-primary"><i class="far fa-eye"></i></button></a>
//                                      <a href="update-post.html"><button type="button" class="btn btn-success"><i class="fas fa-edit"></i></button></a>
//                                        <button type="button" class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
//                                    </td>
//                                </tr>
                        });
                    },
                    error: function () {
                        alert("error");
                    }
                })
        } );
    </script>
</body>
</html>