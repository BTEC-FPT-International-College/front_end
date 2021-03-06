<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Update Post</title>
    <link rel="stylesheet" href="../css/style-update-post.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"/>

    <!-- Favicon -->
    <link rel="shortcut icon" href="../img/iconbtec.png" type="image/x-icon">
    <!-- Font awesome -->
    <link href="../css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="../css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="../css/nouislider.css">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="../css/jquery.fancybox.css" type="text/css" media="screen"/>
    <!-- Theme color -->
    <link id="switcher" href="../css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main style sheet -->
    <link href="../css/style.css" rel="stylesheet">
    <!--Style sheet for form picker date -->
    <link href="../css/date.css" rel="stylesheet">


    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

    <!-- Format Images loader CSS -->
    <link rel="stylesheet" href="../dist/image-uploader.min.css">
    <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,700|Montserrat:300,400,500,600,700|Source+Code+Pro&display=swap"
          rel="stylesheet">

    <!-- jQuery -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" crossorigin="anonymous"></script>


    <!-- Images loader -->
    <script src="./jquery.imagesloader-1.0.1.js"></script>
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
                                <div class="aa-email hidden-xs"><span class="fa fa-envelope-o"></span> btecland@btec.com
                                </div>
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
<!-- Start menu section -->
<section id="aa-menu-area-update-form">
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
                <a class="navbar-brand aa-logo" href="../index.html"> BTEC <span>LAND</span></a>
                <!-- Image based logo -->
                <!-- <a class="navbar-brand aa-logo-img" href="index.html"><img src="img/logo.png" alt="logo"></a> -->
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
                    <li class="active"><a href="../index.html">HOME</a></li>
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
                        <li><a href="../index.html">HOME</a></li>
                        <li class="active">APARTMENTS IN CIPUTRA</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Proerty header  -->

<!-- End of Header  -->


<!-- Container  -->
<div class="container-p">
    <div class="content">
        <div class="content1">
            <div class="content1-head">
                <div class="content1-info">
                    <div class="content1-image">
                        <i class="fas fa-camera-retro"></i>
                    </div>
                    <div class="content-description">
                        <li class="name" style="list-style: none;"><a href="#"> VIP CUSTOMER</a></li>

                        <div class="wallet">
                            <span>Wallet: </span>
                            <span class="coin">999999999999</span>
                            <span>Coin</span>
                        </div>
                    </div>
                </div>

            </div>
            <div class="content1-below">
                <div class="management">MANAGE POST
                    <li class="management-des"><a href="#"><i class="fas fa-feather-alt"></i> CREATE NEW POST </a></li>
                    <li class="management-des"><a href="manager-post.html"><i class="fas fa-list-ol"></i> LIST OF POSTS
                    </a></li>
                </div>
                <script>

                </script>
                <div class="management">MANAGEMENT PROFILE
                    <li class="management-des"><a href="#"><i class="far fa-user"></i> ACCOUNT INFOMATION </a></li>
                    <li class="management-des"><a href="#"><i class="fas fa-key"></i> CHANGE PASSWORD </a></li>
                </div>
                <div class="management">MANAGEMENT WALLET
                    <li class="management-des"><a href="#"> <i class="fas fa-wallet"></i> BALANCE</a></li>
                    <li class="management-des"><a href="#"><i class="fas fa-history"></i> TRANSACTION HISTORY </a></li>
                    <li class="management-des"><a href="#"><i class="fas fa-money-check-alt"></i> DEPOSIT MONEY IN YOUR
                        WALLET </a></li>
                </div>
                <div class="content1-below-post">
                    <div class="post">
                        <i class="fas fa-feather-alt"></i>
                        CREATE POST
                    </div>
                </div>
            </div>
        </div>

        <div class="update-post-body">
            <div class="body-title"> Basic information</div>
            <div class="post-information">
                <div class="col-md-12">
                    <div id="update-post-form">
                            <div class="post-type">

                                <div class="select-post-type">
                                    <p class="strong"> Choose Type Of Real Estate: <span class="required">*</span></p>
                                    <div class="radio-toolbar">
                                        <input type="radio" id="radioApple" name="radioFruit" value="apple" checked>
                                        <label for="radioApple">For Sale</label>

                                        <input type="radio" id="radioBanana" name="radioFruit" value="banana">
                                        <label for="radioBanana">For Rent</label>
                                    </div>
                                </div>

                                <div class="select-post-type">
                                    <p class="strong"> Choose Type Of Post <span class="required">*</span></p>
                                <select>
                                    <option value="0" selected>Post Type</option>
                                    <option value="1">FREE</option>
                                    <option value="2">GOLD</option>
                                    <option value="3">DIAMOND</option>
                                </select>
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

                                <div class="select-post-type">
                                    <p class="strong"> Address: <span class="required">*</span></p>
                                    <select name="calc_shipping_provinces" required="">
                                        <option value="">Province/City</option>
                                    </select>
                                    <select name="calc_shipping_district" required="" >
                                        <option value="">District</option>
                                    </select>
                                    <input class="billing_address_1" name="" type="hidden" value="">
                                    <input class="billing_address_2" name="" type="hidden" value="">
                                    </p>
                            </div>

                            <div class="specific-address">
                                <p class="strong"> Specific address: <span class="required">*</span></p>
                                <input type="text" required="required" size="30" value="" name="author"
                                       placeholder="House number, street name...">
                                <p class="strong"> Position on map:</p>
                                <input type="text" size="30" value="" name="author"
                                       placeholder="E.g. https://www.google.com/maps/place/btec-land">
                            </div>
                    </div>
                </div>
            </div>
            </div>
        </div>

        <div class="update-post-body2">
            <div class="body-title"> Post Information</div>
            <div class="post-information">
                <div class="col-md-12">
                    <div id="update-post-form2">
                        <div class="post-type">
                            <form>
                                <p class="comment-form-author">
                                <div><label>Title <span class="required">*</span></label></div>
                                <input type="text" required="required" size="70" value="" name="author">
                                </p>
                                <p class="comment-form-comment">
                                    <label for="content">Content <span class="required">*</span> </label>
                                    <textarea required="required" aria-required="true" rows="8" cols="45"
                                              name="content"></textarea>
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="update-post-body3">
            <div class="body-title"> Real estate information</div>
            <div class="post-information">
                <div class="col-md-12">
                    <div id="update-post-form3">

                        <form>
                            <div class="estate-inf">
                            <div><label>Area<span class="required">*</span></label></div>
                            <input type="text" required="required" size="70" value="" name="area" placeholder="m??">
                            </div>

                            <div class="estate-inf2">

                                <div class="estate-inf-price">
                                <div><label>Price<span class="required">*</span></label></div>
                                <input type="text" required="required" size="70" value="" name="area" placeholder="Enter Price. E.g. 19006789 USD">
                                    <select>
                                        <option value="0" selected>USD</option>
                                        <option value="1">VND</option>
                                    </select>
                                </div>
                            </div>

                            <div class="estate-inf">
                            <div><label>Legal papers<span class="required">*</span></label></div>
                            <input type="text" required="required" size="70" value="" name="area"
                                   placeholder="Certificate of land use rights, Sale Contract,... ">
                            </div>
                             <div  class="number-quantity">
                                <label>Number Of Bedrooms:</label>
                                 <div class="number-input">
                                     <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
                                     <input class="quantity" min="0" name="quantity" value="0" type="number">
                                     <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                 </div>
                            </div>

                            <div class="number-quantity">
                                <label>Number  Of  Bathrooms:</label>
                               <div class="number-input">
                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
                                <input class="quantity" min="0" name="quantity" value="0" type="number">
                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                                </div>
                            </div>

                            <div  class="number-quantity">
                             <label>Number  Of  Restrooms:</label>
                                <div class="number-input">
                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" ></button>
                                <input class="quantity" min="0" name="quantity" value="0" type="number">
                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
                               </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div class="update-post-body3">
            <div class="body-title">Image and Video</div>
            <div class="post-information">

                <div class="image-input">
                    <form method="POST" name="form-example-1" id="form-example-1" enctype="multipart/form-data">
                        <div class="input-field">
                            <label class="active">Upload Images</label>
                            <div class="input-images-1" style="padding-top: .5rem;"></div>
                        </div>
                    </form>
                </div>

                <div class="col-md-12">
                    <div id="update-post-form4">
                        <form>
                            <div class="post-type">
                                <p class="">
                                <div>
                                    <label> Link video on youtobe:</label>
                                </div>
                                <input type="text" size="30" value="" name="author"
                                       placeholder="E.g. https://www.youtobe.com/channel/btec-land">
                                </p>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <div class="update-post-body3">
            <div class="body-title"> Contact Information</div>
            <div class="post-information">
                <div class="col-md-12">
                    <div id="update-post-form5">
                        <form>
                            <div class="contact-1">

                            <div class="contact-name">
                            <div><label>Contact Name<span class="required">*</span></label></div>
                            <input type="text" required="required" size="100" value="" name="contact-name">
                            </div>
                            <div class="contact-phone">
                            <div><label>Phone Number<span class="required">*</span></label></div>
                            <input type="number" required="required" size="12" value="">
                            </div>

                            </div>

                            <div class="contact-address">
                            <div><label>Address</label></div>
                            <input type="text" size="70" value="" name="area" placeholder="E.g. 107, Nguyen Phong Sac, Cau giay, Ha Noi.">
                            </div>


                            <div class="contact-email">
                            <div><label>Email</label></div>
                            <input type="email"  size="70" value="" name="area" placeholder="E.g. btecland@btec.vn">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="update-post-body3">
            <div class="form-submit">
                <input type="submit" value=" Update " class="aa-browse-btn" name="submit" style="background-color: #2a6e83; color: #fff">
            </div>
        </div>
        <!-- End of container -->

    </div>
</div>

<!-- Footer  -->
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
<!-- End of Footer  -->

<!-- jQuery library -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<script src="../js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="../js/bootstrap.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="../js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="../js/nouislider.js"></script>
<!-- mixit slider -->
<script type="text/javascript" src="../js/jquery.mixitup.js"></script>
<!-- Add fancyBox -->
<script type="text/javascript" src="../js/jquery.fancybox.pack.js"></script>
<!-- Custom js -->
<script src="../js/custom.js"></script>

<!-- Js for pick address-->
<script src="https://cdn.jsdelivr.net/gh/vietblogdao/js/districts.min.js"></script>
<!-- Or using this link if done-have internet <script src="js/province.js"></script> -->
<script>
    var localpicker = new localpicker({
        province: "ls_province",
        district: "ls_district",
        ward: "ls_ward"
    });
</script>
<script>
    $(document).ready(function () {
        $("#input-b6").fileinput({
            showUpload: false,
            dropZoneEnabled: false,
            maxFileCount: 10,
            mainClass: "input-group-lg"
        });
    });
</script>
<script>//<![CDATA[
if (address_2 = localStorage.getItem('address_2_saved')) {
    $('select[name="calc_shipping_district"] option').each(function () {
        if ($(this).text() == address_2) {
            $(this).attr('selected', '')
        }
    })
    $('input.billing_address_2').attr('value', address_2)
}
if (district = localStorage.getItem('district')) {
    $('select[name="calc_shipping_district"]').html(district)
    $('select[name="calc_shipping_district"]').on('change', function () {
        var target = $(this).children('option:selected')
        target.attr('selected', '')
        $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
        address_2 = target.text()
        $('input.billing_address_2').attr('value', address_2)
        district = $('select[name="calc_shipping_district"]').html()
        localStorage.setItem('district', district)
        localStorage.setItem('address_2_saved', address_2)
    })
}
$('select[name="calc_shipping_provinces"]').each(function () {
    var $this = $(this),
        stc = ''
    c.forEach(function (i, e) {
        e += +1
        stc += '<option value=' + e + '>' + i + '</option>'
        $this.html('<option value="">Province/City</option>' + stc)
        if (address_1 = localStorage.getItem('address_1_saved')) {
            $('select[name="calc_shipping_provinces"] option').each(function () {
                if ($(this).text() == address_1) {
                    $(this).attr('selected', '')
                }
            })
            $('input.billing_address_1').attr('value', address_1)
        }
        $this.on('change', function (i) {
            i = $this.children('option:selected').index() - 1
            var str = '',
                r = $this.val()
            if (r != '') {
                arr[i].forEach(function (el) {
                    str += '<option value="' + el + '">' + el + '</option>'
                    $('select[name="calc_shipping_district"]').html('<option value="">District</option>' + str)
                })
                var address_1 = $this.children('option:selected').text()
                var district = $('select[name="calc_shipping_district"]').html()
                localStorage.setItem('address_1_saved', address_1)
                localStorage.setItem('district', district)
                $('select[name="calc_shipping_district"]').on('change', function () {
                    var target = $(this).children('option:selected')
                    target.attr('selected', '')
                    $('select[name="calc_shipping_district"] option').not(target).removeAttr('selected')
                    var address_2 = target.text()
                    $('input.billing_address_2').attr('value', address_2)
                    district = $('select[name="calc_shipping_district"]').html()
                    localStorage.setItem('district', district)
                    localStorage.setItem('address_2_saved', address_2)
                })
            } else {
                $('select[name="calc_shipping_district"]').html('<option value="">District</option>')
                district = $('select[name="calc_shipping_district"]').html()
                localStorage.setItem('district', district)
                localStorage.removeItem('address_1_saved', address_1)
            }
        })
    })
})
</script>
<!-- java script for upload image-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"
        integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<!--<script type="text/javascript" src="dist/image-uploader.min.js"></script>-->

<script>
    $(function () {

        $('.input-images-1').imageUploader();

        $('form').on('submit', function (event) {

            // Stop propagation
            event.preventDefault();
            event.stopPropagation();

            // Get some vars
            let $form = $(this),
                $modal = $('.modal');

            // Set name and description
            $modal.find('#display-name span').text($form.find('input[id^="name"]').val());
            $modal.find('#display-description span').text($form.find('input[id^="description"]').val());

            // Get the input file
            let $inputImages = $form.find('input[name^="images"]');
            if (!$inputImages.length) {
                $inputImages = $form.find('input[name^="photos"]')
            }

            // Get the new files names
            let $fileNames = $('<ul>');
            for (let file of $inputImages.prop('files')) {
                $('<li>', {text: file.name}).appendTo($fileNames);
            }

            // Set the new files names
            $modal.find('#display-new-images').html($fileNames.html());

            // Get the preloaded inputs
            let $inputPreloaded = $form.find('input[name^="old"]');
            if ($inputPreloaded.length) {

                // Get the ids
                let $preloadedIds = $('<ul>');
                for (let iP of $inputPreloaded) {
                    $('<li>', {text: '#' + iP.value}).appendTo($preloadedIds);
                }

                // Show the preloadede info and set the list of ids
                $modal.find('#display-preloaded-images').show().html($preloadedIds.html());

            } else {

                // Hide the preloaded info
                $modal.find('#display-preloaded-images').hide();

            }

            // Show the modal
            $modal.css('visibility', 'visible');
        });

        // Input and label handler
        $('input').on('focus', function () {
            $(this).parent().find('label').addClass('active')
        }).on('blur', function () {
            if ($(this).val() == '') {
                $(this).parent().find('label').removeClass('active');
            }
        });


    });
</script>
<script>
    (function ($) {
        $.fn.imageUploader = function (options) {
            let defaults = {
                preloaded: [],
                imagesInputName: 'images',
                preloadedInputName: 'preloaded',
                label: 'Drag & Drop files here or click to browse'
            };
            let plugin = this;
            plugin.settings = {};
            plugin.init = function () {
                plugin.settings = $.extend(plugin.settings, defaults, options);
                plugin.each(function (i, wrapper) {
                    let $container = createContainer();
                    $(wrapper).append($container);
                    $container.on("dragover", fileDragHover.bind($container));
                    $container.on("dragleave", fileDragHover.bind($container));
                    $container.on("drop", fileSelectHandler.bind($container));
                    if (plugin.settings.preloaded.length) {
                        $container.addClass('has-files');
                        let $uploadedContainer = $container.find('.uploaded');
                        for (let i = 0; i < plugin.settings.preloaded.length; i++) {
                            $uploadedContainer.append(createImg(plugin.settings.preloaded[i].src, plugin.settings.preloaded[i].id, !0))
                        }
                    }
                })
            };
            let dataTransfer = new DataTransfer();
            let createContainer = function () {
                let $container = $('<div>', {class: 'image-uploader'}), $input = $('<input>', {
                        type: 'file',
                        id: plugin.settings.imagesInputName + '-' + random(),
                        name: plugin.settings.imagesInputName + '[]',
                        multiple: ''
                    }).appendTo($container), $uploadedContainer = $('<div>', {class: 'uploaded'}).appendTo($container),
                    $textContainer = $('<div>', {class: 'upload-text'}).appendTo($container),
                    $i = $('<i>', {class: 'material-icons', text: 'cloud_upload'}).appendTo($textContainer),
                    $span = $('<span>', {text: plugin.settings.label}).appendTo($textContainer);
                $container.on('click', function (e) {
                    prevent(e);
                    $input.trigger('click')
                });
                $input.on("click", function (e) {
                    e.stopPropagation()
                });
                $input.on('change', fileSelectHandler.bind($container));
                return $container
            };
            let prevent = function (e) {
                e.preventDefault();
                e.stopPropagation()
            };
            let createImg = function (src, id) {
                let $container = $('<div>', {class: 'uploaded-image'}), $img = $('<img>', {src: src}).appendTo($container),
                    $button = $('<button>', {class: 'delete-image'}).appendTo($container),
                    $i = $('<i>', {class: 'material-icons', text: 'clear'}).appendTo($button);
                if (plugin.settings.preloaded.length) {
                    $container.attr('data-preloaded', !0);
                    let $preloaded = $('<input>', {
                        type: 'hidden',
                        name: plugin.settings.preloadedInputName + '[]',
                        value: id
                    }).appendTo($container)
                } else {
                    $container.attr('data-index', id)
                }
                $container.on("click", function (e) {
                    prevent(e)
                });
                $button.on("click", function (e) {
                    prevent(e);
                    if ($container.data('index')) {
                        let index = parseInt($container.data('index'));
                        $container.find('.uploaded-image[data-index]').each(function (i, cont) {
                            if (i > index) {
                                $(cont).attr('data-index', i - 1)
                            }
                        });
                        dataTransfer.items.remove(index)
                    }
                    $container.remove();
                    if (!$container.find('.uploaded-image').length) {
                        $container.removeClass('has-files')
                    }
                });
                return $container
            };
            let fileDragHover = function (e) {
                prevent(e);
                if (e.type === "dragover") {
                    $(this).addClass('drag-over')
                } else {
                    $(this).removeClass('drag-over')
                }
            };
            let fileSelectHandler = function (e) {
                prevent(e);
                let $container = $(this);
                $container.removeClass('drag-over');
                let files = e.target.files || e.originalEvent.dataTransfer.files;
                setPreview($container, files)
            };
            let setPreview = function ($container, files) {
                $container.addClass('has-files');
                let $uploadedContainer = $container.find('.uploaded'), $input = $container.find('input[type="file"]');
                $(files).each(function (i, file) {
                    dataTransfer.items.add(file);
                    $uploadedContainer.append(createImg(URL.createObjectURL(file), dataTransfer.items.length - 1))
                });
                $input.prop('files', dataTransfer.files)
            };
            let random = function () {
                return Date.now() + Math.floor((Math.random() * 100) + 1)
            };
            this.init();
            return this
        }
    }(jQuery))
</script>


</body>
</html>