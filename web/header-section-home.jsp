
        <script>
        $(document).ready(function() {
            let id = '<% out.print(username);%>'
            $.ajax({
                    url: "ProfileController?ac=view",
                    method: "POST",
                    data: {get: id},
                    success: function (data) {
                        let obj = $.parseJSON(data);
                        $("#aa-username").text(obj[0].fullName)
                    },
                    error: function () {
                        alert("error");
                    }
                });
})
    </script>
   
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
                            <div class="aa-email hidden-xs">
                            <span class="fa fa-phone"></span>
                           19006789
                          </div>
                          <div class="aa-email hidden-xs">
                            <span class="fa fa-envelope-o"></span> btecland@btec.com
                          </div>
                        </div>              
                      </div>
                      <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="aa-header-right" style="cursor: pointer; margin-left: 8%;">
                            <div class="header-right-click" style="background-color: rgba(255, 255, 255, 0.6); border-radius: 5px;">
                            <div class="aa-icon" style="border: 1px solid #4c7683;"></div>
                            <div class="aa-username" style="display: flex;
                                                padding-top: 8px;
                                                color: #000;"><div id="aa-username" style="font-weight: 600" ></div>

                              <i class="fa fa-chevron-down" style="padding-top: 2px;
                                                                    padding-left: 4px;"></i>
                            </div>
                          </div>
                          <ul class="options-menu" style="z-index: 10000001"> 
                            <li><a href="manager-post.jsp?id=<% out.print(username);%>">
                              <i class="fa fa-list"></i>
                              LIST OF POST</a></li>
                            <li><a href="newpwd.jsp?id=<% out.print(username);%>">
                              <i class="fa fa-key"></i>
                              CHANGE PASSWORD</a></li>
                            <li><a href="profile.jsp?id=<% out.print(username);%>">
                              <i class="fa fa-user"></i>
                              PROFILE</a></li>
                            <li><a href="newpost.jsp?id=<% out.print(username);%>">
                              <i class="fa fa-edit"></i>
                              POST</a></li>
                            <li><a href="deposit-money.jsp?id=<% out.print(username);%>">
                              <i class="fa fa-credit-card"></i>
                              DEPOSIT MONEY</a></li>
                            <li><a href="transaction-history.jsp?id=<% out.print(username);%>">
                              <i class="fa fa-history"></i>
                              TRANSACTION HISTORY</a></li>
                            <li><a href="./LogoutController">
                              <i class="fa fa-sign-out"></i>
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
          <section id="aa-menu-area" style="z-index: 12;">
            <nav class="navbar navbar-default main-navbar" role="navigation" style="z-index: 999999;">
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
                <div id="navbar" class="navbar-collapse collapse" style="z-index: 999997">
                  <ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
                    <li class="#"><a href="index.jsp">HOME</a></li>
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

<!--                    <li class="dropdown">
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
                    </li>-->
                <li class="dropdown">
                        <a class="dropdown-toggle" href="aboutUs.jsp">About US</a>
                        
                    </li>
                    <li style="background-color: #ac2925"><a href="newpost.jsp?id=<% out.print(username);%>" class="post-button">CREATE POST <i
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
