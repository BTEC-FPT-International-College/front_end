<%@taglib prefix="home" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BTEC LAND</title>

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


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  <body class="aa-price-range">
  <!-- Pre Loader -->
  <div id="aa-preloader-area">
    <div class="pulse"></div>
  </div>
  <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

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
                  <a href="../register.html" class="aa-register">Register</a>
                  <a href="../signin.html" class="aa-login">Login</a>
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
           <a class="navbar-brand aa-logo" href="index.html"> BTEC <span>LAND</span></a>
           <!-- Image based logo -->
           <!-- <a class="navbar-brand aa-logo-img" href="index.html"><img src="img/logo.png" alt="logo"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
            <li class="active"><a href="index.html">HOME</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" >BUY</a>
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
              <a class="dropdown-toggle" data-toggle="dropdown" >RENT</a>
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
              <a class="dropdown-toggle" data-toggle="dropdown" href="pages/blog-archive.html">PROJECT</a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="pages/blog-archive.html">APARTMENT</a></li>
                <li><a href="pages/blog-archive.html">VILLA, ADJACENT HOUSES</a></li>
                <li><a href="pages/blog-archive.html">THE GROUND</a></li>
                <li><a href="pages/blog-archive.html">NEW URBAND AREAS</a></li>
                <li><a href="pages/blog-archive.html">COMPLEX AREAS</a></li>
                <li><a href="pages/blog-archive.html">RESORT</a></li>
                <li><a href="pages/blog-archive.html">CONDOTEL</a></li>
                <li><a href="pages/blog-archive.html">SOCIAL HOUSING</a></li>
                <li><a href="pages/blog-archive.html">COMMERCIAL MEDIUM</a></li>
                <li><a href="pages/blog-archive.html">OFFICE BUILDING</a></li>
                <li><a href="pages/blog-archive.html">INDUSTRIAL AREA</a></li>
                <li><a href="pages/blog-archive.html">DIFFERENT</a></li>
              </ul>
            </li>
            <li style="background-color: #ac2925"><a href="thai2/newpost.html" class="post-button" >CREATE POST <i style="color: #59abe3;" class="fa fa-pencil-square-o" aria-hidden="true"></i> </a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
  </section>
  <!-- End menu section -->

  <!-- Start slider  -->
  <section id="aa-slider">
    <div class="aa-slider-area"> 
      <!-- Top slider -->
      <div class="aa-top-slider">
        <!-- Top slider single slide -->
        <div class="aa-top-slider-single">
          <img src="img/slider/1.png" alt="img">
          <!-- Top slider content -->
          <div class="aa-top-slider-content">
            <span class="aa-top-slider-catg">VINHOME</span>
            <h2 class="aa-top-slider-title">OCEAN PARK</h2>
            <span class="aa-top-slider-off">Where your dream come true</span>
            <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Potential location</p>
            <p class="aa-top-slider-location">Ideally located at the intersection of Gia Lam, just a few minutes</p>
            <p class="aa-top-slider-location">to the bridges of Chuong Duong, Vinh Tuy and Thanh Tri.</p>
            <p class="aa-top-slider-price"></p>
            <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
          </div>
          <!-- / Top slider content -->
        </div>
        <div class="aa-top-slider-single">
          <img src="img/slider/3.png" alt="img">
          <!-- Top slider content -->
          <div class="aa-top-slider-content">
            <span class="aa-top-slider-catg">VINHOME</span>
            <h2 class="aa-top-slider-title">OCEAN PARK</h2>
            <span class="aa-top-slider-off">Where your dream come true</span>
            <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Potential location</p>
            <p class="aa-top-slider-location">Ideally located at the intersection of Gia Lam, just a few minutes</p>
            <p class="aa-top-slider-location">to the bridges of Chuong Duong, Vinh Tuy and Thanh Tri.</p>
            <p class="aa-top-slider-price"></p>
            <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
          </div>
          <!-- / Top slider content -->
        </div>
        <div class="aa-top-slider-single">
          <img src="img/slider/2.png" alt="img">
          <!-- Top slider content -->
          <div class="aa-top-slider-content">
            <span class="aa-top-slider-catg">VINHOME</span>
            <h2 class="aa-top-slider-title">OCEAN PARK</h2>
            <span class="aa-top-slider-off">Where your dream come true</span>
            <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Potential location</p>
            <p class="aa-top-slider-location">Ideally located at the intersection of Gia Lam, just a few minutes</p>
            <p class="aa-top-slider-location">to the bridges of Chuong Duong, Vinh Tuy and Thanh Tri.</p>
            <p class="aa-top-slider-price"></p>
            <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
          </div>
          <!-- / Top slider content -->
        </div>
        <div class="aa-top-slider-single">
          <img src="img/slider/4.png" alt="img">
          <!-- Top slider content -->
          <div class="aa-top-slider-content">
            <span class="aa-top-slider-catg">VINHOME</span>
            <h2 class="aa-top-slider-title">OCEAN PARK</h2>
            <span class="aa-top-slider-off">Where your dream come true</span>
            <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Potential location</p>
            <p class="aa-top-slider-location">Ideally located at the intersection of Gia Lam, just a few minutes</p>
            <p class="aa-top-slider-location">to the bridges of Chuong Duong, Vinh Tuy and Thanh Tri.</p>
            <p class="aa-top-slider-price"></p>
            <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
          </div>
          <!-- / Top slider content -->
        </div>
        <div class="aa-top-slider-single">
          <a href="https://www.google.com/maps/place/Vinhomes+Ocean+Park/@20.9932408,105.9388681,18.5z/data=!4m6!3m5!1s0x3135affc94e59a69:0xbc430ecabc8006d1!4b1!8m2!3d20.9940564!4d105.9377185?hl=vi-VN" target="_blank">
          <img src="img/slider/5.png" alt="img">
          </a>
          <!-- Top slider content -->
          <div class="aa-top-slider-content">
            <span class="aa-top-slider-catg">VINHOME</span>
            <h2 class="aa-top-slider-title">OCEAN PARK</h2>
            <span class="aa-top-slider-off">Where your dream come true</span>
            <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Potential location</p>
            <p class="aa-top-slider-location">Ideally located at the intersection of Gia Lam, just a few minutes</p>
            <p class="aa-top-slider-location">to the bridges of Chuong Duong, Vinh Tuy and Thanh Tri.</p>
            <p class="aa-top-slider-price"></p>
            <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
          </div>
          <!-- / Top slider content -->
        </div>

        </div>
        <!-- / Top slider single slide -->
      </div>
    </div>
  </section>
  <!-- End slider  -->

  <!-- Advance Search -->
  <section id="aa-advance-search">
    <div class="container">
      <div class="aa-advance-search-area">
        <div class="form">
         <div class="aa-advance-search-top">
            <div class="row">
              <div class="col-md-4">
                <div class="aa-single-advance-search">
                  <input type="text" placeholder="Type Your Location">
                </div>
              </div>
              <div class="col-md-2">
                <div class="aa-single-advance-search">
                  <select>
                   <option value="0" selected>Category</option>
                    <option value="1">APARTMENT</option>
                    <option value="2">PRIVATE HOUSE, STREET HOUSE</option>
                    <option value="3">VILLA, ADJACENT HOUSES</option>
                    <option value="4">THE GROUND</option>
                    <option value="5">RESIDENTIAL LAND</option>
                    <option value="6">OFFICE BUILDING</option>
                    <option value="7">APARTMENT CONDOTEL</option>
                    <option value="8">OFFICETEL APARTMENT</option>
                    <option value="9">RESTAURANT</option>
                    <option value="10">WAREHOUSE, FACTORY, KIOT</option>
                    <option value="11">OTHER HOUSE AND LAND</option>
                  </select>
                </div>
              </div>
              <div class="col-md-2">
                 <div class="aa-single-advance-search">
                  <select>
                    <option value="0" selected>Budget</option>
                    <option value="1"><500 Million</option>
                    <option value="2">500M -> 1 Billion</option>
                    <option value="3">1 -> 2 Billion</option>
                    <option value="4">2 -> 3 Billion</option>
                    <option value="5">3 - 5 Billion</option>
                    <option value="6">5 - 7 Billion</option>
                    <option value="7">7 - 10 Billion</option>
                    <option value="8">10 - 20 Billion</option>
                    <option value="9"> >20 Billion</option>
                  </select>
              </div>
              </div>
              <div class="col-md-2">
                 <div class="aa-single-advance-search">
                  <select>
                    <option value="0" selected>Area</option>
                    <option value="1"> <30 mÂ²</option>
                    <option value="2">30 -> 50 mÂ²</option>
                    <option value="3">50 -> 70 mÂ²</option>
                    <option value="4">70 -> 100 mÂ²</option>
                    <option value="4">100 -> 150 mÂ²</option>
                    <option value="4">150 -> 300 mÂ²</option>
                    <option value="4">300 -> 500 mÂ²</option>
                    <option value="4"> > 500 mÂ²</option>
                  </select>
              </div>
              </div>
              <div class="col-md-2">
                <div class="aa-single-advance-search">
                  <input class="aa-search-btn" type="submit" value="Search">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Advance Search -->


  <!-- Latest property -->
  <section id="aa-latest-property">
    <div class="container">
      <div class="aa-latest-property-area">
        <div class="aa-title">
          <h2>Latest Properties</h2>
          <span></span>
        </div>
        <div class="aa-latest-properties-content">
          <div class="row">

            <div class="col-md-4">
              <article class="aa-properties-item" href="">
                <a href="Pages/post-detail.html" class="aa-properties-item-img">
                  <img src="img/item/1.jpg" alt="img">
                </a>
                <div class="aa-tag for-sale">
                  For Sale
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="Pages/post-detail.html">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p> <a href="Pages/post-detail.html">Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</a></p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $35000
                    </span>
                    <a href="Pages/post-detail.html" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/1.jpg" alt="img">
                </a>
                <div class="aa-tag for-rent">
                  For Rent
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $11000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/3.jpg" alt="img">
                </a>
                <div class="aa-tag sold-out">
                  Sold Out
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $15000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/4.jpg" alt="img">
                </a>
                <div class="aa-tag for-sale">
                  For Sale
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $35000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/5.jpg" alt="img">
                </a>
                <div class="aa-tag for-rent">
                  For Rent
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $11000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/4.jpg" alt="img">
                </a>
                <div class="aa-tag sold-out">
                  Sold Out
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $15000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/1.jpg" alt="img">
                </a>
                <div class="aa-tag for-sale">
                  For Sale
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $35000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/1.jpg" alt="img">
                </a>
                <div class="aa-tag for-rent">
                  For Rent
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $11000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/3.jpg" alt="img">
                </a>
                <div class="aa-tag sold-out">
                  Sold Out
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $15000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/4.jpg" alt="img">
                </a>
                <div class="aa-tag for-sale">
                  For Sale
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $35000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/5.jpg" alt="img">
                </a>
                <div class="aa-tag for-rent">
                  For Rent
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $11000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>

            <div class="col-md-4">
              <article class="aa-properties-item">
                <a href="#" class="aa-properties-item-img">
                  <img src="img/item/4.jpg" alt="img">
                </a>
                <div class="aa-tag sold-out">
                  Sold Out
                </div>
                <div class="aa-properties-item-content">
                  <div class="aa-properties-info">
                    <span>5 Rooms</span>
                    <span>2 Beds</span>
                    <span>3 Baths</span>
                    <span>1100 SQ FT</span>
                  </div>
                  <div class="aa-properties-about">
                    <h3><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h3>
                    <p>Landmark Plus apartment for rent on high floor, 84m2 area with 2 bedrooms and 2 toilets. Apartment design following the trend of open, modern, spacious living room with balcony.</p>
                  </div>
                  <div class="aa-properties-detial">
                    <span class="aa-price">
                      $15000
                    </span>
                    <a href="#" class="aa-secondary-btn">View Details</a>
                  </div>
                </div>
              </article>
            </div>



          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Latest property -->

  <!-- Featured Investor Section-->
  <section id="aa-agents">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-agents-area">
            <div class="aa-title">
              <h2>Featured Investor</h2>
              <span></span>
              <p>List of reputable and prominent investors in Vietnam. Detailed introduction of the investor, year of establishment, number and information of deployed projects.</p>
            </div>
            <!-- agents content -->
            <div class="aa-agents-content">
              <ul class="aa-agents-slider">
                <li>
                  <div class="aa-single-agents">
                    <div class="aa-agents-img">
                      <img src="img/group/logo-vinhomes.png" alt="agent member image">
                    </div>
                    <div class="aa-agetns-info">
                      <h4><a href="#">Vin Group</a></h4>
<!--                      <span>Top Agent</span>-->
                      <div class="aa-agent-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="aa-single-agents">
                    <div class="aa-agents-img">
                      <img src="img/group/1200px-Logo_FLC_Group.svg.png" alt="agent member image">
                    </div>
                    <div class="aa-agetns-info">
                      <h4><a href="#">FLC GROUP</a></h4>
                      <span></span>
                      <div class="aa-agent-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="aa-single-agents">
                    <div class="aa-agents-img">
                      <img src="img/group/download.png" alt="agent member image">
                    </div>
                    <div class="aa-agetns-info">
                      <h4><a href="#">BTEC LAND</a></h4>
                      <span></span>
                      <div class="aa-agent-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                      </div>
                    </div>
                  </div>
                </li>
                <li>
                  <div class="aa-single-agents">
                    <div class="aa-agents-img">
                      <img src="img/group/fpt-mb.png" alt="agent member image">
                    </div>
                    <div class="aa-agetns-info">
                      <h4><a href="#">FPT GROUP</a></h4>
<!--                      <span>Jr. Agent</span>-->
                      <div class="aa-agent-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                      </div>
                    </div>
                  </div>
                </li>

                <li>
                  <div class="aa-single-agents">
                    <div class="aa-agents-img">
                      <img src="img/group/logo-bim-group.jpg" alt="agent member image">
                    </div>
                    <div class="aa-agetns-info">
                      <h4><a href="#">BIM GROUP</a></h4>
<!--                      <span>Expert Agent</span>-->
                      <div class="aa-agent-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                      </div>
                    </div>
                  </div>
                </li>

              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Featured Investor Section-->

  <!-- Footer -->
  <footer id="aa-footer">
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
  <!-- / Footer -->

 
  
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