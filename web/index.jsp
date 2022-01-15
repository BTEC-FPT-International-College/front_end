<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>BTEC LAND</title>
        <link href="css/bootstrap.css" rel="stylesheet"> 
        <link rel="stylesheet" href="./thaicss/style-profile.css">
        <!-- Favicon -->
        <link rel="shortcut icon"   href="./template/img/iconbtec.png" type="image/x-icon">

        <!-- Font awesome -->
        <link   href="./template/css/font-awesome.css" rel="stylesheet">
        <!-- Bootstrap -->


        <!-- slick slider -->
        <link rel="stylesheet" type="text/css"   href="css/slick.css" >
        <!-- price picker slider -->
        <link rel="stylesheet" type="text/css" href="css/nouislider.css"  >
        <!-- Fancybox slider -->
        <link rel="stylesheet"   href="css/jquery.fancybox.css" type="text/css" media="screen" />
        <!-- Theme color -->
        <link id="switcher"   href="css/theme-color/default-theme.css"  rel="stylesheet">

        <!-- Main style sheet -->
        <link  href="./template/css/style.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


    </head>

    <!-- Pre Loader -->
    <div id="aa-preloader-area">
        <div class="pulse"></div>
    </div>
    <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
    <!-- END SCROLL TOP BUTTON -->

    <!--  menu -->
    <%
       String username = (String) session.getAttribute("User");

       if (username != null) {%>
    <%@include file="header-section-home.jsp" %>



    <%
    } else if (username == null) {
    %>
    <%@include file="common/header.jsp" %>
    <%
        }
    %>
    <!-- end-menu -->

    <!-- Start slider  -->
    <section id="aa-slider">
        <div class="aa-slider-area">
            <!-- Top slider -->
            <div class="aa-top-slider">
                <!-- Top slider single slide -->
                <div class="aa-top-slider-single">
                    <img src="template/img/slider/1.png" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">VINHOME</span>
                        <h2 class="aa-top-slider-title">OCEAN PARK</h2>
                        <span class="aa-top-slider-off">Where your dream come true</span>
                        <p class="aa-top-slider-location">
                            <i class="fa fa-map-marker"></i>Potential location
                        </p>
                        <p class="aa-top-slider-location">Ideally located at the
                            intersection of Gia Lam, just a few minutes</p>
                        <p class="aa-top-slider-location">to the bridges of Chuong
                            Duong, Vinh Tuy and Thanh Tri.</p>
                        <p class="aa-top-slider-price"></p>
                        <a href="#" class="aa-top-slider-btn">Read More <span
                                class="fa fa-angle-double-right"></span></a>
                    </div>
                    <!-- / Top slider content -->
                </div>
                <div class="aa-top-slider-single">
                    <img src="template/img/slider/3.png" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">VINHOME</span>
                        <h2 class="aa-top-slider-title">OCEAN PARK</h2>
                        <span class="aa-top-slider-off">Where your dream come true</span>
                        <p class="aa-top-slider-location">
                            <i class="fa fa-map-marker"></i>Potential location
                        </p>
                        <p class="aa-top-slider-location">Ideally located at the
                            intersection of Gia Lam, just a few minutes</p>
                        <p class="aa-top-slider-location">to the bridges of Chuong
                            Duong, Vinh Tuy and Thanh Tri.</p>
                        <p class="aa-top-slider-price"></p>
                        <a href="#" class="aa-top-slider-btn">Read More <span
                                class="fa fa-angle-double-right"></span></a>
                    </div>
                    <!-- / Top slider content -->
                </div>
                <div class="aa-top-slider-single">
                    <img src="template/img/slider/2.png" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">VINHOME</span>
                        <h2 class="aa-top-slider-title">OCEAN PARK</h2>
                        <span class="aa-top-slider-off">Where your dream come true</span>
                        <p class="aa-top-slider-location">
                            <i class="fa fa-map-marker"></i>Potential location
                        </p>
                        <p class="aa-top-slider-location">Ideally located at the
                            intersection of Gia Lam, just a few minutes</p>
                        <p class="aa-top-slider-location">to the bridges of Chuong
                            Duong, Vinh Tuy and Thanh Tri.</p>
                        <p class="aa-top-slider-price"></p>
                        <a href="#" class="aa-top-slider-btn">Read More <span
                                class="fa fa-angle-double-right"></span></a>
                    </div>
                    <!-- / Top slider content -->
                </div>
                <div class="aa-top-slider-single">
                    <img src="template/img/slider/4.png" alt="img">
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">VINHOME</span>
                        <h2 class="aa-top-slider-title">OCEAN PARK</h2>
                        <span class="aa-top-slider-off">Where your dream come true</span>
                        <p class="aa-top-slider-location">
                            <i class="fa fa-map-marker"></i>Potential location
                        </p>
                        <p class="aa-top-slider-location">Ideally located at the
                            intersection of Gia Lam, just a few minutes</p>
                        <p class="aa-top-slider-location">to the bridges of Chuong
                            Duong, Vinh Tuy and Thanh Tri.</p>
                        <p class="aa-top-slider-price"></p>
                        <a href="#" class="aa-top-slider-btn">Read More <span
                                class="fa fa-angle-double-right"></span></a>
                    </div>
                    <!-- / Top slider content -->
                </div>
                <div class="aa-top-slider-single">
                    <a
                        href="https://www.google.com/maps/place/Vinhomes+Ocean+Park/@20.9932408,105.9388681,18.5z/data=!4m6!3m5!1s0x3135affc94e59a69:0xbc430ecabc8006d1!4b1!8m2!3d20.9940564!4d105.9377185?hl=vi-VN"
                        target="_blank"> <img src="template/img/slider/5.png"
                                          alt="img">
                    </a>
                    <!-- Top slider content -->
                    <div class="aa-top-slider-content">
                        <span class="aa-top-slider-catg">VINHOME</span>
                        <h2 class="aa-top-slider-title">OCEAN PARK</h2>
                        <span class="aa-top-slider-off">Where your dream come true</span>
                        <p class="aa-top-slider-location">
                            <i class="fa fa-map-marker"></i>Potential location
                        </p>
                        <p class="aa-top-slider-location">Ideally located at the
                            intersection of Gia Lam, just a few minutes</p>
                        <p class="aa-top-slider-location">to the bridges of Chuong
                            Duong, Vinh Tuy and Thanh Tri.</p>
                        <p class="aa-top-slider-price"></p>
                        <a href="#" class="aa-top-slider-btn">Read More <span
                                class="fa fa-angle-double-right"></span></a>
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
                       
 <div class="col-md-3" style="width: 23%">

                            <div class="aa-single-advance-search">
                                <select class="form-control" id="province" name="ls_province"></select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="aa-single-advance-search">
                                <select class="form-control" id="district" name="ls_district"></select>
                            </div>
                            <script src="./template/js/vietnamlocalselector.js"></script>
                            <script>
                                var localpicker = new LocalPicker({
                                    province: "ls_province",
                                    district: "ls_district",
                                    ward: "ls_ward"
                                });

                            </script>
                        </div>
                        <div class="col-md-2 search-type">
                            <div class="aa-single-advance-search">
                                <select id="post_type" name="salerent">
                                    <option value="sale" selected id="saleid">BUY</option>
                                    <option value="rent" id="rentid">RENT</option>
                                </select>
                            </div>
                        </div>
                        
                        <div class="col-md-3 search-type">
                            <div class="aa-single-advance-search">
                                 <select class="form-control" id="categoryid">
                            <option value="1">Apartment</option>
                            <option value="2">Private house, street house</option>
                            <option value="3">Villa, adjacent houses</option>
                            <option value="4">The ground</option>
                            <option value="5">Residential land</option>
                            <option value="6">Office building</option>
                            <option value="7">Apartment condotel</option>
                            <option value="8">Officetel apartment</option>
                            <option value="9">Restaurant</option>
                            <option value="10">Warehouse, factory, kiot</option>
                            <option value="11">Other house and land</option>
                        </select> 
                            </div>
                            
                        </div>

                        <div class="col-md-2">
                            <div class="aa-single-advance-search">
                                <button onclick="rearch_post()" class="aa-search-btn">Search</button>
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
                <div class="row"  id="content">
                    <c:if test="${empty requestScope['ListP']}">
                        <jsp:forward page = "HomeController?ac=view" />
                    </c:if>
                    <c:forEach items="${ListP}" var = "p" >
                        <div class="product col-md-4 ">
                            <article class="aa-properties-item">
                                <a href='post-detail.jsp?postId=${p.getPostId()}'
                                   class="aa-properties-item-img"> <img style="height: 202.49px"
                                        src="${p.getAvatar()}" alt="img">
                                </a>
                                <div class="aa-tag for-${p.getSaleRent()}">For
                                    ${p.getSaleRent()}</div>
                                <div class="aa-properties-item-content">
                                    <div class="aa-properties-info">
                                        <span>${p.getRoom()} Rooms</span> <span>${p.getBath()}
                                            Baths</span> <span>Area: ${p.getArea()} m²</span>
                                    </div>
                                    <div class="aa-properties-about">
                                        <h3>
                                            <a href="post-detail.jsp?postId=${p.getPostId()}">${p.getTitle()}</a>
                                        </h3>
                                    </div>
                                    <div id="post-location">
                                        <i class="fa fa-map-marker"> </i>${p.getProvince()},${p.getDistrict()},${p.getWard()},${p.getDetailAddress()}
                                    </div>
                                    <div class="aa-properties-detial">
                                        <span class="aa-price"> $ ${p.getPrice()}</span>
                                        <a href="post-detail.jsp?postId=${p.getPostId()}" class="aa-secondary-btn">View Details</a>
                                    </div>
                                </div>
                            </article>
                        </div>
                    </c:forEach>

                </div>
                <button onclick="loadMore()" class="btn btn-primary" id="btn-load">Load More</button>

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
                        <p>List of reputable and prominent investors in Vietnam.
                            Detailed introduction of the investor, year of establishment,
                            number and information of deployed projects.</p>
                    </div>
                    <!-- Featured Investor content -->
                    <div class="aa-agents-content">
                        <ul class="aa-agents-slider">
                            <li>
                                <div class="aa-single-agents">
                                    <div class="aa-agents-img">
                                        <img src="template/img/group/logo-vinhomes.png"
                                             alt="Featured Investor">
                                    </div>
                                    <div class="aa-agetns-info">
                                        <h4>
                                            <a href="#">VinHome</a>
                                        </h4>

                                        <div class="aa-agent-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
                                                    class="fa fa-twitter"></i></a> <a href="#"><i
                                                    class="fa fa-linkedin"></i></a> <a href="#"><i
                                                    class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="aa-single-agents">
                                    <div class="aa-agents-img">
                                        <img src="template/img/group/1200px-Logo_FLC_Group.svg.png"
                                             alt="Featured Investor">
                                    </div>
                                    <div class="aa-agetns-info">
                                        <h4>
                                            <a href="#">FLC GROUP</a>
                                        </h4>
                                        <span></span>
                                        <div class="aa-agent-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
                                                    class="fa fa-twitter"></i></a> <a href="#"><i
                                                    class="fa fa-linkedin"></i></a> <a href="#"><i
                                                    class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="aa-single-agents">
                                    <div class="aa-agents-img">
                                        <img src="template/img/group/download.png"
                                             alt="Featured Investor">
                                    </div>
                                    <div class="aa-agetns-info">
                                        <h4>
                                            <a href="#">BTEC LAND</a>
                                        </h4>
                                        <span></span>
                                        <div class="aa-agent-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
                                                    class="fa fa-twitter"></i></a> <a href="#"><i
                                                    class="fa fa-linkedin"></i></a> <a href="#"><i
                                                    class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="aa-single-agents">
                                    <div class="aa-agents-img">
                                        <img src="template/img/group/fpt-mb.png"
                                             alt="Featured Investor">
                                    </div>
                                    <div class="aa-agetns-info">
                                        <h4>
                                            <a href="#">FPT GROUP</a>
                                        </h4>
                                        <div class="aa-agent-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
                                                    class="fa fa-twitter"></i></a> <a href="#"><i
                                                    class="fa fa-linkedin"></i></a> <a href="#"><i
                                                    class="fa fa-google-plus"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </li>

                            <li>
                                <div class="aa-single-agents">
                                    <div class="aa-agents-img">
                                        <img src="template/img/group/logo-bim-group.jpg"
                                             alt="Featured Investor">
                                    </div>
                                    <div class="aa-agetns-info">
                                        <h4>
                                            <a href="#">BIM GROUP</a>
                                        </h4>
                                        <div class="aa-agent-social">
                                            <a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
                                                    class="fa fa-twitter"></i></a> <a href="#"><i
                                                    class="fa fa-linkedin"></i></a> <a href="#"><i
                                                    class="fa fa-google-plus"></i></a>
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
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
                    function loadMore() {
                        var amount = document.getElementsByClassName("product").length;
                        $.ajax({
                            url: "LoadMoreController",
                            type: "get",
                            data: {
                                exits: amount
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML += data;
                            },
                            error: function (xhr) {

                            }
                        })
                    }
                    function rearch_post() {
                        var province = $("#province option:selected").text();
                        var district = $('#district option:selected').text();
                        var provinceid = $('#province option:selected').val();
                        var saleRent = $('#post_type option:selected').val();
                        var category = $('#categoryid option:selected').val();

                        $.ajax({
                            url: "SearchController",
                            type: "get",
                            data: {
                                diachi: province,
                                diachi2: district,
                                diavhivalue: provinceid,
                                sale_rent: saleRent,
                                Category: category
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                            },
                            error: function (xhr) {

                            }
                        })
                    }

                    function filterRent() {
                        let filter = "rent"
                        $.ajax({
                            url: "FilterController",
                            type: "get",
                            data: {
                                sale_rent: filter
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                                $('#btn-load').hide();
                            },
                            error: function (xhr) {

                            }
                        })
                    }
                    function filterSale() {
                        let filter2 = "sale"
                        $.ajax({
                            url: "FilterController",
                            type: "get",
                            data: {
                                sale_rent: filter2
                            },
                            success: function (data) {
                                var row = document.getElementById("content");
                                row.innerHTML = data;
                                 $('#btn-load').hide();
                            },
                            error: function (xhr) {

                            }
                        })
                    }

</script><!-- comment -->



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
<script type="text/javascript"
src="template/js/jquery.fancybox.pack.js"></script>
<!-- Custom js -->
<script src="template/js/custom.js"></script>

<script type="text/javascript">
                    function showList() {
                        document.getParameter('myform').submit();
                    }
</script>


</html>

<!-- Footer -->
<%@ include file="common/footer.jsp" %>
<!-- / Footer -->



