<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./thaicss/grid.css">
    <link rel="stylesheet" href="./thaicss/transaction-history-recharge.css">
    <link rel="stylesheet" href="./thaicss/deposit-atm2.css">
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
    <html>
  <head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
  </head>
    <style>
      body {
        text-align: center;
        padding: 40px 0;
        background: linear-gradient(50deg, #f3c680, #a1e3e2);
      }
        h1 {
          color: #88B04B;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-weight: 900;
          font-size: 40px;
          margin-bottom: 10px;
        }
        p {
          color: #404F5E;
          font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
          font-size:20px;
          margin: 0;
        }
      i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
      }
      .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
      }
      .button-back button {
        background: linear-gradient(180deg, #49a09b, #3d8291);
        text-transform: uppercase;
        font-weight: bold;
        border: none;
        -webkit-box-shadow: none;
        box-shadow: none;
        text-shadow: 0 1px 2px rgb(0 0 0 / 20%);
        padding: 12px;
        margin-top: 20px;
        width: 439px;
        color: #fff;
      }
      .button-back button:hover {
        opacity: .6;
      }
      .coin-plus {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        transform: translateY(244px);
        font-size: 24px;
        color: #479b99;
      }
      .coin-plus div:last-child {
        margin-left: 4px;
      } 
      .coin-plus {
        animation: drop 10s infinite;
      }
      @keyframes drop {
        0% {
          transform: translate3d(10px, 500px, 0px);

        }
        25% {
          transform: translate3d(25px, 400px, 0px);
          color: #68b3af;
        }
        50% {
          transform: translate3d(50px, 300px, 0px);
          color: #81b9b7;
        }
        75% {
          transform: translate3d(50px, 200px, 0px);
          color: #95bdbb;
        }
        100% {
          transform: translate3d(0px, 100px, 0px);
          color: #a9bbba;
        }
      }
    </style>
    <body>
      <div class="coin-plus">
        <div>
          <span class="glyphicon glyphicon-plus"></span>
        </div>
        <div>10000 </div>
        <!--<div>COINS</div>-->
        <div>
            <span class="glyphicon glyphicon-heart" style="font-size: 24px; font-size: 50px;"></span>
        </div>
      </div>
      <div class="card">
        <div style="border-radius:200px; height:200px; width:200px; background: #F8FAF5; margin:0 auto;">
          <i class="checkmark">?</i>
        </div>
        
        <h1>Success</h1> 
        <p>Your transfer has been successful! <br/>Thank you for using our service.</p>
      </div>
      <div class="button-back">
        <a href="deposit-money.jsp?id=<%=request.getParameter("id")%>">
          <button>Back</button>
        </a>
      </div>
      
    </body>
</html>
</body>
</html>