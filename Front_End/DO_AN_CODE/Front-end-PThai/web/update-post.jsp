<!DOCTYPE html>
<html lang="en">
<head>
    <!--<meta charset="UTF-8">-->
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
    <title>Update Post</title>
    <link rel="stylesheet" href="./grid.css">
    <link rel="stylesheet" href="./template/css/update-post.css">
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

    <input type="checkbox" name="" id="nav-input">
    <label class="nav__overlay" for="nav-input"></label>
    <div class="content1 nav__content" style="z-index: 99999999 ">
      <label class="nav__close nav__bars-btn" for="nav-input">
        <i class="fas fa-chevron-circle-left"></i>
      </label>
      
    
     
    </div>
    
    <%@ include file="./content1.jsp" %>
    <div class="content3 body-form" style="height: 2860px;">
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
                                <span id="x-button" aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Do you want to stay on the page or change the page?</p>
                            <p>You will move to category management page</p>
                        </div>
                        <div class="modal-footer">
                            <button id="chuyen" type="button" class="btn btn-warning"><i class="mdi mdi-close"></i>Stay</button>
                            <a href="profile.jsp?id=<%=request.getParameter("id")%>"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
                        </div>
                    </div>
                </div>
            </div>
            <!--for error add--> 
<!--            <div class="alert alert-danger alert-dismissible fade show" id="error" role="alert" style="display: none">
                <strong>Fail Add!</strong> Please wait check out again and read guidance!!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>-->
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
            <h4>Provice / City</h4>
            <select class="form-control" id="province" name="ls_province"></select>
            <h4>District</h4>
            <select class="form-control" id="district" name="ls_district"></select>
            <h4>Wards</h4>
            <select class="form-control" id="ward" name="ls_ward"></select>
            <script src="vietnamlocalselector.js"></script>
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
            <textarea class="form-control" id="description" placeholder="Enter description"></textarea>
          </div>
          <div class=" content3__child content3__estate">
            <h2>Real estate information </h2>
            <h3 style="margin-top: 10px;">Specific description</h3>
            <h4>Area*</h4>
            <input class="form-control" type="text" id="area" placeholder="Input area (m²)">
            <h4>Price*</h4>
            <input class="form-control" type="text" id="price"  placeholder="Input price / m²">
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
                  var uppy = Uppy.Core()
                    .use(Uppy.Dashboard, {
                      inline: true,
                      target: '#drag-drop-area'
                    })
                    .use(Uppy.Tus, {endpoint: 'https://master.tus.io/files/'}) //you can put upload URL here, where you want to upload images

                  uppy.on('complete', (result) => {
                    console.log('Upload complete! We?ve uploaded these files:', result.successful)
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
              <option value="2">Vip 1</option>
              <option value="3">Vip 2</option>
              <option value="4">Vip 3</option>
            </select>
            <h4>Start date</h4>
            <div class="input-daterange input-group" style="height: 34px;" id="datepicker">
              <input data-toggle="date-picker"  class="input-sm form-control start-date" id="pick_date" onchange="fixStartDate(); cal(); calTypes();"  style="height: 34px; width:170px;font-size: 13px; z-index: 0;" name="from" placeholder="From date"/>
              <span class="input-group-addon">to</span> 
              <input type="date" class="input-sm form-control" id="drop_date" onchange="cal(); calTypes(); " style="height: 34px; width:154px;font-size: 13px; z-index: 0;" name="to" placeholder="To date"/>
            </div>
            
           
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
            <button type="submit" value="submit" id="submit" >Update</button>
            
          </div>
        <!-- </div> -->
      </div>
      
    </div>
   <!--</form>-->
  
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
      <script>
        $("#x-button").click(function () {
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
        $(document).ready(function() {
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
                        $(".reward-point").val(obj[0].rewardPoint)
                        $("#name-contact").val(obj[0].fullName)
                        $("#phone-contact").val(obj[0].phone)
                        $("#mail-contact").val(obj[0].email)
                        $("#address-contact").val(obj[0].address)
                    },
                    error: function () {
//                        alert("error");
                    }
                });
                $.ajax({
                    url: "WalletController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        console.log(obj)
                        $(".wallet-post").val(obj[0].surplus)
                    },
                    error: function () {
//                        alert("error");
                    }
                });
                
            //end for profile
            var p = {};
            var pr = {};
            var wl = {};
            $("#submit").click(function() {
//                alert("succeess");
                p.title = $('#title').val();
                p.avatar = $('#drag-drop-area').val();
                p.area = $('#area').val();
                p.price = $('#price').val();
//                p.saleRent = $('#title').val();
                p.description = $('#description').val();
                p.saleRent = $('input[name=salerent]:checked').val();

                const province = $("#province option:selected").text();
                const district = $('#district option:selected').text();
                const ward = $('#ward option:selected').text();
                const detail = $('#address').val();
                p.location = province + district + ward;
                p.room = $('#room').val();
                p.bath = $('#bath').val();
                p.postType = $('#type-post option:selected').attr('text');
                p.createDay = $('#pick_date').val();
                p.endDay = $('#drop_date').val();
                p.priod = $('#sumDay2').val();
                wl.surplus = $('#sumAll').val();
                pr.rewardPoint = $('#postCost').val();
                p.userId =    '<%=request.getParameter("id")%>'
                pr.userID =    '<%=request.getParameter("id")%>'
                wl.userID =    '<%=request.getParameter("id")%>'
                const po = JSON.stringify(p)
                const prr = JSON.stringify(pr)
                const wlt = JSON.stringify(wl)
                console.log(po)
                
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
                        alert("error");
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
                        alert("error");
                    }
                });
                $.ajax({
                    url: "WalletController?ac=minus",
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
    
    <script>
    $(document).ready(function() {
            let postid = '<%=request.getParameter("postId")%>'
            console.log("aaa"+postid)
            $.ajax({
                    url: "UpdatePostController?ac=view",
                    method: "POST",
                    data: {gets: postid},
                    success: function (data) {
                        let objpro = $.parseJSON(data);
                        console.log("aaa"+objpro)
//                        $("#fullname").val(objpro[0].fullName)
                        
                        
                        // Các cái phone, email kia làm tương tự
                        //lấy object phải giống trong entity user
//                        $("#phone").val(objpro[0].phone)
//                        $("#email").val(objpro[0].email)
//                        $("#address").val(objpro[0].address)
//                        $("#date").val(objpro[0].dateOfBirth)
//                        let c = objpro[0].gender
//                        if (c === '0')
//                            $('#female').attr('checked', true)
//                        else
//                            $('#male').attr('checked', true)
                        
                    },
                    error: function () {
                        alert("error");
                    }
                });
              // for update profile
              var p = {};
                $("#submit-update").click(function() {
    //                alert("succeess");
//                    p.fullName = $('#fullname').val();
//                    p.phone = $('#phone').val();
//                    p.email = $('#email').val();
//                    p.dateOfBirth = $('#date').val();
//                    p.gender = $('input[name=gender]:checked').val();
//                    p.address = $('#address').val();
//                    
//                    p.userID =    '<%=request.getParameter("id")%>'
//                    const po = JSON.stringify(p)
//                    console.log(po)

                    $.ajax({
                        url: "ProfileController?ac=update",
                        type: "post",
                        data: {get: po},
                        success: function (data) {
                            let rs = $.parseJSON(data);
                            console.log(rs)
                            if (rs) {
//                                $("#show").show();
                                alert("UPDATE SUCCESSFUL")
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
</body>
</html>