<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recharge History</title>
    
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
                    url: "RechargeController?ac=view",
                    method: "GET",
                    data: {get: id},
                    success: function (data) {
                        let rst = $.parseJSON(data);
                        console.log(rst)
                        $.each(rst, function (key, value) {
                            $('#tbody').append('<tr><td>'+value.rechargeID+'</td>\n\
                    <td>'+value.content+'</td>\n\
                    <td>'+value.amount+'</td>\n\
                    <td>'+value.bank+'</td>\n\
                    <td>'+value.bankAccount+'</td>\n\
                    <td>'+value.createDate+'</td>\n\
                    </tr>')
                        });
                    },
                    error: function () {
                        alert("error");
                    }
                });
              
            });
        </script>


      <div class="content">
            <%@ include file="./content1.jsp" %>
            <div class="content2" id="tabs">
                <!-- <div class="content2-title">
                  <i class="fas fa-history"></i>
                  Transaction History</div>-->
            <div class="content2-des"> 
                  <div class="row choose-history-rech">
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
                    <th>Content</th>
                    <th>Money</th>
                    <th>Bank</th>
                    <th>Bank Account</th>
                    <th>Date</th>
                    </tr>
                    </thead>
                    <tbody id='tbody'>
                        
                   
                    <tr>
<!--                      <td style="width: 48px;">
                                <div class="col-sm-1 text-center">
                                    <span style="color: #76b6e1; transform: translateX(8px); font-size: 26px; height: 22px; opacity: .8;" class="glyphicon glyphicon-eye-open" aria-hidden="true">
                                    </span>
                                </div>
                      </td>-->
                    </tr>
                    
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
    <script type=âtext/javascriptâ src=âhttp://code.jquery.com/jquery-2.0.3.min.jsâ></script>
    <!-- Custom js -->
    <script src="js/custom.js"></script>
    <script src="history.js"></script>
    
</body>
</html>