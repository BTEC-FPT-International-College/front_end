<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Deposit Content</title>
    <link rel="stylesheet" href="./grid.css">
    <link rel="stylesheet" href="./transaction-history-recharge.css">
    <link rel="stylesheet" href="./deposit-atm2.css">
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

    <style>
      
    </style>
</head>
<body>
    <%@ include file="./header-section.jsp" %>
    <!-- End of Header  -->

    <!-- Container  -->
    <div class="checkout" style="margin-top: 260px;">
      <div class="credit-card-box">
        <div class="flip">
          <div class="front">
            <div class="chip"></div>
            <div class="logo">
              <svg version="1.1" id="visa" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                   width="47.834px" height="47.834px" viewBox="0 0 47.834 47.834" style="enable-background:new 0 0 47.834 47.834;">
                <g>
                  <g>
                    <path d="M44.688,16.814h-3.004c-0.933,0-1.627,0.254-2.037,1.184l-5.773,13.074h4.083c0,0,0.666-1.758,0.817-2.143
                             c0.447,0,4.414,0.006,4.979,0.006c0.116,0.498,0.474,2.137,0.474,2.137h3.607L44.688,16.814z M39.893,26.01
                             c0.32-0.819,1.549-3.987,1.549-3.987c-0.021,0.039,0.317-0.825,0.518-1.362l0.262,1.23c0,0,0.745,3.406,0.901,4.119H39.893z
                             M34.146,26.404c-0.028,2.963-2.684,4.875-6.771,4.875c-1.743-0.018-3.422-0.361-4.332-0.76l0.547-3.193l0.501,0.228
                             c1.277,0.532,2.104,0.747,3.661,0.747c1.117,0,2.313-0.438,2.325-1.393c0.007-0.625-0.501-1.07-2.016-1.77
                             c-1.476-0.683-3.43-1.827-3.405-3.876c0.021-2.773,2.729-4.708,6.571-4.708c1.506,0,2.713,0.31,3.483,0.599l-0.526,3.092
                             l-0.351-0.165c-0.716-0.288-1.638-0.566-2.91-0.546c-1.522,0-2.228,0.634-2.228,1.227c-0.008,0.668,0.824,1.108,2.184,1.77
                             C33.126,23.546,34.163,24.783,34.146,26.404z M0,16.962l0.05-0.286h6.028c0.813,0.031,1.468,0.29,1.694,1.159l1.311,6.304
                             C7.795,20.842,4.691,18.099,0,16.962z M17.581,16.812l-6.123,14.239l-4.114,0.007L3.862,19.161
                             c2.503,1.602,4.635,4.144,5.386,5.914l0.406,1.469l3.808-9.729L17.581,16.812L17.581,16.812z M19.153,16.8h3.89L20.61,31.066
                             h-3.888L19.153,16.8z"/>
                  </g>
                </g>
              </svg>
            </div>
            <div class="number"></div>
            <div class="card-holder">
              <label>Card holder</label>
              <div></div>
            </div>
            <div class="card-expiration-date">
              <label>Expires</label>
              <div></div>
            </div>
          </div>
          <div class="back">
            <div class="strip"></div>
            <div class="logo">
              <svg version="1.1" id="visa" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                   width="47.834px" height="47.834px" viewBox="0 0 47.834 47.834" style="enable-background:new 0 0 47.834 47.834;">
                <g>
                  <g>
                    <path d="M44.688,16.814h-3.004c-0.933,0-1.627,0.254-2.037,1.184l-5.773,13.074h4.083c0,0,0.666-1.758,0.817-2.143
                             c0.447,0,4.414,0.006,4.979,0.006c0.116,0.498,0.474,2.137,0.474,2.137h3.607L44.688,16.814z M39.893,26.01
                             c0.32-0.819,1.549-3.987,1.549-3.987c-0.021,0.039,0.317-0.825,0.518-1.362l0.262,1.23c0,0,0.745,3.406,0.901,4.119H39.893z
                             M34.146,26.404c-0.028,2.963-2.684,4.875-6.771,4.875c-1.743-0.018-3.422-0.361-4.332-0.76l0.547-3.193l0.501,0.228
                             c1.277,0.532,2.104,0.747,3.661,0.747c1.117,0,2.313-0.438,2.325-1.393c0.007-0.625-0.501-1.07-2.016-1.77
                             c-1.476-0.683-3.43-1.827-3.405-3.876c0.021-2.773,2.729-4.708,6.571-4.708c1.506,0,2.713,0.31,3.483,0.599l-0.526,3.092
                             l-0.351-0.165c-0.716-0.288-1.638-0.566-2.91-0.546c-1.522,0-2.228,0.634-2.228,1.227c-0.008,0.668,0.824,1.108,2.184,1.77
                             C33.126,23.546,34.163,24.783,34.146,26.404z M0,16.962l0.05-0.286h6.028c0.813,0.031,1.468,0.29,1.694,1.159l1.311,6.304
                             C7.795,20.842,4.691,18.099,0,16.962z M17.581,16.812l-6.123,14.239l-4.114,0.007L3.862,19.161
                             c2.503,1.602,4.635,4.144,5.386,5.914l0.406,1.469l3.808-9.729L17.581,16.812L17.581,16.812z M19.153,16.8h3.89L20.61,31.066
                             h-3.888L19.153,16.8z"/>
                  </g>
                </g>
              </svg>
    
            </div>
            <div class="ccv">
              <label>CCV</label>
              <!-- <div>hi</div> -->
              <input id="csv-test" />
            </div>
          </div>
        </div>
      </div>
      <form class="form" autocomplete="off" novalidate>
        <fieldset>
          <label for="card-number">Card Number</label>
          
          <input type="num" id="card-number" class="input-cart-number" onchange="asignBankNumber()" maxlength="4" />
          <input type="num" id="card-number-1" class="input-cart-number" onchange="asignBankNumber()" maxlength="4" />
          <input type="num" id="card-number-2" class="input-cart-number" onchange="asignBankNumber()" maxlength="4" />
          <input type="num" id="card-number-3" class="input-cart-number" onchange="asignBankNumber()" maxlength="4" />
        </fieldset>
        <fieldset>
          <label for="card-holder">Card holder</label>
          <input type="text" id="card-holder" />
        </fieldset>
        <fieldset class="fieldset-expiration">
          <label for="card-expiration-month">Expiration date</label>
          <div class="select">
            <select id="card-expiration-month">
              <option></option>
              <option>01</option>
              <option>02</option>
              <option>03</option>
              <option>04</option>
              <option>05</option>
              <option>06</option>
              <option>07</option>
              <option>08</option>
              <option>09</option>
              <option>10</option>
              <option>11</option>
              <option>12</option>
            </select>
          </div>
          <div class="select">
            <select id="card-expiration-year">
              <option></option>
              <option>2016</option>
              <option>2017</option>
              <option>2018</option>
              <option>2019</option>
              <option>2020</option>
              <option>2021</option>
              <option>2022</option>
              <option>2023</option>
              <option>2024</option>
              <option>2025</option>
            </select>
          </div>
        </fieldset>
        <fieldset class="fieldset-ccv">
          <label for="card-ccv">CCV</label>
          <input type="text" id="card-ccv" maxlength="3" />
        </fieldset>
        <fieldset>
          <label for="card-holder" >Amount of Money</label>
          <input type="text"  id="amount-money" onchange="moneyToCoin()" type="number" maxlength="6"/>
        </fieldset>
        
        <div class="row-button">
          <div class="col-btn1">
            <button class="btn2" style="padding: 12px"><a href="deposit-money.jsp?id=<%=request.getParameter("id")%>" style="" ><span class="glyphicon glyphicon-arrow-left"></span>  BACK</a></button>
          </div>
          <div class="col-btn2">
            <button class="btn2" id="submit-ok" value="submit" style="padding: 12px">
                <a href="deposit-atm2-success.jsp?id=<%=request.getParameter("id")%>" style="" ><i class="fa fa-lock"></i>  SUBMIT</a>
            </button>
            <!--<button id="submitdepo" >OK</button>-->
          </div>
        </div>
      </form>
    </div>
          <input id="deposit-date" style="display: none;"/>
          <input id="deposit-hour" style="display: none;"/>
          <input id="bank" value="vietcombank" style="display: none;"/>
          <input id="bank-account-number" style="display: none;"/>
          <input id="total-coin" style="display: none;"/>
          <input id="content-depo" style="display: none;" value="Chuyen khoan"/>
          <input id="walletid" style="display: none;" />
          <div id="add-walletid"></div>
          <script>
              //get date
              var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                var today = yyyy + '/' + mm + '/' + dd;
                console.log(today)
                document.getElementById("deposit-date").value = today;
                //get hour
                function addZero(i) {
                if (i < 10) {i = "0" + i}
                    return i;
                }
                const d = new Date();
                let h = addZero(d.getHours());
                let m = addZero(d.getMinutes());
                let s = addZero(d.getSeconds());
                let time = h + ":" + m + ":" + s;
                console.log(time)
                document.getElementById("deposit-hour").value = time;
                // asign bank acount number
                function asignBankNumber() {
                    var a = document.getElementById("card-number").value
                    var b = document.getElementById("card-number-1").value
                    var c = document.getElementById("card-number-2").value
                    var d = document.getElementById("card-number-3").value
                    var end = document.getElementById("card-number").value + document.getElementById("card-number-1").value + document.getElementById("card-number-2").value + document.getElementById("card-number-3").value;
                    console.log(end)
                    document.getElementById("bank-account-number").value = end
                }
                // change money to coin (*5)
                function moneyToCoin() {
                    var amount = document.getElementById("amount-money").value
                    console.log(amount)
                    var product = amount*5
                    console.log(product)
                    document.getElementById("total-coin").value = product
                }
                
                $(document).ready(function() {
                    let walletid = "";
                    //for profile
                    let id = '<%=request.getParameter("id")%>'
                    $.ajax({
                        url: "WalletController?ac=view",
                        method: "POST",
                        data: {get: id},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $.each(obj, function(key, value) {
                                walletid = value.walletID
                                $("#wallet").text(value.walletID)
                            });
                        },
                        error: function () {
                            alert("error");
                        }
                    });
                    var p = {};
                    var wl = {};
                    $("#submit-ok").click(function() {
                        p.createDate = $('#deposit-date').val();
                        p.amount = $('#amount-money').val();
                        p.name = $('#card-holder').val();
                        p.bank = $('#bank').val();
                        p.content = $('#content-depo').val();
                        p.bankAccount = $('#bank-account-number').val();
                      p.walletID = walletid;
                        p.createHour = $('#deposit-hour').val();
                        wl.surplus = $('#amount-money').val();
                        wl.userID = '<%=request.getParameter("id")%>'
                        const po = JSON.stringify(p)
                        const wlt = JSON.stringify(wl)
                        console.log(po)

                        $.ajax({
                            url: "RechargeController?ac=add",
                            type: "post",
                            data: {get: po},
                            success: function (data) {
                                let rs = $.parseJSON(data);
                                console.log(rs + "aaaaaaa")
//                                if (rs) {
////                                    $("#show").show();
//                                      alert("success");
//                                } else {
//                                    $("#error").show()
//                                }
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                        $.ajax({
                            url: "WalletController?ac=plus",
                            type: "post",
                            data: {get: wlt},
                            success: function (data) {
                                let rs = $.parseJSON(data);
                                console.log(rs)
                                if (rs) {
        //                                $("#show").show();
        //                            alert("UPDATE SUCCESSFUL")
                                } else {
                                    $("#error").show()
                                }
                            },
                            error: function () {
                                alert("error");
                            }
                        });
                    });
                });
                
          </script>
          
    <a class="the-most" target="_blank" href="#">
      <img src="https://infofinance.vn/wp-content/uploads/2020/10/ng%C3%A2nhangf.jpg">
      <!-- <div class="image"></div> -->
    </a>
    
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