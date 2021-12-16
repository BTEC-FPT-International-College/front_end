<%@include file="/common/taglib.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <!-- Header  -->
            <!-- Pre Loader -->
          <!-- <div id="aa-preloader-area">
            <div class="pulse"></div>
          </div> -->
          <!-- SCROLL TOP BUTTON -->
            <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
          <!-- END SCROLL TOP BUTTON -->


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
                            <span class="fa fa-envelope-o"></span> btecland@btec.com
                          </div>
                        </div>              
                      </div>
                      <c:forEach items="${listP}" var="x">
                      <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="aa-header-right" style="cursor: pointer; margin-left: 8%;">
                          <div class="header-right-click">
                            <div href="#" class="aa-icon" style="border: 1px solid #4c7683;"></div>
                            <div href="#" class="aa-login">${x.getFullname()}
					 </c:forEach>
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
                            <li><a href="<c:url value ='/profile?action=profile' />">
                              <i class="far fa-user"></i>
                              PROFILE</a></li>
                            <li><a href="#">
                              <i class="fas fa-edit"></i>
                              POST</a></li>
                            <li><a href="#">
                              <i class="fas fa-credit-card"></i>
                              DEPOSIT MONEY</a></li>
                            <li><a href="<c:url value ='/transaction?action=transaction' />">
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

          <!-- Start menu section -->
          <section id="aa-menu-area" style="z-index: 1;">
            <nav class="navbar navbar-default main-navbar" role="navigation">
              <div class="container">
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
                  <a class="navbar-brand aa-logo" href="index.jsp"> BTEC <span>LAND</span></a>
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

                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="blog-archive.html">PROJECT</a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="blog-archive.html">APARTMENT</a></li>
                            <li><a href="blog-archive.html">VILLA, ADJACENT HOUSES</a></li>
                            <li><a href="blog-archive.html">THE GROUND</a></li>
                            <li><a href="blog-archive.html">NEW URBAND AREAS</a></li>
                            <li><a href="blog-archive.html">COMPLEX AREAS</a></li>
                            <li><a href="blog-archive.html">RESORT</a></li>
                            <li><a href="blog-archive.html">CONDOTEL</a></li>
                            <li><a href="blog-archive.html">SOCIAL HOUSING</a></li>
                            <li><a href="blog-archive.html">COMMERCIAL MEDIUM</a></li>
                            <li><a href="blog-archive.html">OFFICE BUILDING</a></li>
                            <li><a href="blog-archive.html">INDUSTRIAL AREA</a></li>
                            <li><a href="blog-archive.html">DIFFERENT</a></li>
                        </ul>
                    </li>

                    <li style="background-color: #ac2925"><a href="contact.html" class="post-button">CREATE POST <i
                          style="color: #59abe3;" class="fa fa-pencil-square-o" aria-hidden="true"></i> </a></li>
                  </ul>
                </div>
                <!-- end of navbar  -->

                <!--/.nav-collapse -->
              </div>
            </nav>
          </section>
          <!-- End menu section -->


            <!-- End of Header  -->
    </body>
</html>
