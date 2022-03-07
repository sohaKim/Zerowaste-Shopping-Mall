<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyPAGE</title>

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
                            <span>MyPAGE</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
 
 	<!-- Blog Section Begin -->	
	<form name="formm" method="post"> 
    <!--<section class="blog spad">  -->
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__item">
                            <h4>MyPAGE | 마이페이지</h4>
                            <ul>
                                <li><a href="shoping-cart">장바구니(cart)내역</a></li>
							    <li><a href="mypage">진행중인 주문내역</a></li>
							    <li><a href="order_all">총 주문내역</a></li>
                            </ul>
                        </div>
                     </div>
                   </div>
</html>