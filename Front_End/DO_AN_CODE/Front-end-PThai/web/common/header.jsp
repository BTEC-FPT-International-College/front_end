 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Start header section -->
  <header id="aa-header">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-header-area">
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-6">
                <div class="aa-header-left">
                  <div class="aa-telephone-no">
                    <span class="fa fa-phone"></span>
                    19006789
                  </div>
                  <div class="aa-email hidden-xs">
                    <span class="fa fa-envelope-o"></span> btecland@btec.com
                  </div>
                </div>
              </div>
              <div class="col-md-6 col-sm-6 col-xs-6">
                <div class="aa-header-right">
                  <a  class="aa-register" href="<c:url value ='/login.jsp' />">Register</a>
                  <a class="" style ="color:white" href="<c:url value ='/login.jsp' />">Login</a>
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
  <section id="aa-menu-area">
    <nav class="navbar navbar-default main-navbar" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->
          <!-- Text based logo -->
           <a class="navbar-brand aa-logo" href="index.jsp"> BTEC <span>LAND</span></a>
           <!-- Image based logo -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
            <li class="active"><a href="index.jsp">HOME</a></li>
            
           <li class="dropdown">
                      <!--<a href="" onclick="rearch_post()" data-toggle="dropdown">BUY</a>-->
                      <a> <button  style=" background-color:transparent;"  onclick="filterSale()" class="aa-search-btn">BUY</button></a>
                    </li>
                    <li class="dropdown">
                        <a>  <button onclick="filterRent()" class="aa-search-btn"  style=" background-color:transparent;">RENT</button></a>
                      <!--<a href="" onclick="rearch_post()" data-toggle="dropdown">RENT</a>-->
<!--                      <ul class="dropdown-menu" role="menu">
                        <li><a href="gallery.html">APARTMENT</a></li>
                        <li><a href="gallery.html">OFFICE</a></li>
                        <li><a href="gallery.html">PRIVATE HOUSE, STREET HOUSE</a></li>
                        <li><a href="gallery.html">APARTMENT CONDOTEL</a></li>
                        <li><a href="gallery.html">OFFICETEL APARTMENT</a></li>
                        <li><a href="gallery.html">RESTAURANT</a></li>
                        <li><a href="gallery.html">WAREHOUSE, FACTORY</a></li>
                        <li><a href="gallery.html">OTHER HOUSE AND LAND </a></li>
                      </ul>-->
                    </li>
             <li class="dropdown">
                        <a class="dropdown-toggle" href="aboutUs.jsp">About US</a>
                        
                    </li>
            <li style="background-color: #ac2925"><a href="login.jsp" class="post-button" >CREATE POST <i style="color: #59abe3;" class="fa fa-pencil-square-o" aria-hidden="true"></i> </a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  </section>
  <!-- End menu section -->