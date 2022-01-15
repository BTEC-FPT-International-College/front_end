<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Deposit Method</title>
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
            <div class="content2" style="height: 762px;">
                <div class="content2-title" style="margin-top: 20px; border-bottom: 1px solid; font-size: 24px; color: #59abe3;">
                  <i class="fas fa-wallet"></i>
                  Deposit Money to Wallet</div>
                
                <div class="content2-choose">
                  <div class="content2-choose-title">
                    <h3 style="font-weight: 600; color: #59abe3;">Choose one method</h3>
                    <h4>1 dollar for 5 coins</h4>
                  </div>
                    <div class="content2-choose-des" style="height: 590px">
                    <div class="row">
                      <div class="col l-4 m-12 c-12 item1">
                        <a href="deposit-atm.jsp?id=<%=request.getParameter("id")%>">
                          <div class="img-item1 pic-payment"></div>
                        </a>
                        <!-- <a href="deposit-atm.html"> -->
                          <h4>ATM CARD</h4>
                        <!-- </a> -->
                      </div>
                      <div class="col l-4 m-12 c-12 item2">
                        <a href="#">
                          <div class="img-item2 pic-payment"></div>
                          <h4>MOMO WALLET</h4>
                        </a>
                      </div>
                      
                      <div class="col l-4 m-12 c-12 item3" id="item3-payment" style="cursor: pointer;">
                        <!-- <a href="#"> -->
                          <div class="img-item3 pic-payment"></div>
                          <h4>TRANSFER</h4>
                        <!-- </a> -->
                      </div>
                    </div>
                    
                    <div class="content2-coin-animation">
                      <svg width="100%" height="800">
                        <g class="coin4">
                          <circle cx="100" cy="220" r="35" fill="#ffd900"/>
                          <circle cx="260" cy="220" r="25" fill="#fff300"/>
                          <rect   x="255"  y="205"  width="10" height="30" fill="#ffd900"/>
                        </g>
                        <g class="coin1">
                          <circle cx="260" cy="220" r="35" fill="#ffd900"/>
                          <circle cx="260" cy="220" r="25" fill="#fff300"/>
                          <rect   x="255"  y="205"  width="10" height="30" fill="#ffd900"/>
                        </g>
                  
                        <g class="coin2">
                          <circle cx="340" cy="230" r="35" fill="#ffd900"/>
                          <circle cx="340" cy="230" r="25" fill="#fff300"/>
                          <rect   x="335"  y="215"  width="10" height="30" fill="#ffd900"/>
                        </g>
                        <g class="coin3">
                          <circle cx="420" cy="240" r="35" fill="#ffd900"/>
                          <circle cx="420" cy="240" r="25" fill="#fff300"/>
                          <rect   x="415"  y="225"  width="10" height="30" fill="#ffd900"/>
                        </g>
                        <g class="coin5">
                          <circle cx="420" cy="240" r="35" fill="#ffd900"/>
                          <circle cx="420" cy="240" r="25" fill="#fff300"/>
                          <rect   x="415"  y="225"  width="10" height="30" fill="#ffd900"/>
                        </g>
                      </svg>
                    </div>
                  </div>
                  <!-- for transfer payment -->
                  <div class="content2-transfer-payy" id="content2-transfer-pay" style="transform: translateY(-384px); display: none;">
                    <div class="content2-des-transfer">
                      <div class="content2-des-info-transfer">
                        <h4>Transfer content</h4>
                        <p style="color: rgb(209, 80, 80);">Please fill in the following information: "phone number: Account name" (registered at BTEC Land)</p>
                        <div class="support-hot" style="display: flex;">
                          Support hotline:
                          <div class="num" style="color: rgb(209, 80, 80); margin-left: 12px;">000232344</div>
                        </div>
    
                      </div>
                      <table class="table table-bordered tb-tran">
                        <thead>
                        <tr>
                        <th>Account number</th>
                        <th>Bank</th>
                        <th>Branch</th>
                        <th>Account holder</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                          <td>000999333777</td>
                          <td>Viettel Military Bank</td>
                          <td>Cau Giay District Branch</td>
                          <td>Real estate company BTEC Land</td>
                        </tr>
                        
                      </table>
                    </div>
                  </div>
                  
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    
    <!-- End of container -->

    <%@ include file="./footer.jsp" %>
    <script>
      document.getElementById("item3-payment").onclick = function () {
          var a = document.getElementById("content2-transfer-pay")
          if (a.style.display === "none") {
            a.style.display = 'block';
          } else {
            a.style.display = 'none';
          }
          
      };
    </script> 

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