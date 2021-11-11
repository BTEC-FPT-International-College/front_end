<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><dec:title default="BTEC LAND"/></title>

    <!-- Favicon -->
    <link rel="shortcut icon"   href="<c:url value='/template/img/iconbtec.png'/>" type="image/x-icon">

    <!-- Font awesome -->
    <link   href="<c:url value='/template/css/font-awesome.css' />" rel="stylesheet">
    <!-- Bootstrap -->
    <link  href="<c:url value='/template/css/bootstrap.css' />" rel="stylesheet">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css"   href="<c:url value='/template/css/slick.css' />" >
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/template/css/nouislider.css' />"  >
    <!-- Fancybox slider -->
    <link rel="stylesheet"   href="<c:url value='/template/css/jquery.fancybox.css' />" type="text/css" media="screen" />
    <!-- Theme color -->
    <link id="switcher"   href="<c:url value='/template/css/theme-color/default-theme.css' />"  rel="stylesheet">

    <!-- Main style sheet -->
    <link  href="<c:url value='/template/css/style.css' />" rel="stylesheet">


    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


  </head>
  <body class="aa-price-range ">
  <!-- Pre Loader -->
  <div id="aa-preloader-area">
    <div class="pulse"></div>
  </div>
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

  <!--  menu -->
  <%@ include file="/common/web/header.jsp" %>
  <!-- end-menu -->


		<dec:body/>
		<!-- This is parent page -->

  <!-- Footer -->
  	<%@ include file="/common/web/footer.jsp" %>
  <!-- / Footer -->

 
  
  <!-- jQuery library -->
  <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
  <script src="template/js/jquery.min.js"></script>   
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="template/js/bootstrap.js"></script>   
  <!-- slick slider -->
  <script type="text/javascript" src="template/js/slick.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="template/js/nouislider.js"></script>
   <!-- mixit slider -->
  <script type="text/javascript" src="template/js/jquery.mixitup.js"></script>
  <!-- Add fancyBox -->        
  <script type="text/javascript" src="template/js/jquery.fancybox.pack.js"></script>
  <!-- Custom js -->
  <script src="template/js/custom.js"></script> 

  </body>
</html>