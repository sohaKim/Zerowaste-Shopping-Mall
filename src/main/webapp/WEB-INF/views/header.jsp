<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 0308예진 상품리뷰추가 -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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

</head>
<body>
<header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> saveearth@email.com</li>
                                <li>오후2시까지 주문할시에 당일출고</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">                            
                            <div class="header__top__right__auth">
                                <!--<a href="login_form"><i class="fa fa-user"></i> Login</a>-->
                               <ul>
                               <c:choose>
						       <c:when test="${empty sessionScope.loginUser}">
						       <li>         
						         <a href="login_form" >로그인 (고객</a>   
							     <a href="admin_login_form" >| 관리자 )</a>
							   </li>		       
						       <li>/</li>
						       <li><a href="join_form">회원가입</a></li>
						       </c:when>
						       <c:otherwise>
						       <li style="color:#7fad39">
						         ${sessionScope.loginUser.name}(${sessionScope.loginUser.id})
						       </li>
						       <li><a href="logout">로그아웃</a></li>
						       </c:otherwise>       
						       </c:choose>
						       </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="index"><img src="img/logo.jpg" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <nav class="header__menu">
                        <ul>
                            <li><a href="index">HOME</a></li>
                            <li class="active"><a href="all">Shop</a>
                            	<ul class="header__menu__dropdown">  
	                            	<li><a href='category?kind=1&order="name"'>LIVING |리빙</a></li>
		                            <li><a href='category?kind=2&order="name"'>BATHROOM | 욕실</a></li>
		                            <li><a href='category?kind=3&order="name"'>KITCHEN | 주방</a></li>
		                            <li><a href='category?kind=4&order="name"'>KIT | 키트</a></li>
		                            <li><a href='category?kind=5&order="name"'>ETC | 기타</a></li>                         	
                            	</ul>
                            </li>
                            <li><a href="mypage">MYPAGE</a>
                                
                            </li>
                             <li><a href="#">NOTICE</a>
                            	<ul class="header__menu__dropdown">
	                            	<li><a href="notice_list">NOTICE</a></li>
	                            	<li><a href="aboutus">ABOUT US</a></li>
	                            	<li><a href="faq_list">FAQ</a></li>                         	
                            	</ul>
                            </li>
                            <li><a href="qna_list">Q&amp;A(1:1)</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-1">
                    <div class="header__cart">
                        <ul>
                            <li><a href="shoping-cart"><i class="fa fa-shopping-bag"></i></a></li>
                        </ul>
                        <div class="header__cart__price"><b>장바구니</b></div>

                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>

        <!-- JS -->
        <script src="member/member.js"></script>
        <script src="mypage/mypage.js"></script>
         
    </header>
    <!-- Header Section End -->
<!--</body>-->
</html>