<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Deposit Choose ATM</title>
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
    <link href="css/style.css" rel="stylesheet">    

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
     <script>                                                     <%
            String username = (String)session.getAttribute("User");
          if(username==null){
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
  
    <!-- End of Header  -->

    <!-- Container  -->
    <div class="container-p">
        <div class="content">
            <%@ include file="./content1.jsp" %>
            <div class="content2"  style="height: 764px;">
                <div class="content2-title" style="margin-top: 20px; border-bottom: 1px solid; font-size: 24px; color: #59abe3;">
                  <i class="fas fa-wallet"></i>
                  Deposit Money to Wallet</div>
                <div class="content2-des">
                  <div class="content2-des-info">
                    <h3>ATM Card:  </h3> 
                    <div class="info-atm">
                    </div>
                  </div>
                </div>
                <div class="content2-choose">
                  <div class="content2-choose-des">
                    <div class="row row-atm r1">
                      <div class="col l-2 m-4 c-12 atm-c atm1">
                        <a href="deposit-atm2.jsp?id=<%=request.getParameter("id")%>">
                          <div class="img-atm1"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm2">
                        <a href="deposit-atm2.html">
                          <div class="img-atm2"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm3">
                        <a href="deposit-atm2.html">
                          <div class="img-atm3"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm4">
                        <a href="deposit-atm2.html">
                          <div class="img-atm4"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm5">
                        <a href="deposit-atm2.html">
                          <div class="img-atm5"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm6">
                        <a href="deposit-atm2.html">
                          <div class="img-atm6"></div>
                        </a>
                      </div>
                    </div>
                    <div class="row row-atm r2">
                      <div class="col l-2 m-4 c-12 atm-c atm7">
                        <a href="deposit-atm2.html">
                          <div class="img-atm7"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm8">
                        <a href="deposit-atm2.html">
                          <div class="img-atm8"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm9">
                        <a href="deposit-atm2.html">
                          <div class="img-atm9"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm10">
                        <a href="deposit-atm2.html">
                          <div class="img-atm10"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm11">
                        <a href="deposit-atm2.html">
                          <div class="img-atm11"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm12">
                        <a href="deposit-atm2.html">
                          <div class="img-atm12"></div>
                        </a>
                      </div>
                    </div>
                    <div class="row row-atm r3">
                      <div class="col l-2 m-4 c-12 atm-c atm13">
                        <a href="deposit-atm2.html">
                          <div class="img-atm13"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm14">
                        <a href="deposit-atm2.html">
                          <div class="img-atm14"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm15">
                        <a href="deposit-atm2.html">
                          <div class="img-atm15"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm16">
                        <a href="deposit-atm2.html">
                          <div class="img-atm16"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm17">
                        <a href="deposit-atm2.html">
                          <div class="img-atm17"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm18">
                        <a href="deposit-atm2.html">
                          <div class="img-atm18"></div>
                        </a>
                      </div>
                    </div>
                    <div class="row row-atm r4">
                      <div class="col l-2 m-4 c-12 atm-c atm19">
                        <a href="deposit-atm2.html">
                          <div class="img-atm19"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm20">
                        <a href="deposit-atm2.html">
                          <div class="img-atm20"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm21">
                        <a href="deposit-atm2.html">
                          <div class="img-atm21"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm22">
                        <a href="deposit-atm2.html">
                          <div class="img-atm22"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm23">
                        <a href="deposit-atm2.html">
                          <div class="img-atm23"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm24">
                        <a href="deposit-atm2.html">
                          <div class="img-atm24"></div>
                        </a>
                      </div>
                    </div>
                    <div class="row row-atm r5">
                      <div class="col l-2 m-4 c-12 atm-c atm25">
                        <a href="deposit-atm2.html">
                          <div class="img-atm25"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm26">
                        <a href="deposit-atm2.html">
                          <div class="img-atm26"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm27">
                        <a href="deposit-atm2.html">
                          <div class="img-atm27"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm28">
                        <a href="deposit-atm2.html">
                          <div class="img-atm28"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm29">
                        <a href="deposit-atm2.html">
                          <div class="img-atm29"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm30">
                        <a href="deposit-atm2.html">
                          <div class="img-atm30"></div>
                        </a>
                      </div>
                    </div>
                    <div class="row row-atm r6">
                      <div class="col l-2 m-4 c-12 atm-c atm31">
                        <a href="deposit-atm2.html">
                          <div class="img-atm31"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm32">
                        <a href="deposit-atm2.html">
                          <div class="img-atm32"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm33">
                        <a href="deposit-atm2.html">
                          <div class="img-atm33"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm34">
                        <a href="deposit-atm2.html">
                          <div class="img-atm34"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm35">
                        <a href="deposit-atm2.html">
                          <div class="img-atm35"></div>
                        </a>
                      </div>
                      <div class="col l-2 m-4 c-12 atm-c atm36">
                        <a href="deposit-atm2.html">
                          <div class="img-atm36"></div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- End of container -->

    <!-- Footer  -->
    <%@ include file="./footer.jsp" %>
    <!-- End of Footer  -->

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

    
</body>
</html>