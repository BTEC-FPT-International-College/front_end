<!DOCTYPE html>
<html lang="en">
<head>
    <!--<meta charset="UTF-8">-->
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>Create Post</title>
    <link rel="stylesheet" href="./grid.css">
    <link rel="stylesheet" href="./postnew.css">
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
    <link href="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.css" rel="stylesheet">
  
    <!-- Date picker  -->
    <!-- <link rel="stylesheet" href="https://scripts.guru/download/datetimepicker/css/bootstrap.min.css">
	  <link href="https://scripts.guru/download/datetimepicker/css/bootstrap-datetimepicker.css" rel="stylesheet"> -->
    
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

    <%@ include file="./content1.jsp" %>
   
    <div class="row content3" style="height: 2860px;">
      <!-- <div class="row"> -->
        <div class="col l-8 content3__con1">
          <div class=" content3__child content3__basic">
            <h2 style="margin-bottom: 10px;">Basic Infomation</h2>
            <!-- for successful add-->
            <div class="modal" tabindex="-1" id="show" role="dialog">
                <div class="modal-dialog alert-success" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" style="color:green">Successful Add</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span id="x" aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Do you want to stay on the page or change the page?</p>
                            <p>You will move to profile page</p>
                        </div>
                        <div class="modal-footer">
                            <button id="chuyen" type="button" class="btn btn-warning"><i class="mdi mdi-close"></i>Stay</button>
                            <a href="profile.jsp?id=<%=request.getParameter("id")%>"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--for less coin-->
            <div class="modal" tabindex="-1" id="errorcoin" role="dialog">
                <div class="modal-dialog alert-success" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2 class="modal-title" style="color:rgb(238, 80, 31)">Add fail!!!</h2>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span id="x" aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>please recharge to continue making posts</p>
                        </div>
                        <div class="modal-footer">
                            <button id="chuyenerror" type="button" class="btn btn-warning"><i class="mdi mdi-close"></i>OK</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-group btn-group-toggle choose" data-toggle="buttons" id="saleRent">
              <label class="btn btn-secondary active">
                <input type="radio" name="salerent" value="sale" id="saleid" autocomplete="off" checked> Sale
              </label>
              <label class="btn btn-secondary">
                <input type="radio" name="salerent" value="rent" id="rentid" autocomplete="off"> Rent
              </label>
            </div> 
            <h4>Real estate type*</h4> 
            <select class="form-control">
              <option>Apartment</option>
              <option>Private house, street house</option>
              <option>Villa, adjacent houses</option>
              <option>The ground</option>
              <option>Residential land</option>
              <option>Office building</option>
              <option>Apartment condotel</option>
              <option>Officetel apartment</option>
              <option>Restaurant</option>
              <option>Warehouse, factory, kiot</option>
              <option>Other house and land</option>
            </select> 
            <h3>Address</h3>
            <h4>Province / City</h4>
            <select class="form-control" id="province" name="ls_province"></select>
            <h4>District</h4>
            <select class="form-control" id="district" name="ls_district"></select>
            <h4>Wards</h4>
            <select class="form-control" id="ward" name="ls_ward"></select>
            <script src="js/vietnamlocalselector.js"></script>
            <script>
              var localpicker = new LocalPicker({
                province: "ls_province",
                district: "ls_district",
                ward: "ls_ward"
                  });
                  
            </script>
            <h4>Detail address</h4>
            <textarea class="form-control" id="address" placeholder="Enter detail address"></textarea>
            
          </div>
          <div class=" content3__child content3__post">
            <h2>Post Info</h2>
            <h4>Title*</h4>
            <input class="form-control" type="text" id="title" placeholder="Input title">
            <h4>Description*</h4>
            <textarea class="form-control" id="description" placeholder="Enter description" required></textarea>
          </div>
          <div class=" content3__child content3__estate">
            <h2>Real estate information </h2>
            <h3 style="margin-top: 10px;">Specific description</h3>
            <h4>Area*</h4>
            <input class="form-control" type="number" id="area" placeholder="Input area (mÂ²)" required>
            <h4>Price*</h4>
            <input class="form-control" type="number" id="price"  placeholder="Input price / mÂ²" required>
            <h4>Room</h4>
            <div class="bedroom">
              <button onclick="increment()"><h1><i class="fas fa-plus"></i></h1></button>
              <button onclick="decrement()"><h1><i class="fas fa-minus"></i></h1></button>
              <script>
                function increment() {
                    document.getElementById('room').stepUp();
                }
                function decrement() {
                    document.getElementById('room').stepDown();
                }
              </script>
              <input class="form-control" id="room" type="number" min=0 max=110>
            </div>
            <h4>Bathroom</h4>
            <div class="bathroom">
              <button onclick="incrementBr()"><h1><i class="fas fa-plus"></i></h1></button>
              <button onclick="decrementBr()"><h1><i class="fas fa-minus"></i></h1></button>
              <script>
                function incrementBr() {
                    document.getElementById('bath').stepUp();
                }
                function decrementBr() {
                    document.getElementById('bath').stepDown();
                }
              </script>
              <input class="form-control" id="bath" type="number" min=0 max=110>
            </div>
           
          </div>
          <div class=" content3__child content3__image">
            <h2 style="margin-bottom: 10px;">Picture</h2>
            <form id="drag-drop-area">
                <script src="https://transloadit.edgly.net/releases/uppy/v1.6.0/uppy.min.js"></script>
                <script>
                    var urlImage = "";
                  var uppy = Uppy.Core()
                    .use(Uppy.Dashboard, {
                      inline: true,
                      target: '#drag-drop-area'
                    })
                    .use(Uppy.Tus, {endpoint: 'https://master.tus.io/files/'}) //upload images

                  uppy.on('complete', (result) => {
                    console.log('Upload complete! We?ve uploaded these files:', result.successful)
                    urlImage = result.successful[0].uploadURL
                    console.log("day la urrrl sdfsdf==== "+urlImage)
                   
                  })
                </script>
            </form>
          </div>
          <div class=" content3__child content3__contact">
            <h2>Contact Info</h2>
            <h4>Contact name*</h4>
            <input placeholder="Enter your name"  type="text" style="width: 344px;" id="name-contact" class="input-exist" value="">
            <h4>Phone number*</h4>
            <input placeholder="Enter your phone number"  type="text" class="input-exist" id="phone-contact" value="">
            <h4>Email</h4>
            <input placeholder="Enter your email"  type="text" class="input-exist" id="mail-contact" value="">
            <h4>Address</h4>
            <textarea class="form-control" placeholder="Enter address" id="address-contact"></textarea>
          </div>
        </div>
        <div class="col l-4 content3__con2">
          <div class="content3__con2-child">
            <h4>Type of post</h4>
            <select class="form-control" id="type-post" onChange="calTypes();">
              <option value="1">Regular post</option>
              <option value="2">Silver</option>
              <option value="3">Gold</option>
              <option value="4">Diamond</option>
            </select>
            <h4>Start date</h4>
            <div class="input-daterange input-group" style="height: 34px;" id="datepicker">
              <input data-toggle="date-picker"  class="input-sm form-control start-date" id="pick_date" onchange="fixStartDate(); cal(); calTypes();"  style="height: 34px; width:280px;font-size: 13px; z-index: 0;" name="from" placeholder="From date"/>
              <div class="todate">
                  <span class="input-group-addon">to</span>
                  <input type="date" class="input-sm form-control" id="drop_date" onchange="cal(); calTypes(); " style="height: 34px; width:280px;font-size: 13px; z-index: 0;" name="to" placeholder="To date"/>
              </div>
            </div>
            
            <script type="text/javascript">
                function fixStartDate() {
                    var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                var today = yyyy + '/' + mm + '/' + dd;
                console.log(today)
                document.getElementById("pick_date").value = today;
                }
                
                var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                var today = yyyy + '/' + mm + '/' + dd;
                console.log(today)
                document.getElementById("pick_date").value = today;
                
              // for cost
              function calTypes() {
                // var a = parseInt(sel.options[sel.selectedIndex].value)
                a = document.getElementById("type-post").value
                document.getElementById("postCost").value = a
                // document.getElementById("sumAll").value = parseInt(a * GetDays())
                if(document.getElementById("drop_date")){
                  document.getElementById("sumAll").value = a * GetDays();
                }
              }
              
              // for sumDay
              function GetDays(){
                var dropdt = new Date(document.getElementById("drop_date").value);
                var pickdt = new Date(document.getElementById("pick_date").value);
                // console.log(parseInt((dropdt - pickdt) / (24 * 3600 * 1000)))
                var b = parseInt((dropdt - pickdt) / (24 * 3600 * 1000))
                return b;
              }
              function cal(){
                if(document.getElementById("drop_date")){
                    document.getElementById("sumDay2").value=GetDays();
                    document.getElementById("sumDay22").value=GetDays();
                }  
              }
              
              //for sum all
              function tSum() {
                let a = parseInt(sel.options[sel.selectedIndex].value)
                document.getElementById("postCost").value = a
                var dropdt = new Date(document.getElementById("drop_date").value);
                var pickdt = new Date(document.getElementById("pick_date").value);
                // console.log(parseInt((dropdt - pickdt) / (24 * 3600 * 1000)))
                var b = parseInt((dropdt - pickdt) / (24 * 3600 * 1000))
                var c = a * b
                console.log(a)
                return c;
              }
              function sum() {
                document.getElementById("sumAll").value = tSum();
              }
              // coin after 
              function after() {
                  var price = document.getElementById("sumAll").value 
                  var after = document.getElementById("wallet-post").value 
                  var totalAfter = after - price
                  console.log(totalAfter)
                  console.log(after)
                  return after;
              }
            </script>
            <div class="total-posting-date">
              <h4>Total posting date</h4>
              <input type="number" class="form-control" style="pointer-events: none;" id="sumDay2" >
            </div>
            <div class="payment">
              <div class="payment-title">
                <div class="cost-day">
                  Posting cost / day
                  <input  id="postCost" style="pointer-events: none;" onchange="sum()" />
                  <div class="money">
                    Coin
                  </div>
                </div> 
                <div class="total-day">
                  Total days<input id="sumDay22" style="pointer-events: none;" onchange="sum()"/>
                  <div class="day">
                    Day
                  </div>
                </div>
              </div>
              <div class="payment-price">
                Total prices
                <input id="sumAll" onchange="tSum(); after();" style="pointer-events: none;
                                                            margin-left: 12px;"/>
              </div>
            </div>
            <input id="contenttran" style="display: none;" value="New Post"/>
            <input id="tran-hour" style="display: none;" />
            <button type="submit" value="submit" id="submit" >Next</button>
            <div id="currentpostid"></div>
          </div>
        <!-- </div> -->
      </div>
      
    </div>
   <!--</form>-->
    <script>
//        lay gio
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
        document.getElementById("tran-hour").value = time;
        $("#x").click(function () {
            $("#show").hide()
            $("#form").trigger("reset");
            $("#add").prop('disabled', true);
            $("#check").hide()
        })
        $("#chuyen").click(function () {
            $("#show").hide()
            $("#myForm").trigger("reset");
            $("#add").prop('disabled', true);
            $("#checkid").text("")
            $("#checkemail").text("")
            $("#checkphone").text("")
        })
        $("#chuyenerror").click(function() {
            $("#errorcoin").hide()
        })
        
        $(document).ready(function() {
            // for floating div
//            jQuery(function($) {
            $(window).scroll(function fix_element() {
              $('#content1').css(
                $(window).scrollTop() > 100
                  ? { 'position': 'fixed', 'top': '10px' }
                  : { 'position': 'relative', 'top': 'auto' }
              );
              return fix_element;
            }());
         
            //for profile
            let id = '<%=request.getParameter("id")%>'
            console.log(id)
            $.ajax({
                    url: "ProfileController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $(".name-post").text(obj[0].fullName)
//                        $(".reward-point").val(obj[0].rewardPoint)
                        $("#name-contact").val(obj[0].fullName)
                        $("#phone-contact").val(obj[0].phone)
                        $("#mail-contact").val(obj[0].email)
                        $("#address-contact").val(obj[0].address)
                        
                    },
                    error: function () {
                        alert("error")
                    }
                });
                let btecwallet = "";
                let walletid = "";
                $.ajax({
                    
                    url: "WalletController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $.each(obj, function(key, value) {
                            walletid = value.walletID
                           btecwallet = value.surplus
//                           $(".wallet-post").val(value.surplus) 
                        });
                    },
                    error: function () {
                        alert("view error");
                    }
                });
                
            //end for profile
            var p = {};
            var pr = {};
            var wl = {};
            var tr = {};
            $("#submit").click(function() {
//                alert("succeess");
                p.title = $('#title').val();
                p.avatar = $('#drag-drop-area').val();
                p.area = $('#area').val();
                p.price = $('#price').val();
//                p.saleRent = $('#title').val();
                p.description = $('#description').val();
                p.phone = $('#phone-contact').val();
                p.email = $('#mail-contact').val();
                p.saleRent = $('input[name=salerent]:checked').val();

                const province = $("#province option:selected").text();
                const district = $('#district option:selected').text();
                const ward = $('#ward option:selected').text();
                const detail = $('#address').val();
                p.province = province;
                p.district = district;
                p.ward = ward;
                p.detailAddress = detail;
                p.room = $('#room').val();
                p.bath = $('#bath').val();
                p.postType = $('#type-post option:selected').val();
                p.createDay = $('#pick_date').val();
                p.endDay = $('#drop_date').val();
                p.priod = $('#sumDay2').val();
                p.avatar = urlImage;
                wl.surplus = $('#sumAll').val();
                pr.rewardPoint = $('#postCost').val();
                tr.walletID = walletid;
                tr.content = $('#contenttran').val();
                tr.price = $('#sumAll').val();
                tr.createDay = $('#pick_date').val();
                tr.createHour = $('#tran-hour').val();
                tr.packet = $('#type-post option:selected').val();
                let postid2 = "";
                tr.postID = postid2;
                p.userId =    '<%=request.getParameter("id")%>'
                pr.userID =    '<%=request.getParameter("id")%>'
                wl.userID =    '<%=request.getParameter("id")%>'
                const po = JSON.stringify(p)
                const prr = JSON.stringify(pr)
                const wlt = JSON.stringify(wl)
                console.log(po)
                if (btecwallet > 0) {
                    $.ajax({
                        url: "PostController?ac=add",
                        type: "post",
                        data: {get: po},
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            
                            if (rs) {
                                $("#show").show();
                            } else {
                                $("#error").show()
                            }
                        },
                        error: function () {
                        }
                    });
                    $.ajax({
                        url: "PostController?ac=view",
                        method: "POST",
                        data: {get: id},
                        success: function (data) {
                            let obj = $.parseJSON(data);
                            console.log(obj)
                            $.each(obj, function(key, value) {
                                postid2 = value.postId
                                postid2 += 1
                                console.log("postid2= "+postid2)
                            });
                        },
                        error: function () {
                            alert("view error");
                        }
                    });
                    
                    console.log("postid 1 test"+postid2)
                    $.ajax({
                        url: "TransactionController?ac=add",
                        type: "post",
                        data: {get: po},
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            if (rs) {
                                $("#show").show();
                            } else {
                                $("#error").show()
                            }
                        },
                        error: function () {
                        }
                    });
                    $.ajax({
                        url: "ProfileController?ac=updaterw",
                        type: "post",
                        data: {get: prr},
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
                        }
                    });
                } else {
                    $("#errorcoin").show();               
                }
                
            });
        });
    </script>
  </div>
  <!-- End of container -->

  <!-- Footer  -->
  <footer id="aa-footer" style="margin-top: 2956px;">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-footer-area">
            <div class="row">
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="aa-footer-left">
                  <p>BTEC LAND</p>
                  <p>REAL ESTATE E-COMMERCE SYSTEM</p>
                </div>
              </div>
              <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="aa-footer-middle">
                  <a href="#"><i class="fa fa-facebook"></i></a>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                  <a href="#"><i class="fa fa-google-plus"></i></a>
                  <a href="#"><i class="fa fa-youtube"></i></a>
                </div>
              </div>
              <div class="col-md-6 col-sm-12 col-xs-12">
                <div class="aa-footer-right">
                  <a href="#">Home</a>
                  <a href="#">Support</a>
                  <a href="#">License</a>
                  <a href="#">FAQ</a>
                  <a href="#">Privacy & Term</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
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