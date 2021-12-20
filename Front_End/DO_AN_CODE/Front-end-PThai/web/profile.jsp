<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="./thaicss/style-profile.css">
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
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    

   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <script>
            // thong bao
        $("#x").click(function () {
            $("#show").hide()
//            $("#form").trigger("reset");
//            $("#add").prop('disabled', true);
//            $("#check").hide()
        })
        $("#chuyen").click(function () {
            $("#show").hide()
//            $("#myForm").trigger("reset");
//            $("#add").prop('disabled', true);
//            $("#checkid").text("")
//            $("#checkemail").text("")
//            $("#checkphone").text("")
        })
        $(document).ready(function() {
            let id = '<%=request.getParameter("id")%>'
            console.log(id)
            $.ajax({
                    url: "ProfileController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let objpro = $.parseJSON(data);
                        console.log(objpro)
                        $("#fullname").val(objpro[0].fullName)
                        
                        
                        // Các cái phone, email kia làm tương tự
                        //lấy object phải giống trong entity user
                        $("#phone").val(objpro[0].phone)
                        $("#email").val(objpro[0].email)
                        $("#address").val(objpro[0].address)
                        $("#date").val(objpro[0].dateOfBirth)
                        let c = objpro[0].gender
                        if (c === '0')
                            $('#female').attr('checked', true)
                        else
                            $('#male').attr('checked', true)
                        
                    },
                    error: function () {
                        alert("error");
                    }
                });
              // for update profile
              var p = {};
                $("#submit-update").click(function() {
    //                alert("succeess");
                    p.fullName = $('#fullname').val();
                    p.phone = $('#phone').val();
                    p.email = $('#email').val();
                    p.dateOfBirth = $('#date').val();
                    p.gender = $('input[name=gender]:checked').val();
                    p.address = $('#address').val();
                    
                    p.userID =    '<%=request.getParameter("id")%>'
                    const po = JSON.stringify(p)
                    console.log(po)

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
</head>
<body>
    
    <%@ include file="./header-section.jsp" %>
    <!-- for successful add-->
            <div class="modal" tabindex="-1" id="show" role="dialog">
                <div class="modal-dialog alert-success" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" style="color:green">Successful UPDATE</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span id="x" aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>Do you want to stay on the page or change the page?</p>
                            <p>You will move to category management page</p>
                        </div>
                        <div class="modal-footer">
                            <button id="chuyen" type="button" class="btn btn-warning"><i class="mdi mdi-close"></i>Stay</button>
                            <a href="profile.jsp"><button id="close" type="button" class="btn btn-success" data-dismiss="modal"><i class="mdi mdi-arrow-right-bold"></i>Move</button></a>
                        </div>
                    </div>
                </div>
            </div>
    <!-- Container  -->
    <div class="container-p">
        <div class="content">
            <%@ include file="./content1.jsp" %>
            <div class="content2">
                <div class="content2-title">
                  <i class="fas fa-id-card"></i>
                  Account Info</div>
                <div class="content2-des">
                  <div class="content2-alert">
                    Please fill in all information to use the function
                  </div>
                    <div class="form-info">
                      <div class="form-group form-row">
                        <label for="name">
                          Full Name
                          <span class="required">(*)</span>
                        </label>
                          <input class="form-control" id="fullname" value="" style="width: 532px;">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Phone
                          <span class="required">(*)</span>
                        </label>
                          <input class="form-control" id="phone" style="width: 532px;" value="">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Email
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" id="email" style="width: 532px;" value="">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Date Of Bird
                          <span class="required"></span>
                        </label>
                          <input class="form-control date-control input-masked" id="date" value="" data-toggle="date-picker" style="width: 242px;">
                      </div>
                      <div class="form-group form-row" style="display: flex;">
                        <label for="name">
                          Gender
                          <span class="required"></span>
                        </label>
                        <div id="gender">
                            <label class="radio-inline" style="margin-left: 4px; margin-right: 16px"><input id="male" style="" type="radio" name="gender" value="1">Male</label>
                            <label class="radio-inline"><input id="female" type="radio" name="gender" value="0">Female</label>
                        </div>
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Address
                          <span class="required"></span>
                        </label>
                          <input class="form-control" id="address" style="width: 532px;" value="">
                      </div>
                    </div>
                  <div class="update-button">
                    <button style="background: #a71f07;
                                color: #fff;
                                padding: 6px 12px;
                                margin-top: 20px;
                                border-radius: 4px;" type="submit" value="submit" id="submit-update" >
                        UPDATE INFO</button>
                  </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </div>
    <!--End of container--> 
    
    <!--Footer-->
    <%@ include file="./footer.jsp" %>
    

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