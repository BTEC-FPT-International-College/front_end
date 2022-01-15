<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Transaction History</title>

        <link rel="stylesheet" href="./thaicss/grid.css">
        <link rel="stylesheet" href="./thaicss/transaction-history-recharge.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

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



        <!-- Main style sheet -->
        <link href="./css/style.css" rel="stylesheet">     
        <!-- jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>



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
    </head>
    <body>

        <%@ include file="./header-section.jsp" %>
        <!-- Container  -->
        <div class="container-p">

            <div class="content">
                <!--// for detail transaction history-->
                <div class='dialog overlay' id='my-dialog'>
                    <a href="#" class="overlay-close"></a>
                    <a href="#" class="dialog-close-btn">&times;</a>
                </div>
                <!--end of detail transaction history-->
                <%@ include file="./content1.jsp" %>
                <div class="content2" id="tabs" style="height: auto">
                    <div class="content2-des">   
                        <div class="row choose-history-tran">
                            <div class="col l-6 sm-6 choose-tran"><a href="transaction-history.jsp?id=<%=request.getParameter("id")%>">Transaction History</a></div>
                            <div class="col l-6 sm-6 choose-recharge"><a href="recharge-history.jsp?id=<%=request.getParameter("id")%>">Recharge History</a></div>  
                        </div>
                   <!--     <div class="row" style="margin-bottom: 12px;">
                            <div class="col l-4" style="padding-left: 16px;">
                                <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search hear..." class="form-control" >
                            </div>
                            <div class="col l-6" style=" ">
                                <div class="input-daterange input-group" style="height: 34px;" id="datepicker">
                                    <input type="date" class="input-sm form-control" style="height: 34px; z-index: 0;" name="from" placeholder="From date"/>
                                    <span class="input-group-addon">to</span>
                                    <input type="date" class="input-sm form-control" style="height: 34px; z-index: 0;" name="to" placeholder="To date"/>
                                </div>
                            </div>
                            <div class="col l-2">
                                <h4 id="button-search"><i class="fas fa-search"></i></h4>
                            </div>
                        </div>
                        -->
                        <table class="table table-bordered" id="tab1">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>PostID</th>
                                    <th>Content</th>
                                    <th>Packet</th>
                                    <th>Price</th>
                                    <th>Create Date</th>
                                    <th>Create Hour</th>

                                </tr>
                            </thead>
                            <tbody id="tbody">

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- End of container -->
        <script>

            $(document).ready(function () {


                let id = '<%=request.getParameter("id")%>'
                $.ajax({
                    url: "TransactionController?ac=view2",
                    method: "GET",
                    data: {getpr: id},
                    success: function (data) {
                        $('#tab1').DataTable({
                            "order": [[0, "desc"]]
                        });

                        let rst = $.parseJSON(data);
                        console.log(rst)
                        var t = $('#tab1').DataTable();
                        $.each(rst, function (key, value) {
                            t.row.add([
                                value.transactionID,
                                "<a href='viewTranByPost.jsp?idpost=" + value.postID + "&id=" + id + "'" + ">" + value.postID + " "
                                       + "<span class=\"glyphicon glyphicon-plane\" style=\" color: rgba(89, 171, 227, 0.8); \"></span>"
                                        +"</a>",
                                value.content,
                                value.packet,
                                value.price,
                                value.createDay,
                                value.createHour
                            ]).draw(false);
                        });
                    },
                    error: function () {
                        alert("error");
                    }
                });

            });
        </script>
        <!--Footer-->
        <%@ include file="./footer.jsp" %>

        <!-- jQuery library -->
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
        <!--<script src="js/jquery.min.js"></script>-->
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
        <script src="history.js"></script>

    </body>
</html>