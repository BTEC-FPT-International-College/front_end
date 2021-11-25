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
    
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    
    
</head>
<body>
   
    <%@ include file="./header-section.jsp" %>
    <!-- Container  -->
    <div class="container-p">



      <div class="content">
            <div class="content1">
                <div class="content1-head">
                    <div class="content1-info">
                        <div class="content1-image">
                            <i  class="fas fa-camera-retro"></i>
                        </div>
                        <c:if test="${empty requestScope['listP']}">
                            <jsp:forward page="RechargeController?ac=view" />
                        </c:if>
                        <c:forEach items="${listP}" var="x">
                            <div class="content-description">
                                <div class="name">
                                    ${x.getFullName()}
                                </div>

                                <div class="wallet">
                                    BtecLand Wallet: ${x.getRewardPoint()}
                                    <div class="coin">Coin</div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>
                <div class="content1-below">
                    <div class="management">MANAGE POST
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-feather-alt"></i>
                              CREATE NEW POST
                            </a>
                        </div>
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-list-ol"></i>
                              LIST OF POST
                            </a>
                        </div>
                    </div>
                    <div class="management">MANAGEMENT PROFILE
                        <div class="management-des">
                            <a href=""><i class="far fa-user"></i>
                              ACCOUNT INFOMATION
                            </a>
                        </div>
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-key"></i>
                            CHANGE PASSWORD
                            </a>
                        </div>
                    </div>
                    <div class="management">MANAGEMENT WALLET
                        <div class="management-des">
                            <a href="">
                              <i class="fas fa-wallet"></i>
                            BALANCE 
                            </a>
                        </div>
                        <div class="management-des">
                            <a href="transaction-history.jsp">
                              <i class="fas fa-history"></i>
                            TRANSACTION HISTORY
                            </a>
                        </div>
                    </div>
                    <div class="content1-below-post">
                        <div class="post" >
                            <a href="" style="color: #fff;">
                              <i class="fas fa-feather-alt"></i>
                            CREATE POST
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="content2" id="tabs">
                <!-- <div class="content2-title">
                  <i class="fas fa-history"></i>
                  Transaction History</div>
                <div class="content2-des"> -->
                  <div class="btn-group btn-group-toggle choose" data-toggle="buttons">
                    <!-- <a href="transaction-history.jsp"> -->
                      <label href="" class="btn btn-secondary btns " rel="panel1" onclick="Redirectf();">
                        <!-- <a href="transaction-history.jsp"> -->
                        <input type="radio" name="options" id="option1" autocomplete="off" > <h3>Transaction History</h3>
                        <!-- </a> -->
                      </label>
                    <!-- </a> -->
                    <!-- <a href="recharge-history.html" > -->
                      <label class="btn btn-secondary btns active"  rel="panel2" onclick="Redirect();">
                          <input type="radio" name="options" id="option2" autocomplete="off" checked> <h3>Recharge History</h3>
                        
                      </label>
                    <!-- </a> -->

                  </div> 
                  <div class="row" style="margin-bottom: 12px;">
                    <div class="col l-4" style="padding-left: 16px;">
                      <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" >
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
                    <th>Amount Day</th>
                    <th>Created_at</th>
                    </tr>
                    </thead>
                    <tbody>
                        
                    <c:if test="${empty requestScope['listR']}">
                        <jsp:forward page="RechargeController?ac=view" />
                    </c:if>
                    <c:forEach items="${listR}" var="x">
                    <tr>
                      <td>${x.getRechargeID()}</td>
                      <td>${x.getContent()}</td>
                      <td>${x.getAmount()}</td>
                      <td>${x.getCreate_Date()}</td>
                    </tr>
                    </c:forEach>
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