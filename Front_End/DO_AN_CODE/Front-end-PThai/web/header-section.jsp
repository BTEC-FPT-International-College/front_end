<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
        $(document).ready(function() {
            let id = '<%=request.getParameter("id")%>'
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
                            19006789
                          </div>
                          <div class="aa-email hidden-xs">
                            <span class="fa fa-envelope-o"></span> btecland@btec.com
                          </div>
                        </div>              
                      </div>
                      <div class="col-md-6 col-sm-6 col-xs-6">
                        <div class="aa-header-right" style="cursor: pointer; margin-left: 8%;">
                          <div class="header-right-click">
                            <div class="aa-icon" style="border: 1px solid #4c7683;"></div>
                            <div class="aa-username" style="display: flex;
                                                padding-top: 8px;
                                                color: #2a6e83;"><div id="aa-username" style="font-weight: 600" ></div>

                              <i class="fas fa-chevron-down" style="padding-top: 2px;
                                                                    padding-left: 4px;"></i>
                            </div>
                          </div>
                          <ul class="options-menu" style="z-index: 10000001;"> 
                            <li><a href="manager-post.jsp?id=<%=request.getParameter("id")%>">
                              <i class="far fa-list-alt"></i>
                              LIST OF POST</a></li>
                            <li><a href="newpwd.jsp?id=<%=request.getParameter("id")%>">
                              <i class="fas fa-key"></i>
                              CHANGE PASSWORD</a></li>
                            <li><a href="profile.jsp?id=<%=request.getParameter("id")%>">
                              <i class="far fa-user"></i>
                              PROFILE</a></li>
                            <li><a href="newpost.jsp?id=<%=request.getParameter("id")%>">
                              <i class="fas fa-edit"></i>
                              POST</a></li>
                            <li><a href="deposit-money.jsp?id=<%=request.getParameter("id")%>">
                              <i class="fas fa-credit-card"></i>
                              DEPOSIT MONEY</a></li>
                            <li><a href="transaction-history.jsp?id=<%=request.getParameter("id")%>">
                              <i class="fas fa-history"></i>
                              TRANSACTION HISTORY</a></li>
                            <li><a href="./LogoutController">
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
                      <a class="dropdown-toggle" data-toggle="dropdown">BUY</a>
                      
                    </li>
                    <li class="dropdown">
                      <a class="dropdown-toggle" data-toggle="dropdown">RENT</a>
                      <ul class="dropdown-menu" role="menu">
                        
                      </ul>
                    </li>

                    <li class="dropdown">
                        <a class="dropdown-toggle" href="aboutUs.jsp">About US</a>
                        
                    </li>

                    <li style="background-color: #ac2925"><a href="newpost.jsp?id=<%=request.getParameter("id")%>" class="post-button">CREATE POST <i
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
