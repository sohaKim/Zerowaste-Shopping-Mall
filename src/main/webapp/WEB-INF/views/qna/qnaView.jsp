<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%-- -- 나중에 Controller수정시 열기 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
--%>
  
<!DOCTYPE html>
<html>
<head>
<title> Q&A 게시글번호로 상세조회 </title>

	<meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	
    <!--Ogani Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!--Ogani Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
    <!-- 드롭다운 / 테이블 부트스트랩 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
 
<style>


.bordertable th{
  background-color: #f7f8fa; 
  text-align: center;
}

.bordertable td{
  padding-left:20px !important;
}  

.bordertable th, .bordertable td{
  font-family: '맑은고딕', '나눔고딕', NanumGothic,;
  font-size: 12px;    
  border:1px solid #ededed !important;
  font-weight: normal;      
  line-height: 19px;
  color:#20232;
  padding-top: 9px !important;
  padding-bottom: 7px !important;
}





</style>
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
                        <h2>Q&A 게시판</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <!--  <span>문의하기</span>--> <!-- 없앴음 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Contact Section Begin -->
    <section class="contact spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_phone"></span>
                        <h4>전화번호 | Phone</h4>
                        <p>+82-1688-1234</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_pin_alt"></span>
                        <h4>주소 | Address</h4>
                        <p>서울특별시 강남구 강남대로 428 만이빌딩</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_clock_alt"></span>
                        <h4>운영시간 | Open time</h4>
                        <p>09:00 am - 18:00 pm</p>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 text-center">
                    <div class="contact__widget">
                        <span class="icon_mail_alt"></span>
                        <h4>이메일 | Email</h4>
                        <p>saveearth@email.com</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

    <!-- Map Begin -->
    <div class="map">   
        <iframe
            src="https://maps.google.com/maps?q=%EC%84%9C%EC%9A%B8%ED%8A%B9%EB%B3%84%EC%8B%9C%20%EA%B0%95%EB%82%A8%EA%B5%AC%20%EA%B0%95%EB%82%A8%EB%8C%80%EB%A1%9C%20428&t=&z=13&ie=UTF8&iwloc=&output=embed"
            height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
        <div class="map-inside">
            <i class="icon_pin"></i>
            <div class="inside-widget">
                <h4>서울</h4>
                <ul>
                    <li>전화번호: +82-1688-1234</li>
                    <li>주소: 서울특별시 강남구 강남대로 428 만이빌딩</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Map End -->

    <!-- Contact Form Begin -->
     <!-- ▶ Q&A  pseq(글번호) 선택시 상세내역 보기 -->
    <div class="contact-form spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="contact__form__title">
                        <h2> 1:1 문의 게시판</h2>
                        <h5> 고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h5>
                    </div>
                </div>
            </div>
            <br><br>
            
            <form name="formm" method="post" action="post"> <!-- action없어도되나 ?-->
                <!-- 부트스트랩 테이블 -->
                <table class="table table-bordered" id="content_table">
				    <tr>
				      <th><img src="img/qna/qnaview_icon.png"><b>제목</b></th>				   
				      <td>환불문의</td>
				    </tr> 
				      
				    <tr>
					   <th><img src="img/qna/qnaview_icon.png"><b>등록일</b></th>
					   <td>2021-12-01</td>
				    </tr> 
				    
				    <tr>
				       <th><img src="img/qna/qnaview_icon.png"><b>질문내용</b></th>
				       <td>환불문의 드립니다. 주문했는데 상품을 잘못 주문했습니다.<br>
				        	환불 또는 취소 가능한지 여부 확인 부탁드립니다.</td>
				    </tr>
				    <tr>
				       <th><img src="img/qna/qnaview_icon.png"><b>답변 내용</b></th>
				       <td></td> <!--미답변 --> 
				    </tr>
				</table>
				<br><br><br>
                
                <!-- #중요# 막아둠, 지우지말것 -->
                <!-- 부트스트랩 테이블 -->
                <!--   나중에 Controller수정시 위에꺼 tr묶음 삭제하고 열기,
                <table class="table table-bordered" id="content_table">
				    <tr>
				      <th><img src="img/qna/qnaview_icon.png"><b>제목</b></th>
				      <td>${qnaVO.subject}</td>
				    </tr> 
				      
				    <tr>
				      <th><img src="img/qna/qnaview_icon.png"><b>등록일</b></th>
				      <td><fmt:formatDate value="${qnaVO.indate}" type="date"/></td>  
				    </tr> 
				    
				    <tr>
				    	<th><img src="img/qna/qnaview_icon.png"><b>질문내용</b></th>
				        <td>${qnaVO.content}</td>
				    </tr>
				    <tr>
				        <th><img src="img/qna/qnaview_icon.png"><b>답변 내용</b></th>
				        <td>${qnaVO.reply}</td>  
				    </tr>
				</table>
				<br><br><br>				
				-->
        
                <!-- 버튼 -->
                <div class="row">                   
                    <div class="col-lg-12 text-center">
                        <button type="button" class="site-btn" onclick="location.href='qna_list'">목록 이동</button> <!-- type="submit"에서 수정함 -->
                        <button type="button" class="site-btn" onclick="location.href='index'">쇼핑하기</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
   
    <!-- Contact Form End -->
    
	<!-- Ogani Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

	<!-- 드롭다운 / 테이블 부트스트랩 -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>

<%@ include file="../footer.jsp" %>
</body>
</html>