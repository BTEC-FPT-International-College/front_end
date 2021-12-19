<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Transaction History</title>
    
    <link rel="stylesheet" href="./grid.css">
    <link rel="stylesheet" href="./transaction-history-recharge.css">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    
    
</head>
<body>
   
    <%@ include file="./header-section.jsp" %>
    <!-- Container  -->
    <div class="container-p">
        <script>
            $(document).ready(function() {
            let id = '<%=request.getParameter("id")%>'
            $.ajax({
                    url: "TransactionController?ac=view2",
                    method: "GET",
                    data: {getpr: id},
                    success: function (data) {
                        let rst = $.parseJSON(data);
                        console.log("aaaaa"+rst)
                        $.each(rst, function (key, value) {
                            $('#tbody').append('<tr><td>'+value.transactionID+'</td>' 
                    +"<td>"
                        +"<a href='viewTranByPost.jsp?idpost=" + value.postID + "&id="+id+"'" + ">" + value.postID + " "
                            +"<span class=\"glyphicon glyphicon-plane\" style=\" color: rgba(89, 171, 227, 0.8); \"></span>"
                        +"</a>"
                    +"</td>"
                    +"<td>"+value.packet+"</td>"
                    +"<td>"+value.price+"</td>"
                    +"<td>"+value.createDay+"</td>"
                    +'</tr>')
                        });
//                        $("#postid").text(rst[0].postID)
//                        $("#walletid").text(rst[0].walletID)
//                        $("#price").text(rst[0].price)
//                        $("#createday").text(rst[0].createDay)
                    },
                    error: function () {
                        alert("error");
                    }
                });
              
            });
        </script>


      <div class="content">
          <!--// for detail transaction history-->
          <div class='dialog overlay' id='my-dialog'>
              <a href="#" class="overlay-close"></a>
              <a href="#" class="dialog-close-btn">&times;</a>
          </div>
          <!--end of detail transaction history-->
            <%@ include file="./content1.jsp" %>
            <div class="content2" id="tabs">
<!--                 <div class="content2-title">
                  <i class="fas fa-history"></i>
                  Transaction History</div>-->
                <div class="content2-des">   
<!--                  <div class="btn-group btn-group-toggle choose" data-toggle="buttons">
                      <label href="" class="btn btn-secondary btns active" rel="panel1" >
                         <a href="transaction-history.jsp?id=<%=request.getParameter("id")%>" style="color: #fff; display: block; height: 48px;"> 
                        <input type="radio" name="options" id="option1" autocomplete="off" checked> 
                        <h3 style="display: inline; margin-top: 16px;">Transaction History</h3>
                         </a> 
                      </label>
                      <label class="btn btn-secondary btns"  rel="panel2" onclick="Redirect()">
                           <a href="recharge-history.jsp?id=<%=request.getParameter("id")%>" style="display: block; height: 48px;" > 
                         <input type="radio" name="options" id="option2" autocomplete="off" > 
                         <h3 style="display: inline; margin-top: 16px;">Recharge History</h3>
                           </a> 
                      </label>
                  </div> -->
                <div class="row choose-history-tran">
                    <div class="col l-6 sm-6 choose-tran"><a href="transaction-history.jsp?id=<%=request.getParameter("id")%>">Transaction History</a></div>
                    <div class="col l-6 sm-6 choose-recharge"><a href="recharge-history.jsp?id=<%=request.getParameter("id")%>">Recharge History</a></div>  
                </div>
                  <div class="row" style="margin-bottom: 12px;">
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
                
                  <table class="table table-bordered tbs active" id="tab1">
                    <thead>
                    <tr>
                    <th>ID</th>
                    <th>PostID</th>
                    <th>Packet</th>
                    <th>Price</th>
                    <th>Create Date</th>
                    </tr>
                    </thead>
                    <tbody id="tbody">
                        
                    </tbody>
                  </table>

                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- End of container -->

    <!--Footer-->
    <%@ include file="./footer.jsp" %>

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
    <script src="history.js"></script>
    
</body>
</html>