<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<html>
<head>
<title> FAQ 목록 불러오기 페이지 </title>

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
                        <h2>FAQ | 자주묻는 질문</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>                           
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
    <br><br><br>
    <!-- Map End -->
    
      <!-- FAQ시작 / 부트스트랩 -->
      <!-- C태그 작성, 데이터 삽입후 아래 세개 삭제 -->
      <!-- 빨간색 강조글씨 <code>.accordion-body</code>-->
      <!--  
      <form name="formm" id="faq_form" method="post">
      <c:forEach items="${faqList}" var="faqVO">       
      <div class="col-lg-9" style="margin:auto;">
	    <div class="accordion" id="accordionPanelsStayOpenExample">
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
	      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
	        <img src="faq/faq-icon.png">[$'{faqVO.fseq}']&nbsp;&nbsp;|&nbsp;&nbsp;<strong>${faqVO.subject}</strong>
	      </button>
	    </h2>
	    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
	      <div class="accordion-body">
	        <p>${faqVO.indate}</p>
	        <strong>${faqVO.subject}</strong><br>
	        <p>${faqVO.content}</p> <br>감사합니다.
	      </div>
	    </div>
	  </div>
	    </div>
	  </div>
	  </c:forEach>
	  	<br><br><br>
	  	-->
	  <!-- C태그 종료 -->

      <!-- FAQ시작 / 부트스트랩 -->
      <div class="col-lg-9" style="margin:auto;">
	    <div class="accordion" id="accordionPanelsStayOpenExample">
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
	      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
	        <img src="faq/faq-icon.png">[Q1]&nbsp;&nbsp;|&nbsp;&nbsp;<strong>제목제목 제목제목 제목제목  제목제목 </strong>
	      </button>
	    </h2>
	    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
	      <div class="accordion-body">
	        <strong>This is the first item's accordion body.</strong> It is shown by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
	        Accordion Item #2
	      </button>
	    </h2>
	    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
	      <div class="accordion-body">
	        <strong>This is the second item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
	        Accordion Item #3
	      </button>
	    </h2>	   
	    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
	      <div class="accordion-body">
	        <strong>This is the third item's accordion body.</strong> It is hidden by default, until the collapse plugin adds the appropriate classes that we use to style each element. These classes control the overall appearance, as well as the showing and hiding via CSS transitions. You can modify any of this with custom CSS or overriding our default variables. It's also worth noting that just about any HTML can go within the <code>.accordion-body</code>, though the transition does limit overflow.
	      </div>
	    </div>
	  </div>
	</div>
	</div>
	<br><br><br>
 	<!-- FAQ끝 -->   
        
    <!-- 버튼 -->
    <div class="row">                   
        <div class="col-lg-12 text-center">                      
             <button type="button" class="site-btn" onclick="location.href='qna_write_form'">글 쓰기</button>
              <button type="button" class="site-btn" onclick="location.href='index'">쇼핑하기</button>
        </div>
       </div>
       
    <br><br><br>    
    <!--  </form>-->

    
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