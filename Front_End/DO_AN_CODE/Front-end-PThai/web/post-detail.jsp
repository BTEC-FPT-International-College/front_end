
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
        <link href="./template/css/font-awesome.css" rel="stylesheet">
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
        <link href="./template/css/style.css" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Google Font -->
        <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="./thaicss/style-profile.css">
        <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />-->



    </head>
    <body class="aa-price-range">
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

        <!-- Start Proerty header  -->

        <section id="aa-property-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="aa-property-header-inner">
                            <h2> </h2>
                            <ol class="breadcrumb">
                                <li><a href="index.jsp">HOME</a></li>
                                <li class="active">Post Detail</li>
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
                                    <img id="avatar" src="" alt="Loading">
                                    <!--                            <img src="img/post-detail/2.jpg" alt="Oop something wrong with the image!!!">-->
                                    <!--                            <img src="img/post-detail/3.jpg" alt="Oop something wrong with the image!!!">-->
                                </div>
                                <p class="image-small-slider" id="image-small">
                                </p>

                                <div class="aa-properties-info">
                                    <h2 id="title"></h2>
                                    <h2 style="color: #b0ad00"><span class="aa-price" id="price" ></span>$</h2>
                                    <h3 id="description"></h3>
                                    <h4>Features</h4>
                                    <ul>
                                        <li>Living space (m2):<span id="area"></span> m2 </li>
                                        <li><span id="room"></span> Rooms</li>
                                        <li><span id="bath"></span> Baths</li>
                                        <li>Kitchen</li>
                                        <li>Air Condition</li>
                                        <li>Belcony</li>
                                        <li>Gym</li>
                                        <li>Fully Furnished</li>
                                        <li>CCTV</li>
                                        <li>Children Play Ground</li>
                                        <li>Comunity Center</li>
                                        <li>Security System</li><aside></aside>
                                    </ul>
                                    <!--                              <h4>Property Video</h4>
                                                                  <iframe width="100%" height="480" src="https://www.youtube.com/embed/azqWcrhlITQ" frameborder="0" allowfullscreen></iframe>
                                                                  <h4>Property Map</h4>
                                                                  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7445.707964188539!2d105.7971114267224!3d21.078493404858968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135aac0896ba75b%3A0xd95db140eef64eec!2zS2h1IMSRw7QgdGjhu4sgQ2lwdXRyYSwgUGjDuiBUaMaw4bujbmcsIFTDonkgSOG7kywgSGFub2ksIFZpZXRuYW0!5e0!3m2!1sen!2s!4v1634179379716!5m2!1sen!2s" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>-->
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
                                                <input type="text" required="required" size="30" value="" name="author" id="cmt-name">
                                            </p>
                                            <p class="comment-form-email">
                                                <label for="email">Email <span class="required">*</span></label>
                                                <input type="email" required="required" aria-required="true" value="" name="email" id="cmt-email">
                                            </p>
                                            <p class="comment-form-number">
                                                <label for="number">Phone Number <span class="required">*</span></label>
                                                <input type="number" required="required" aria-required="true" value="" name="number" id="cmt-phone">
                                            </p>
                                            <p class="comment-form-comment">
                                                <label for="comment">Comment</label>
                                                <textarea required="required" aria-required="true" rows="8" cols="45" name="comment" id="cmt-description"></textarea>
                                            </p>
                                            <p class="form-submit">
                                                <input type="button" value="Comment" style="background-color: #2a6e83; color: #fff" id="cmt-button" onclick="comments()">
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
                                    <div class="aa-single-advance-search" >
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
                                            <option value="1"> <30 m�</option>
                                            <option value="2">30 -> 50 m�</option>
                                            <option value="3">50 -> 70 m�</option>
                                            <option value="4">70 -> 100 m�</option>
                                            <option value="4">100 -> 150 m�</option>
                                            <option value="4">150 -> 300 m�</option>
                                            <option value="4">300 -> 500 m�</option>
                                            <option value="4"> > 500 m�</option>
                                        </select>
                                    </div>
                                    <div class="aa-single-advance-search">
                                        <input type="submit" value="Search" class="aa-search-btn">
                                    </div>
                                </form>
                            </div>
                            <!-- Start Single properties sidebar -->
                            <div style="font-weight: 600;">Popular Properties:</div>
                            <div class="aa-properties-single-sidebar" id="popularProperties">
                            </div> 


                        </aside>
                    </div>
                </div>
            </div>
        </section>
        <!-- / Properties  -->


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
        <script>
                                                    $(document).ready(function () {
//                                                         $('#comment-successful').hide();
                                                        let id = '<%=request.getParameter("postId")%>'
                                                        let userid = '<%=request.getParameter("id")%>'

                                                        $.ajax({
                                                            url: "DController?ac=view",
                                                            method: "POST",
                                                            data: {get: id},
                                                            success: function (data) {
                                                                let o = $.parseJSON(data);
                                                                $('#title').text(o[0].title)
                                                                $('#avatar').attr('src', o[0].avatar);
                                                                $('#area').text(o[0].area);
                                                                $('#price').text(o[0].price);
                                                                $('#description').text(o[0].description);
                                                                $('#room').text(o[0].room);
                                                                $('#bath').text(o[0].bath);
                                                                var urlImage = o[0].image.split(';')
                                                                $.each(urlImage, function (key, value) {
                                                                    var row1 = document.getElementById("image-small")
                                                                    row1.innerHTML += '<img src="' + value + '" onclick="repaleAvatar()" alt="loading" class="imgSlider">'

                                                                });
                                                            },
                                                            error: function () {
                                                                alert("error");
                                                            }
                                                        });




                                                        $.ajax({
                                                            url: "DController?ac=relatedProperti",
                                                            method: "POST",

                                                            success: function (data) {
                                                                let o = $.parseJSON(data);
                                                                $.each(o, function (key, value) {
                                                                    var row = document.getElementById("popularProperties");
                                                                    row.innerHTML +=
                                                                            '<div class="media" style="width: 30px, height: 30px">'
                                                                            + '<div class="media-left" style="width: 100px;height: 60px;">'
                                                                            + '    <a href="post-detail.jsp?postId=' + value.postId + '">'
                                                                            + '      <img class="media-object" src="' + value.avatar + '" id="popularImages" style="width: 140px; height: 90px;" alt="loading">'
                                                                            + '    </a>'
                                                                            + ' </div>'
                                                                            + ' <div class="media-body">'
                                                                            + '  <h4 class="media-heading" id="popularDes"><a href="post-detail.jsp?postId=' + value.postId + '">' + value.title + '</a></h4>'
                                                                            + '  <span></span>'



                                                                });
                                                            },
                                                            error: function () {
                                                                alert("error");
                                                            }
                                                        })


                                                    });

                                                    function repaleAvatar() {
                                                        var imgPath = $('.imgSlider').prop('src');
                                                        console.log("success " + imgPath)
                                                        $('#avatar').attr('src', imgPath);

                                                    };
                                                    var c = {};
                                                     let id = '<%=request.getParameter("postId")%>'
                                                    function comments(){
                                                        const cmtName = document.getElementById("cmt-name").value;
                                                      const cmtEmail = document.getElementById("cmt-email").value;
                                                      const cmtPhone = document.getElementById("cmt-phone").value;
                                                      const cmtContent = document.getElementById("cmt-description").value;
                                                      var today = new Date();
                                                     var dd = String(today.getDate()).padStart(2, '0');
                                                     var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                                                     var yyyy = today.getFullYear();
                                                     today = mm + '/' + dd + '/' + yyyy;
                                                        var c = {}
                                                        c.name = cmtName;
                                                        c.email = cmtEmail;
                                                        c.phone = cmtPhone;
                                                        c.content = cmtContent;
                                                        c.create_day = today;
                                                        c.postid = id;
                                                        const comment = JSON.stringify(c)
                                                        console.log(comment)
                                                        $.ajax({
                                                            url: "DController?ac=comment",
                                                            type: "post",
                                                            data: {get: comment},
                                                            success: function (data) {
                                                                let rs = $.parseJSON(data);
                                                                console.log(rs)
                                                                alert("Comment successful")
                                                                $("#cmt-name").val("")
                                                                $("#cmt-email").val("")
                                                                $("#cmt-phone").val("")
                                                                $("#cmt-description").val("")
//                                                                window.location.reload();
                                                            },
                                                            error: function () {
                                                            }
                                                        });
                                                    };


        </script> 

    </body>
</html>