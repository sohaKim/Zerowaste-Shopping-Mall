<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.green.biz.dto.ProductVO" %>
<%@ include file="header.jsp" %>  

<%
	List<ProductVO> listProduct = (List<ProductVO>)(request.getAttribute("productKindList"));
	System.out.println("List Size="+listProduct.size());
%>  
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
                            <li><a href="category?kind=1&order='name'">LIVING | 리빙</a></li>
                            <li><a href="category?kind=2&order='name'">BATHROOM | 욕실</a></li>
                            <li><a href="category?kind=3&order='name'">KITCHEN | 주방</a></li>
                            <li><a href="category?kind=4&order='name'">KIT | 키트</a></li>
                            <li><a href="category?kind=5&order='name'">ETC | 기타</a></li>
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
                                <h5>+82-1688-1234</h5>
                                <span>평일 오전9시 - 오후6시 </span>
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
                        <h2>Save Earth</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Categories | 카테고리</h4>
                            <ul>
                                <li><a href="all">All | 전체</a></li>
                            	<li><a href="category?kind=1&order='name'" onclick="save_category(1)">LIVING | 리빙</a></li>
                            	<li><a href="category?kind=2&order='name'" onclick="save_category(2)">BATHROOM | 욕실</a></li>
                            	<li><a href="category?kind=3&order='name'" onclick="save_category(3)">KITCHEN | 주방</a></li>
                            	<li><a href="category?kind=4&order='name'" onclick="save_category(4)">KIT | 키트</a></li>
                            	<li><a href="category?kind=5&order='name'" onclick="save_category(5)">ETC | 기타</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                
                <div class="col-lg-9 col-md-7">
                    <div class="filter__item">
                        <div class="row">
                            <!--<div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                    	<option value="#">이름순</option>
                                        <option value="low">낮은 가격순</option>
                                        <option value="high">높은 가격순</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6><span>16</span> Products found</h6>
                                </div>
                            </div>
                            <input type="hidden" id="category" value="${category}">-->
                            <!--<div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>-->
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort"></div>
                            </div>
                           <div class="col-lg-4 col-md-4"></div> 
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <form action="#" id="filter_form" name="filter_form">
                                    <input type="hidden" id="category" name="category" value="${category}">
                                    <input type="hidden" id="order" name="order">
                                    <ul ><!-- onclick쪽 shop-grid에 맞게 수정 필요 -->
		                                <li><a href="#" onclick="#">이름순</a></li>
		                                <li>|</li>
		                            	<li><a href="#" onclick="#">낮은 가격순</a></li>
		                            	<li>|</li>
		                            	<li><a href="#" onclick="#">높은 가격순</a></li>
		                            </ul>
		                            </form>
                                </div>
                            </div>
                        </div>
                    </div> 
					
					  <!-- 예진 상품나열 기본틀 0225완성 -->
					  <!--<div class="col-lg-9 col-md-7">-->
					  <div class="row">
					  <% for (int i=0; i<listProduct.size(); i=i+3) { %>
					  <div class="col-lg-4">
					  	<div class="product__discount">
					  		<a href="product_detail?pseq=<%= listProduct.get(i).getPseq() %>"> 
					  			<div class="product__discount __item">
					  				<div class="product__discount__item__pic set-bg" data-setbg="product_images/<%= listProduct.get(i).getImage() %>"></div>
					  				<div class="product__discount__item__text">
					  					<h5><a href="#"><%= listProduct.get(i).getName() %></a></h5>
					  					<!--<h5>${productVO.image}</h5>상품이름형식보기-->
					  					<div class="product__item__price"><%= listProduct.get(i).getPrice2() %>원</div>
					  				</div>
					  			</div>
					  			</a>
					  	</div>
					 </div>
					 
					 <% if (i+1 <listProduct.size() ) { %>
					 <div class="col-lg-4">
					  	<div class="product__discount">
					  		<a href="product_detail?pseq=<%= listProduct.get(i+1).getPseq() %>"> 
					  			<div class="product__discount __item">
					  				<div class="product__discount__item__pic set-bg" data-setbg="product_images/<%= listProduct.get(i+1).getImage() %>"></div>
					  				<div class="product__discount__item__text">
					  					<h5><a href="#"><%= listProduct.get(i+1).getName() %></a></h5>
					  					<!--<h5>${productVO.image}</h5>상품이름형식보기-->
					  					<div class="product__item__price"><%= listProduct.get(i+1).getPrice2() %>원</div>
					  				</div>
					  			</div>
					  			</a>
					  	</div>
					 </div>
					 <% }%>
					 
					 <% if (i+2 <listProduct.size() ) { %>
					 <div class="col-lg-4">
					  	<div class="product__discount">
					  		<a href="product_detail?pseq=<%= listProduct.get(i+2).getPseq() %>"> 
					  			<div class="product__discount __item">
					  				<div class="product__discount__item__pic set-bg" data-setbg="product_images/<%= listProduct.get(i+2).getImage() %>"></div>
					  				<div class="product__discount__item__text">
					  					<h5><a href="#"><%= listProduct.get(i+2).getName() %></a></h5>
					  					<!--<h5>${productVO.image}</h5>상품이름형식보기-->
					  					<div class="product__item__price"><%= listProduct.get(i+2).getPrice2() %>원</div>
					  				</div>
					  			</div>
					  			</a>
					  	</div>
					 </div>
					 <% } %>
					<%} %>
					</div>
                    </div>
                </div>
            </div>
            <!-- 0315예진 상위페이지로 이동 -->
            <a style="position:fixed; bottom:15px; right:15px; width:40px; height:40px; z-index:1; opacity:0.8;" href="#">
			<img src="img/arrow.png" title="위로가기"/>
			</a>
    </section>
    <!-- Product Section End -->

   
    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <!--<script>
    function save_category(cat) {
    	$("#category").val(cat);	
    }
    </script>-->
    
<%@ include file="footer.jsp" %>  
</body>
</html>
