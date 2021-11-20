<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>BTEC LAND | Post Details</title>

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
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body class="aa-price-range">
<!-- Pre Loader -->
<!--<div id="aa-preloader-area">-->
<!--    <div class="pulse"></div>-->
<!--</div>-->
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
                                <div class="aa-telephone-no"><span class="fa fa-phone"></span>19006789</div>
                                <div class="aa-email hidden-xs"><span class="fa fa-envelope-o"></span> btecland@btec.com</div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6">
                            <div class="aa-header-right">
                                <a href="register.html" class="aa-register">Register</a>
                                <a href="signin.html" class="aa-login">Login</a>
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
            <div id="navbar" class="navbar-collapse collapse">
                <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
                    <li class="active"><a href="index.html">HOME</a></li>
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
            </div><!--/.nav-collapse -->
        </div>
    </nav>
</section>
<!-- End menu section -->

<!-- Start Proerty header  -->

<section id="aa-property-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-property-header-inner">
                    <h2> </h2>
                    <ol class="breadcrumb">
                        <li><a href="index.html">HOME</a></li>
                        <li class="active">APARTMENTS IN CIPUTRA</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Proerty header  -->

<!-- Start Properties  -->
<section id="aa-properties">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="aa-properties-content">
                    <!-- Start properties content body -->
                    <div class="aa-properties-details">
                        <div class="aa-properties-details-img">
                            <img src="img/post-detail/1.jpg" alt="Oop something wrong with the image!!!" id="main-img">
<!--                            <img src="img/post-detail/2.jpg" alt="Oop something wrong with the image!!!">-->
<!--                            <img src="img/post-detail/3.jpg" alt="Oop something wrong with the image!!!">-->
                        </div>
                        <p class="image-small-slider">
                            <img src="img/post-detail/1.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/2.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/3.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/4.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/5.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/6.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/7.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/8.jpg" alt="Oop something wrong with the image!!!">
                            <img src="img/post-detail/9.jpg" alt="Oop something wrong with the image!!!">
                        </p>
                        <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
                        <script>
                            $(() => {
                                $('p img').click(function(){
                                    let imgPath = $(this).attr('src') ;
                                    $('#main-img').attr('src', imgPath);
                                    })
                            })
                        </script>
                        <div class="aa-properties-info">
                            <h2>Ciputra(For Rent): Contemporary 114sqm 3-bedroom apartment at L5</h2>
                            <span class="aa-price">$1,100 /month</span>
                            <p>Size of the contemporary apartment at L5 Ciputra is 114sqm, with 2bathrooms. It has living room combined with dining room, a separated kitchen with access to laundry room, natural light and fresh air via the decent size of windows.</p>
                            <p>The rental apartment is situated on middle floor of the new L5 building, in the short walking distance to Gym and pool at L4, minimart at L3. It’s provided with marble floor and provided with wooden floor in the bedrooms. The bedrooms has access to natural light via the decent size of window. It’s also provided with large built in storage system</p>
                            <p>For more information about the rental apartments in Ciputra, please feel free to contact us.</p>
                            <h4>Features</h4>
                            <ul>
                                <li>Living space (m2): 114</li>
                                <li>3 Bedroom</li>
                                <li>2 Baths</li>
                                <li>Kitchen</li>
                                <li>Air Condition</li>
                                <li>Belcony</li>
                                <li>Gym</li>
                                <li>Fully Furnished</li>
                                <li>CCTV</li>
                                <li>Children Play Ground</li>
                                <li>Comunity Center</li>
                                <li>Security System</li>
                            </ul>
                            <h4>Property Video</h4>
                            <iframe width="100%" height="480" src="https://www.youtube.com/embed/azqWcrhlITQ" frameborder="0" allowfullscreen></iframe>
                            <h4>Property Map</h4>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7445.707964188539!2d105.7971114267224!3d21.078493404858968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aac0896ba75b%3A0xd95db140eef64eec!2zS2h1IMSRw7QgdGjhu4sgQ2lwdXRyYSwgUGjDuiBUaMaw4bujbmcsIFTDonkgSOG7kywgSGFub2ksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1634179379716!5m2!1sen!2s" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                        </div>
                        <div class="col-md-12">
                            <div id="respond">
                                <h3 class="reply-title">Leave a Comment</h3>
                                <form id="commentform">
                                    <p class="comment-notes">
                                        Your information address will not be published. Required fields are marked <span class="required">*</span>
                                    </p>
                                    <p class="comment-form-author">
                                        <label for="author">Name <span class="required">*</span></label>
                                        <input type="text" required="required" size="30" value="" name="author">
                                    </p>
                                    <p class="comment-form-email">
                                        <label for="email">Email <span class="required">*</span></label>
                                        <input type="email" required="required" aria-required="true" value="" name="email">
                                    </p>
                                    <p class="comment-form-number">
                                        <label for="number">Phone Number <span class="required">*</span></label>
                                        <input type="number" required="required" aria-required="true" value="" name="number">
                                    </p>
                                    <p class="comment-form-comment">
                                        <label for="comment">Comment</label>
                                        <textarea required="required" aria-required="true" rows="8" cols="45" name="comment"></textarea>
                                    </p>
                                    <p class="form-submit">
                                        <input type="submit" value="Comment" class="aa-browse-btn" name="submit" style="background-color: #2a6e83; color: #fff">
                                    </p>
                                </form>
                            </div>
                        </div>
                        <!-- Properties social share -->
                        <div class="aa-properties-social">
                            <ul>
                                <li>Share</li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <!-- Nearby properties -->
                        <div class="aa-nearby-properties">
                            <div class="aa-title">
                                <h2>Nearby Properties</h2>
                                <span></span>
                            </div>
                            <div class="aa-nearby-properties-area">
                                <div class="row">
                                    <div class="col-md-6">
                                        <article class="aa-properties-item">
                                            <a class="aa-properties-item-img" href="#"><img alt="img" src="img/item/1.jpg"></a>
                                            <div class="aa-tag for-sale">For Sale</div>
                                            <div class="aa-properties-item-content">
                                                <div class="aa-properties-info">
                                                    <span>5 Rooms</span>
                                                    <span>2 Beds</span>
                                                    <span>3 Baths</span>
                                                    <span>1100 SQ FT</span>
                                                </div>
                                                <div class="aa-properties-about">
                                                    <h3><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h3>
                                                    <p>Vinhomes Central Park apartment for rent with area 56m2, with 1 bedroom and 1 bathroom. The apartment is now fully furnished, renters only need to bring suitcases and stay.</p>
                                                </div>
                                                <div class="aa-properties-detial">
                                                   <span class="aa-price">$35000</span><a class="aa-secondary-btn" href="#">View Details</a>
                                                </div>
                                            </div>
                                        </article>
                                    </div>

                                    <div class="col-md-6">
                                        <article class="aa-properties-item">
                                            <a class="aa-properties-item-img" href="#">
                                                <img alt="img" src="img/item/6.jpg">
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
                                                    <span class="aa-price">$35000</span><a class="aa-secondary-btn" href="#">View Details</a>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
            <!-- Start properties sidebar -->
            <div class="col-md-4">
                <aside class="aa-properties-sidebar">
                    <!-- Start Single properties sidebar -->
                    <div class="aa-properties-single-sidebar">
                    <div class="aa-contact-top-right">
                        <h2>Contact</h2>
                        <p></p>
                        <ul class="contact-info-list">
                            <li> <i class="fa fa-phone"></i> +84868686868 </li>
                            <li> <i class="fa fa-envelope-o"></i> vip@btec.com</li>
                            <li> <i class="fa fa-map-marker"></i> 107  Nguyen Phong Sac, Cau Giay, HaNoi</li>
                        </ul>
                    </div>
                    </div>
                    <div class="aa-properties-single-sidebar">
                        <h3>Properties Search</h3>
                        <form action="">
                            <div class="aa-single-advance-search">
                                <input type="text" placeholder="Type Your Location">
                            </div>
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
                            <div class="aa-single-advance-search">
                                <select>
                                    <option value="0" selected>Area</option>
                                    <option value="1"> <30 m²</option>
                                    <option value="2">30 -> 50 m²</option>
                                    <option value="3">50 -> 70 m²</option>
                                    <option value="4">70 -> 100 m²</option>
                                    <option value="4">100 -> 150 m²</option>
                                    <option value="4">150 -> 300 m²</option>
                                    <option value="4">300 -> 500 m²</option>
                                    <option value="4"> > 500 m²</option>
                                </select>
                            </div>
                            <div class="aa-single-advance-search">
                                <input type="submit" value="Search" class="aa-search-btn">
                            </div>
                        </form>
                    </div>
                    <!-- Start Single properties sidebar -->
                    <div class="aa-properties-single-sidebar">
                        <h3>Populer Properties</h3>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/1.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
<!--                                <p>Vinhomes Central Park apartment for rent with area 56m2, with 1 bedroom and 1 bathroom. The apartment is now fully furnished, renters only need to bring suitcases and stay.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/2.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h4>
<!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/3.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
<!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/1.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
                                <!--                                <p>Vinhomes Central Park apartment for rent with area 56m2, with 1 bedroom and 1 bathroom. The apartment is now fully furnished, renters only need to bring suitcases and stay.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/2.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h4>
                                <!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/3.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
                                <!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/1.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
                                <!--                                <p>Vinhomes Central Park apartment for rent with area 56m2, with 1 bedroom and 1 bathroom. The apartment is now fully furnished, renters only need to bring suitcases and stay.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/2.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h4>
                                <!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/3.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
                                <!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <<div class="media">
                        <div class="media-left">
                            <a href="#">
                                <img class="media-object" src="img/item/1.jpg" alt="img">
                            </a>
                        </div>
                        <div class="media-body">
                            <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
                            <!--                                <p>Vinhomes Central Park apartment for rent with area 56m2, with 1 bedroom and 1 bathroom. The apartment is now fully furnished, renters only need to bring suitcases and stay.</p>-->
                            <span>$65000</span>
                        </div>
                    </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/2.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">River view 2 bedrooms in Landmark Plus, Vinhomes</a></h4>
                                <!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                        <div class="media">
                            <div class="media-left">
                                <a href="#">
                                    <img class="media-object" src="img/item/3.jpg" alt="img">
                                </a>
                            </div>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">Luxury furniture 1 bedroom apartment in Landmark Plus</a></h4>
                                <!--                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>-->
                                <span>$65000</span>
                            </div>
                        </div>

                    </div>
                </aside>
            </div>
        </div>
    </div>
</section>
<!-- / Properties  -->

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