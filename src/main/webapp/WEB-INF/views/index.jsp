<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>  
<jsp:include page="popup.jsp"/>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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

	<title>SaveEarth : 메인 페이지</title>
</head>
<body>
	
 <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

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
                	<!-- 메인 홈화면의 상품검색 기능 버튼연결 -->
                        <div class="hero__search__form" id="hero__search_form">
                            <form action="#" style="display: block; margin-top: 0em;" method="post">
                                <div class="hero__search__categories" id="hero__search__categories">
                                    All Categories

                                    <!-- <span class="arrow_carrot-down"></span>-->

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
							          <div class="latest-product__item__text" >
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
    <script language="Javascript" type="text/javascript">
   
    
<%@ include file="footer.jsp" %>  

</body>
</html>