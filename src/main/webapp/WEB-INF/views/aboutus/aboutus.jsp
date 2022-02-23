<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 
<%-- controller 수정하고 열기
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>About us페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

	<!-- About us Css, meta생략 -->

    <!-- Site Icons -->
    <link rel="shortcut icon" href="aboutus/images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="aboutus/images/apple-touch-icon.png">
    <link rel="stylesheet" href="aboutus/css/bootstrap.min.css">
    <link rel="stylesheet" href="aboutus/css/style.css">
    <link rel="stylesheet" href="aboutus/css/responsive.css">
    <link rel="stylesheet" href="aboutus/css/custom.css">
    
</head>
<body>
<!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">All</a></li>
                            <li><a href="category?kind=1">LIVING</a></li>
                            <li><a href="category?kind=2">KITCHEN</a></li>
                            <li><a href="category?kind=3">BATHROOM</a></li>
                            <li><a href="category?kind=4">KIT</a></li>
                            <li><a href="category?kind=5">ETC</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+82 1688.1234</h5>
                                <span>평일 오전9시-오후6시 </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>About Us</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <span>About us..</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
    <!--▶▶  About us 다른 템플릿 시작 -->
    <!-- Start About Page  -->
    <div class="about-box-main">
        <div class="container">
            <div class="row">
				<div class="col-lg-6">
                    <div class="banner-frame"> <img class="img-fluid" src="aboutus/images/about-img.jpg" alt="" />
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2 class="noo-sh-title-top"> SUSTAINABLE LIFESTYLE <span>FOR ALL</span></h2>
                    <h3>건강한 소비가 만드는 건강한 지구</h3>                                      
					<p><img src="aboutus/images/location_icon.png"/>About Shopping mall |<br>
						제로웨이스트를 추구하는 조원들이 만든 친환경 상품 판매 샵 입니다.<br>
						천연 재료의 사용을 적극 활용하여 일상생활 속에서 쓰레기 발생을 줄이기 위해 노력하고,
						플라스틱 등 썩지 않는 재료의 사용을 줄이고, 불필요한 소비를 줄이는 등의 습관으로
						자연친화적인 태도를 기르고, 지구 아낌에 동참해주십사 해당 상품을 판매하는 웹사이트를 구현하였습니다.</p>
					<p><img src="aboutus/images/location_icon.png"/>Make Clean Earth with Us |<br>
						지구와 인간이 공존할 수 있는 깨끗한 환경만들기에 동참해 주세요.</p>
					<!--버튼제거  <a class="btn hvr-hover" href="#">Read More</a>-->
                </div>
            </div>
            <div class="row my-5">
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We are Trusted</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We are Professional</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    </div>
                </div>
                <div class="col-sm-6 col-lg-4">
                    <div class="service-block-inner">
                        <h3>We are Expert</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                    </div>
                </div>
            </div>
            <div class="row my-4">
                <div class="col-12">
                    <h2 class="noo-sh-title">Meet Our Team</h2>
                       <div class="team-description">
			               <p>Contact Us  |  개선사항이나 궁금하신 점이 있을경우, 아래 담당자에게 연락주시면 감사하겠습니다.</p>
			           </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-1.jpg" alt="" /> <!-- 270 X 320 PX -->
                            <div class="team-content">
                                <h3 class="title">Soyeon Kim | 김소연</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p><img src="aboutus/images/git.png"> https://github.com/sohaKim</p>
                            <p><img src="aboutus/images/email.png"> ksy2710@hanmail.net</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-2.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Sooryun Sohn | 손수련</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p><img src="aboutus/images/git.png"> https://github.com/sooryunsohn</p>
                            <p><img src="aboutus/images/email.png"> sooryun.sohn@gmail.com</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-3.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Yaejin Jang | 장예진</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p><img src="aboutus/images/git.png">https://github.com/yaejinnx</p>
                            <p><img src="aboutus/images/email.png"> yaezinny95@gmail.com</p>
                        </div>
                        <hr class="my-0"> </div>
                </div>
               	<!--  네번째 사람 없애기
                <div class="col-sm-6 col-lg-3">
                    <div class="hover-team">
                        <div class="our-team"> <img src="aboutus/images/img-1.jpg" alt="" />
                            <div class="team-content">
                                <h3 class="title">Williamson</h3> <span class="post">Web Developer</span> </div>
                            <ul class="social">
                                <li>
                                    <a href="#" class="fab fa-facebook"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-twitter"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-google-plus"></a>
                                </li>
                                <li>
                                    <a href="#" class="fab fa-youtube"></a>
                                </li>
                            </ul>
                            <div class="icon"> <i class="fa fa-plus" aria-hidden="true"></i> </div>
                        </div>
                        <div class="team-description">
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent urna diam, maximus ut ullamcorper quis, placerat id eros. Duis semper justo sed condimentum rutrum. Nunc tristique purus turpis. Maecenas vulputate. </p>
                        </div>
                        <hr class="my-0"> </div>
                </div> -->
            </div>
        </div>
    </div>
    <!-- End About Page -->

    
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>    
    
    <!-- About us -->
    <!-- ALL JS FILES -->
    <script src="aboutus/js/jquery-3.2.1.min.js"></script>
    <script src="aboutus/js/popper.min.js"></script>
    <script src="aboutus/js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="aboutus/js/jquery.superslides.min.js"></script>
    <script src="aboutus/js/bootstrap-select.js"></script>
    <script src="aboutus/js/inewsticker.js"></script>
    <script src="aboutus/js/bootsnav.js."></script>
    <script src="aboutus/js/images-loded.min.js"></script>
    <script src="aboutus/js/isotope.min.js"></script>
    <script src="aboutus/js/owl.carousel.min.js"></script>
    <script src="aboutus/js/baguetteBox.min.js"></script>
    <script src="aboutus/js/form-validator.min.js"></script>
    <script src="aboutus/js/contact-form-script.js"></script>
    <script src="aboutus/js/custom.js"></script>
    
<%@ include file="../footer.jsp" %>       
</body>
</html>