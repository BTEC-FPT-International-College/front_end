
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="./thaicss/style-profile.css">
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
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    
    <link href="./thaicss/aboutus.css" rel="stylesheet">
    
    <!--aos library--> 
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    
</head>
<body>
    
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
    <!-- Start slider  -->
  <section id="aa-slider">
    <div class="aa-slider-area"> 
      <!-- Top slider -->
        <div class="aa-top-slider">
          <!-- Top slider single slide -->
          <div class="aa-top-slider-single">
            <img src="img/about-us-img/background.jpg" alt="img">
            <!-- Top slider content -->
            <div class="aa-top-slider-content">
              <span class="aa-top-slider-catg">BTECLAND</span>
              <h2 class="aa-top-slider-title">TEAM WORK</h2>
              <p class="aa-top-slider-location"><i class="fa fa-map-marker"></i>Hanoi (Vietnam)</p>
              <span class="aa-top-slider-off">We build a professional website system with useful features for users</span>
              <p class="aa-top-slider-price">$$$ Estimate</p>
              <a href="#" class="aa-top-slider-btn">Read More <span class="fa fa-angle-double-right"></span></a>
            </div>
            <!-- / Top slider content -->
          </div>
          <!-- / Top slider single slide -->

        </div>
    </div>
  </section>
  <!-- End slider  -->
  <!-- About us -->
  <section id="aa-about-us">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-about-us-area">
            <div class="row">
              <div class="col-md-5">
                <div class="aa-about-us-left">
                  
                  <div data-aos="fade-right"
                    data-aos-offset="300"
                    data-aos-easing="ease-in-sine">
                        <img src="about-us-img/laudai.jpg" alt="image">
                  </div>
                </div>
              </div>
              <div class="col-md-7">
                <div class="aa-about-us-right">
                  <div class="aa-title">
                    <h2>About Us</h2>
                    <span></span>
                  </div>
                  <p>BTECLAND with model Vogue Integrated Resort - Complex of tourist apartments - villas - coastal resort hotels across the territory of Vietnam with a scale of 7 hectares, one of the highlights is Truong Sa road which is the coastline. The most beautiful beach in Vietnam, gathering a series of luxury real estate projects. BTECLAND includes:</p>                  
                  <ul>
                    <li>222 Eden and Aqua apartment towers: each tower has 30 floors, a total of 838 apartments.</li>
                    <li>1000 luxury apartment buildings</li>                    
                    <li>9000 luxury resorts</li>
                    <li>All kinds of architecture as well as buildings, restaurants, offices, ... all converge in BTECLAND</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / About us -->

  <!-- Service section -->
  <section id="aa-service">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-service-area">
            <div class="aa-title">
              <h2>Our Service</h2>
              <span></span>
              <p>We provide services for buying, selling and renting real estate projects, large and small</p>
            </div>
            <!-- service content -->
            <div class="aa-service-content">
              <div class="row">
                <div class="col-md-3">
                  <div class="aa-single-service">
                    <div class="aa-service-icon">
                      <span class="fa fa-home"></span>
                    </div>
                    <div class="aa-single-service-content">
                      <h4><a href="#">Property Sale</a></h4>
                      <p>Advertisers can freely put their real estate products for sale on the website at different preferential prices.</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="aa-single-service">
                    <div class="aa-service-icon">
                      <span class="fa fa-check"></span>
                    </div>
                    <div class="aa-single-service-content">
                      <h4><a href="#">Property Rent</a></h4>
                      <p>Leasing projects in many forms. Users will rent them out for a period of time that they want.</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="aa-single-service">
                    <div class="aa-service-icon">
                      <span class="fa fa-crosshairs"></span>
                    </div>
                    <div class="aa-single-service-content">
                      <h4><a href="#">Property Development</a></h4>
                      <p>With the association with many domestic and foreign enterprises, we have completed many big projects</p>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="aa-single-service">
                    <div class="aa-service-icon">
                      <span class="fa fa-bar-chart-o"></span>
                    </div>
                    <div class="aa-single-service-content">
                      <h4><a href="#">Market Analysis</a></h4>
                      <p>Based on the consumption information of many customers, we have a system to analyze the data we have collected</p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Service section -->

  <!-- Service section -->
  <section id="aa-service">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-service-area">
            <div class="aa-title">
              <h2>Rule</h2>
              <span></span>
              <p>The site has some rules for functional users</p>
            </div>
            <!-- service content -->
            <div class="aa-service-content">
                <div class="row">
                  <div class="col-md-3">
                    <div class="aa-single-service">
                      <div class="aa-service-icon">
                        <span class="glyphicon glyphicon-search" style="background: #fc837a !important;"></span>
                      </div>
                      <div class="aa-single-service-content">
                        <h4><a href="#">Search</a></h4>
                        <p>Search by property type as well as its location</p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="aa-single-service">
                      <div class="aa-service-icon">
                        <span class="glyphicon glyphicon-usd" style="background: #fc837a !important;"></span>
                      </div>
                      <div class="aa-single-service-content">
                        <h4><a href="#">Property Rent</a></h4>
                        <p>Every dollar will be exchanged for 5 coins in BTECLAND</p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="aa-single-service">
                      <div class="aa-service-icon">
                        <span class="glyphicon glyphicon-pencil" style="background: #fc837a !important;"></span>
                      </div>
                      <div class="aa-single-service-content">
                        <h4><a href="#">Post</a></h4>
                        <p>Posting and editing features for posts. The higher the quality, the higher the price</p>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="aa-single-service">
                      <div class="aa-service-icon">
                        <span class="glyphicon glyphicon-cloud" style="background: #fc837a !important;"></span>
                      </div>
                      <div class="aa-single-service-content">
                        <h4><a href="#">History</a></h4>
                        <p>When you post, edit or recharge, history is saved for users to easily manage</p>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Service section -->

  

  <!-- Our Agent Section-->
  <section id="aa-agents">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-agents-area">
            <div class="aa-title">
              <h2>Our Team</h2>
              <span></span>
              <p>there are four people in our team</p>
            </div>
            <!-- agents content -->
            <div class="aa-agents-content">
              <ul class="aa-agents-slider">
                <li>
                    <div data-aos="fade-right"
                        data-aos-offset="400"
                        data-aos-easing="ease-in-sine">
                        <div class="aa-single-agents">
                            <div class="aa-agents-img">
                              <img src="about-us-img/mang.jpg" alt="agent member image">
                            </div>
                            <div class="aa-agetns-info">
                              <h4><a href="#">Ba Mang</a></h4>
                              <span>Team Leader</span>
                              <div class="aa-agent-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                              </div>
                            </div>
                         </div>
                    </div>
                </li>
                <li>
                    <div data-aos="fade-right"
                    data-aos-offset="300"
                    data-aos-easing="ease-in-sine">
                        <div class="aa-single-agents">
                            <div class="aa-agents-img">
                              <img src="about-us-img/manh.jpg" alt="agent member image">
                            </div>
                            <div class="aa-agetns-info">
                              <h4><a href="#">Manh Tran</a></h4>
                              <span>Coder</span>
                              <div class="aa-agent-social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                              </div>
                            </div>
                         </div>
                    </div>
                  
                </li>
                <li>
                  <div data-aos="fade-left"
                    data-aos-offset="300"
                    data-aos-easing="ease-in-sine">
                      <div class="aa-single-agents">
                        <div class="aa-agents-img">
                          <img src="about-us-img/linh.jpg" alt="agent member image">
                        </div>
                        <div class="aa-agetns-info">
                          <h4><a href="#">Yen Linh</a></h4>
                          <span>Designer</span>
                          <div class="aa-agent-social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a>
                          </div>
                        </div>
                      </div>
                  </div>
                </li>
                <li>
                    <div data-aos="fade-left"
                    data-aos-offset="400"
                    data-aos-easing="ease-in-sine">
                        <div class="aa-single-agents">
                          <div class="aa-agents-img">
                            <img src="about-us-img/thai.jpg" alt="agent member image">
                          </div>
                          <div class="aa-agetns-info">
                            <h4><a href="#">Phan Thai</a></h4>
                            <span>Frontend Developer</span>
                            <div class="aa-agent-social">
                              <a href="#"><i class="fa fa-facebook"></i></a>
                              <a href="#"><i class="fa fa-twitter"></i></a>
                              <a href="#"><i class="fa fa-linkedin"></i></a>
                              <a href="#"><i class="fa fa-google-plus"></i></a>
                            </div>
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
  <!-- / Our Agent Section-->

  <!-- Client Testimonial -->
  <section id="aa-client-testimonial">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-client-testimonial-area">
            <div class="aa-title">
              <h2>What Customer Say</h2>
              <span></span>
              <p>Thank you for the valuable contributions of potential customers. A little creativity of the writer</p>
            </div>
            <!-- testimonial content -->
            <div class="aa-testimonial-content">
              <!-- testimonial slider -->
              <ul class="aa-testimonial-slider">
                <li>
                  <div class="aa-testimonial-single">
                    <div class="aa-testimonial-img">
                      <img src="about-us-img/custom1.jpg" alt="testimonial img">
                    </div>
                    <div class="aa-testimonial-info">
                      <p>I love BTECLAND. up to now, the new supply to the market is only half of that of last year. Meanwhile, the real estate market is still on the rise from the second quarter of 2021. By the end of 2021, real estate in many areas will continue to record positive results in terms of searches, prices and transactions.</p>
                    </div>
                    <div class="aa-testimonial-bio">
                      <p>Pham Nhat Vuong</p>
                      <span>VinGroup</span>
                    </div>
                  </div>
                </li>
                 <li>
                  <div class="aa-testimonial-single">
                    <div class="aa-testimonial-img">
                      <img src="about-us-img/custom2.jpg" alt="testimonial img">
                    </div>
                    <div class="aa-testimonial-info">
                      <p>I like BLECLAND very much. Real estate prices are forecasted to start a new growth cycle in 2022. In fact, even during a difficult period due to the Covid-19 epidemic, The market still recorded a steady increase in prices in all segments.</p>
                    </div>
                    <div class="aa-testimonial-bio">
                      <p>Mark Zuckerberg</p>
                      <span>FacebookLand</span>
                    </div>
                  </div>
                </li>
                 <li>
                  <div class="aa-testimonial-single">
                    <div class="aa-testimonial-img">
                      <img src="about-us-img/custom3.jpg" alt="testimonial img">
                    </div>
                    <div class="aa-testimonial-info">
                      <p>BTECLAND is beautiful website. For example, the Eurowindow River Park project in Dong Tru (Dong Anh) is opening for sale at the River building for only 25 million/m2, Tecco Diamond project.</p>
                    </div>
                    <div class="aa-testimonial-bio">
                      <p>Shark Linh</p>
                      <span>Shark Tank</span>
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
  <!-- Client Testimonial -->

  <!-- Client brand -->
  <section id="aa-client-brand">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-client-brand-area">
            <ul class="aa-client-brand-slider">
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand1.jpg" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand2.jpg" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand3.png" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand4.jpg" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand5.png" alt="brand image">
                </div>
              </li>
               <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand1.jpg" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand2.jpg" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand3.png" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand4.jpg" alt="brand image">
                </div>
              </li>
              <li>
                <div class="aa-client-single-brand">
                  <img src="about-us-img/brand5.png" alt="brand image">
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- / Client brand -->
    
    <!--Footer-->
    <%@ include file="./footer.jsp" %>
    <script>
            AOS.init();
    </script>
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