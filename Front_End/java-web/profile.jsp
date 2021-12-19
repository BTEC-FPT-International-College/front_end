<%@include file="/common/taglib.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="<c:url value='/template/thai/style-profile.css'/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    
    <!-- Favicon -->
    <link rel="shortcut icon" href="<c:url value='/template/img/iconbtec.png'/>" type="image/x-icon">
    <!-- Font awesome -->
    <link href="<c:url value='template/thai/css/font-awesome.css'/>" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="<c:url value='template/thai/css/bootstrap.css'/>" rel="stylesheet">   
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value='template/thai/css/slick.css'/>">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value='template/thai/css/nouislider.css'/>">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="<c:url value='template/thai/css/jquery.fancybox.css'/>" type="text/css" media="screen" /> 
    <!-- Theme color -->
    <link id="switcher"  href="<c:url value='template/thai/css/theme-color/default-theme.css'/>"rel="stylesheet">     

    <!-- Main style sheet -->
    <link href="<c:url value='template/thai/css/style.css'/>" rel="stylesheet">    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    
</head>
<body>
  <%@ include file="/view/web/header-section.jsp" %>
    	<dec:body/>
    <!--Footer-->
    <%@ include file="/common/footer.jsp" %>
    

    <!-- jQuery library -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
    <script src="template/thai/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="template/thai/js/bootstrap.js"></script>
    <!-- slick slider -->
    <script type="text/javascript" src="template/thai/js/slick.js"></script>
    <!-- Price picker slider -->
    <script type="text/javascript" src="template/thai/js/nouislider.js"></script>
    <!-- mixit slider -->
    <script type="text/javascript" src="template/thai/js/jquery.mixitup.js"></script>
    <!-- Add fancyBox -->
    <script type="text/javascript" src="template/thai/js/jquery.fancybox.pack.js"></script>
    <!-- Custom js -->
    <script src="template/thai/js/custom.js"></script>
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
                        console.log("error");
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
    
</body>
</html>