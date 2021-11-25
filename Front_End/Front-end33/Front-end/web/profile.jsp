<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="./style-profile.css">
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

   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
</head>
<body>
    
    <%@ include file="./header-section.jsp" %>
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
                  <c:forEach items="${listP}" var="x">
                    <div class="form-info">
                      <div class="form-group form-row">
                        <label for="name">
                          Full Name
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" value="${x.getFullName()}" style="width: 532px;">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Phone
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" style="width: 532px;" value="${x.getPhone()}">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Email
                          <span class="required">(*)</span>
                        </label>
                        <input class="form-control" style="width: 532px;" value="${x.getEmail()}">
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Date Of Bird
                          <span class="required"></span>
                        </label>
                        <input class="form-control date-control input-masked" value="${x.getDateOfBirth()}" data-toggle="date-picker" style="width: 242px;">
                      </div>
                      <div class="form-group form-row" style="display: flex;">
                        <label for="name">
                          Gender
                          <span class="required"></span>
                        </label>
                          <div class="">
                           Male <input type="radio" name="R1" value="Male" <c:if test="${x.getGender()=='0'}">checked</c:if>>
                           Female <input type="radio" name="R1" value="Female" <c:if test="${x.getGender()=='1'}">checked</c:if>>
                        </div>
                      </div>
                      <div class="form-group form-row">
                        <label for="name">
                          Address
                          <span class="required"></span>
                        </label>
                        <input class="form-control" style="width: 532px;" value="${x.getAddress()}">
                      </div>
                    </div>
                  </c:forEach>
                  <div class="update-button">
                    <div class="update-info">
                      UPDATE INFO
                    </div>
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