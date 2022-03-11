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
    <title>SaveEarth::샵메인페이지</title>

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
                            <li><a href="all">All | 전체</a></li>
                            <li><a href="category?kind=1">LIVING | 리빙</a></li>
                            <li><a href="category?kind=2">BATHROOM | 욕실</a></li>
                            <li><a href="category?kind=3">KITCHEN | 주방</a></li>
                            <li><a href="category?kind=4">KIT | 키트</a></li>
                            <li><a href="category?kind=5">ETC | 기타</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                 	<!-- 메인 홈화면의 상품검색 기능 버튼연결 -->
                        <div class="hero__search__form" id="hero__search_form">
                            <form action="#" style="display: block; margin-top: 0em;" method="post">
                                <div class="hero__search__categories" id="hero__search__categories">
                                    All Categories
                                </div>
                                <input type="text" placeholder="상품 검색은 상품 메인화면에서 가능합니다." style="border : none;">
                                <button type="button" class="site-btn" onclick="location.href='go_search_product'">이동</button>
                            </form>
                        </div>
                        <!-- 메인 홈화면의 상품검색 기능 버튼연결 --> 
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
                        <h2>${productVO.name}</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <a href="#">Shop</a>
                            <span>${productVO.name}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img src="product_images/${productVO.image}">
                        </div>
                        <!--<div class="product__details__pic__slider owl-carousel">
                            <img data-imgbigurl="img/product/details/product-details-2.jpg"
                                src="img/product/details/thumb-1.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-3.jpg"
                                src="img/product/details/thumb-2.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-5.jpg"
                                src="img/product/details/thumb-3.jpg" alt="">
                            <img data-imgbigurl="img/product/details/product-details-4.jpg"
                                src="img/product/details/thumb-4.jpg" alt="">
                        </div>-->
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                  <form  method="post" name="formm" id="theform">  
                  <fieldset>
                    <div class="product__details__text">
                        <h3>${productVO.name}</h3>                       
                   
                        <!--<div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>--><br>
                        
                        <label> 가 격 :  </label>                      
                        <!-- 김소연 수정 03.03 -->
                        <!--  <div class="product__details__price"><fmt:formatNumber type="currency" value="${productVO.price2}"/></div>-->
                        <div class="product__details__price"><fmt:formatNumber value="${productVO.price2}" pattern="###,###,###"/></div>
                        
                        <br>
                        <label> 수 량 :  </label>  
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1"name="quantity" id="quantity" size="2">
                                </div>
                            </div>
                        </div>
                        <input  type="hidden" name="pseq" value="${productVO.pseq}">
                      
                        <br><br>
                        <div id="buttons">
				          <input type="button" value="장바구니에 담기"   class="btn btn-outline-success"    onclick="go_cart()">&nbsp;&nbsp;&nbsp;&nbsp;
				          <input type="button" value="즉시 구매"       class="btn btn-outline-success"    onclick="go_order()"> 
				        </div>
                        <!--<ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                            <li><b>Weight</b> <span>0.5 kg</span></li>
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>-->
                    </div>
                      </fieldset>
                    </form>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">Description</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">Information</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">Reviews <span>(1)</span></a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <div style="white-space:pre;"><c:out value="${productVO.content}" /></div>
                                    
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>설명설명</p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>Products Infomation</h6>
                                    <p>설명설명설명</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->


    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/mypage.js"></script>
<%@ include file="footer.jsp" %>  
</body>
</html>