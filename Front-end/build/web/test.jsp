<%-- 
    Document   : test
    Created on : Nov 10, 2021, 2:50:45 AM
    Author     : Admin
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <title>Transaction History</title>
    
    <link rel="stylesheet" href="./grid.css">
    <link rel="stylesheet" href="./transaction-history-recharge.css">
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
        <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
        
        <!-- Start header section -->
    <header id="aa-header" >  
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="aa-header-area" style="padding: 0px; line-height: 1;">
              <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6" style="margin-top: 12px;">
                  <div class="aa-header-left">
                    <div class="aa-telephone-no">
                      <span class="fa fa-phone"></span>
                      1-900-523-3564
                    </div>
                    <div class="aa-email hidden-xs">
                      <span class="fa fa-envelope-o"></span> info@markups.com
                    </div>
                  </div>              
                </div>
                <div class="col-md-6 col-sm-6 col-xs-6">
                  <div class="aa-header-right" style="cursor: pointer; margin-left: -5%;">
                    <div class="header-right-click">
                      <div href="#" class="aa-icon" style="border: 1px solid #fff;"></div>
                      <div href="#" class="aa-login">Minh Minh

                        <i class="fas fa-chevron-down"></i>
                      </div>
                    </div>
                    <ul class="options-menu" style="z-index: 2;"> 
                      <li><a href="#">
                        <i class="far fa-list-alt"></i>
                        LIST OF POST</a></li>
                      <li><a href="#">
                        <i class="fas fa-key"></i>
                        CHANGE PASSWORD</a></li>
                      <li><a href="#">
                        <i class="far fa-user"></i>
                        PROFILE</a></li>
                      <li><a href="#">
                        <i class="fas fa-edit"></i>
                        POST</a></li>
                      <li><a href="#">
                        <i class="fas fa-credit-card"></i>
                        DEPOSIT MONEY</a></li>
                      <li><a href="#">
                        <i class="fas fa-history"></i>
                        TRANSACTION HISTORY</a></li>
                      <li><a href="#">
                        <i class="fas fa-sign-out-alt"></i>
                        EXIT</a></li>
                    </ul>
                    

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- End header section -->
    
    <section id="aa-menu-area" style="z-index: 1;">
        <nav class="navbar navbar-default main-navbar" role="navigation">
            <div id="container">
                <div class="navbar-header">
                <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- LOGO -->
                <!-- Text based logo -->
                <a class="navbar-brand aa-logo" href="index.html"> BTEC <span>LAND</span></a>
                <!-- Image based logo -->
                <!-- <a class="navbar-brand aa-logo-img" href="index.html"><img src="img/logo.png" alt="logo"></a> -->
                </div>
                
                <!-- navbar  -->
                <div id="navbar" class="navbar-collapse collapse">
                    <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
                        <li class="#"><a href="index.html">HOME</a></li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown">BUY</a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="gallery.html">APARTMENT</a></li>
                                <li><a href="gallery.html">PRIVATE HOUSE, STREET HOUSE</a></li>
                                <li><a href="gallery.html">VILLA, ADJACENT HOUSES</a></li>
                                <li><a href="gallery.html">THE GROUND</a></li>
                                <li><a href="gallery.html">RESIDENTIAL LAND</a></li>
                                <li><a href="gallery.html">OFFICE BUILDING</a></li>
                                <li><a href="gallery.html">APARTMENT CONDOTEL</a></li>
                                <li><a href="gallery.html">OFFICETEL APARTMENT</a></li>
                                <li><a href="gallery.html">RESTAURANT</a></li>
                                <li><a href="gallery.html">WAREHOUSE, FACTORY, KIOT</a></li>
                                <li><a href="gallery.html">OTHER HOUSE AND LAND </a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown">RENT</a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="gallery.html">APARTMENT</a></li>
                                <li><a href="gallery.html">OFFICE</a></li>
                                <li><a href="gallery.html">PRIVATE HOUSE, STREET HOUSE</a></li>
                                <li><a href="gallery.html">APARTMENT CONDOTEL</a></li>
                                <li><a href="gallery.html">OFFICETEL APARTMENT</a></li>
                                <li><a href="gallery.html">RESTAURANT</a></li>
                                <li><a href="gallery.html">WAREHOUSE, FACTORY</a></li>
                                <li><a href="gallery.html">OTHER HOUSE AND LAND </a></li>

                            </ul>
                        </li>

                        <li style="background-color: #ac2925">
                            <a href="contact.html" class="post-button">CREATE POST 
                            <i style="color: #59abe3;" class="fa fa-pencil-square-o" aria-hidden="true"></i> 
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </nav>
    </section>
    
    <div class="container-p">
        <div class="content">
            <div class="content1">
                
            </div>
            
            <div class="content2" >
                <table style="width: 500px; margin-top: 133px; margin-left: 50px;">
                    <c:if test="${empty requestScope['listC']}">
                        <jsp:forward page="TransactionController?ac=view" />
                    </c:if>
                    <c:forEach items="${requestScope['listC']}" var="x" >
                        <tr>
                          <td>${x.getPostID()}</td>
                          <td>${x.getWalletID()}</td>
                          <td>${x.getPrice()}</td>
                          <td>${x.getCreateDay()}</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
        

    </body>
</html>
