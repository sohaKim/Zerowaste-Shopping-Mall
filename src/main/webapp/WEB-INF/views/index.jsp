<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">


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

	<title>SaveEarth::메인페이지</title>
</head>
<body>
 <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
<!--    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.JPG" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                
                <li><a href="shoping-cart"><i class="fa fa-shopping-bag"></i> <span></span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="shop-grid">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="shop-details">Shop Details</a></li>
                        <li><a href="shoping-cart">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./blog.html">Blog</a></li>
                <li><a href="./contact.html">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>-->
    <!-- Humberger End -->

    

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="all">All | 전체</a></li>
                            <li><a href='category?kind=1&order="name"'>LIVING | 리빙</a></li>
                            <li><a href='category?kind=2&order="name"'>BATHROOM | 욕실</a></li>
                            <li><a href='category?kind=3&order="name"'>KITCHEN | 주방</a></li>
                            <li><a href='category?kind=4&order="name"'>KIT | 키트</a></li>
                            <li><a href='category?kind=5&order="name"'>ETC | 기타</a></li>
                            
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
                                <input type="text" placeholder="제품명, 키워드를 검색해주세요.">
                                <button type="submit" class="site-btn">SEARCH | 검색</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+82-1688-1234</h5>
                                <span>평일 오전9시 - 오후6시 </span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg"></div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
                            <h5><a href='category?kind=1&order="name"'>LIVING | 리빙</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
                            <h5><a href='category?kind=2&order="name"'>KITCHEN | 주방</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
                            <h5><a href='category?kind=3&order="name"'>BATHROOM | 욕실</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
                            <h5><a href='category?kind=4&order="name"'>KIT | 키트</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                            <h5><a href='category?kind=5&order="name"'>ETC | 기타</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Latest Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
            <div class="col-lg-12">
                    <div class="section-title">
                        <h2>이 상품 어때요?</h2>
                    </div>
            </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="latest-product__text" >
                        <h4>NEW Products | 신상품</h4>
                        <div class="latest-product__slider owl-carousel" style="border:5px solid #7fad39;">
                            <c:forEach items="${newProductList}"  var="productVO">
						          <a href="product_detail?pseq=${productVO.pseq}">
							          <div class="latest-product__item__pic">
							            <img src="product_images/${productVO.image}" />
							          </div>
							          <div class="latest-product__item__text">
							            <h6> ${productVO.name}</h6>    
							            <span><fmt:formatNumber type="currency" value="${productVO.price2}"/></span>
							          </div>
						          </a>    
						     </c:forEach>    
                           
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="latest-product__text">
                        <h4>BEST Products | 베스트상품</h4>
                        <div class="latest-product__slider owl-carousel" style="border:5px solid #7fad39;">
                            <c:forEach items="${bestProductList}"  var="productVO">
						          <a href="product_detail?pseq=${productVO.pseq}">
							          <div class="latest-product__item__pic">
							            <img src="product_images/${productVO.image}" />
							          </div>
							          <div class="latest-product__item__text">
							            <h6> ${productVO.name}</h6>    
							            <span><fmt:formatNumber type="currency" value="${productVO.price2}"/></span>
							          </div>
						          </a>    
						     </c:forEach>    
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->



 

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

<%@ include file="footer.jsp" %>  

</body>
</html>