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


        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


    </head>
    <body class="aa-price-range ">
        <!-- Pre Loader -->
        <!--  <div id="aa-preloader-area">
            <div class="pulse"></div>
          </div>-->
        <!-- SCROLL TOP BUTTON -->
        <a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
        <!-- END SCROLL TOP BUTTON -->

        <!--  menu -->

        <%@ include file="common/header.jsp" %>
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
    <form action="search" method="post">
        <section id="aa-advance-search">
            <div class="container">
                <div class="aa-advance-search-area">
                    <div class="form">
                        <div class="aa-advance-search-top">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="aa-single-advance-search">
                                        <input type="text" placeholder="Type Your Location "
                                               name="location">
                                    </div>
                                </div>
                                <div class="col-md-2 search-type">
                                    <div class="aa-single-advance-search">
                                        <select id="category" name="category">
                                            <option value="*" selected>BUY</option>
                                            <option value="1">RENT</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 search-type">
                                    <div class="aa-single-advance-search">
                                        <select id="category" name="category">
                                            <option value="*" selected>Category</option>
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
                                <div class="col-md-2 search-type">
                                    <div class="aa-single-advance-search">
                                        <select>
                                            <option value="0" selected>Budget</option>
                                            <option value="1"><1000 $</option>
                                            <option value="2">1000 $ -> 2000 $</option>
                                            <option value="3">2000$ -> 2 Billion</option>
                                            <option value="4">2 -> 3 Billion</option>
                                            <option value="5">3 - 5 Billion</option>
                                            <option value="6">5 - 7 Billion</option>
                                            <option value="7">7 - 10 Billion</option>
                                            <option value="8">10 - 20 Billion</option>
                                            <option value="9">>20 Billion</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 search-type">
                                    <div class="aa-single-advance-search">
                                        <select>
                                            <option value="0" selected>Area</option>
                                            <option value="1"><30 m²</option>
                                            <option value="2">30 -> 50 m²</option>
                                            <option value="3">50 -> 70 m²</option>
                                            <option value="4">70 -> 100 m²</option>
                                            <option value="4">100 -> 150 m²</option>
                                            <option value="4">150 -> 300 m²</option>
                                            <option value="4">300 -> 500 m²</option>
                                            <option value="4">> 500 m²</option>
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
    </form>
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
                                    <a href='<c:url value ="/post-detail.jsp?postId=${p.getPostId() }"/>'
                                       class="aa-properties-item-img"> <img
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
                                                <a href="#">${p.getTitle()}</a>
                                            </h3>
                                        </div>
                                        <div id="post-location">
                                            <i class="fa fa-map-marker"> ${p.getProvince()},${p.getDistrict()},${p.getWard()},${p.getDetailAddress()}</i>
                                        </div>
                                        <div class="aa-properties-detial">
                                            <span class="aa-price"> $ ${p.getPrice()}</span>
                                            <a href="<c:url value ="/detail?postId=${p.getPostId() }" />" class="aa-secondary-btn">View Details</a>
                                        </div>
                                    </div>
                                </article>
                            </div>
                        </c:forEach>

                    </div>
                    <button onclick="loadMore()" class="btn btn-primary">Load More</button>

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
                        url: "/java-web/load",
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

    </script>

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

</body>
</html>

<!-- Footer -->
<%@ include file="common/footer.jsp" %>
<!-- / Footer -->



