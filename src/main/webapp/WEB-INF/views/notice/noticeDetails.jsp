<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %> 

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Notice - 상세보기</title>

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
                            <li><a href="#">All | 전체</a></li>
                            <li><a href="category?kind=1">LIVING | 거실</a></li>
                            <li><a href="category?kind=2">BATHROOM | 욕실</a></li>
                            <li><a href="category?kind=3">KITCHEN | 주방</a></li>
                            <li><a href="category?kind=4">KIT | 키트</a></li>
                            <li><a href="category?kind=5">ETC | 기타</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                    	<!-- 메인 홈화면의 상품검색 기능 시작 -->
                        <div class="hero__search__form" id="hero__search_form">
                            <form name="frm" style="display: block; margin-top: 0em;">
                                <div class="hero__search__categories" id="hero__search__categories">
                                    All Categories
                                </div>
                                <input type="text" id="key" name="key" placeholder=" 상품명을 검색해주세요. " style="border : none; width: 70%;
                                	height: 48px; font-size: 16px; color: #b2b2b2; padding-left: 20px;">
                                <button type="submit" class="site-btn" id="searchbtn" onclick="go_search_product(this.key)">SEARCH | 검색</button>
                            </form>
                        </div>
                        <!-- 메인 홈화면의 상품검색 기능 끝 -->  
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

    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="blog__details__hero__text">
                        <h2>Notice | 게시글 확인</h2>
                        <ul>
                            <li><a href="index">Home 홈</a></li>
                            <li><a href="notice_list">list 목록</a></li>
                            <li><a href="shop-grid">shopping 쇼핑</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-5 order-md-1 order-2">
                    <div class="blog__sidebar">
						<!-- 검색기능 삭제 -->
							<div class="blog__sidebar__item">
                            <h4>Categories | 카테고리</h4>
                            <ul>
                                <li><a href="notice_list">All</a></li>
                                <li><a href="notice_category?nkind=1">Notice | 일반 공지</a></li>
                                <li><a href="notice_category?nkind=2">Shipping | 배송</a></li>
                                <li><a href="notice_category?nkind=3">Events | 이벤트</a></li>
                                <li><a href="notice_category?nkind=4">Etc | 기타</a></li>
                            </ul>
                        </div>
                        <!-- 제로웨이스트 관련 뉴스 url만 연결, 이미지는 수정필요 -->
                        <div class="blog__sidebar__item">
                            <h4>Recent News | 새 소식</h4>
                            <div class="blog__sidebar__recent">                           
                                <a href="https://www.jungle.co.kr/magazine/203655" target="_blank" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                    	<img src="img/blog/sidebar/sr-1.jpg" alt="">                                     
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                    	<h6>Heniken Korea<br />zerowaste challenge</h6>
                                        <span>2021-12-02</span>
                                    </div>
                                </a>
                                <a href="https://www.sedaily.com/NewsView/22VELZCEP3" target="_blank" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-2.jpg" alt="">  
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>LG Health & Beuty<br /> zerowaste challenge</h6>
                                        <span>2021-12-23</span>
                                    </div>
                                </a>
                                <a href="http://www.ezyeconomy.com/news/articleView.html?idxno=116218" target="_blank" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="img/blog/sidebar/sr-3.jpg" alt=""> 
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6>Cheiljemyunso<br />zerowaste challenge</h6>
                                        <span>2022-02-08</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Search By | 검색 키워드</h4>
                            <div class="blog__sidebar__item__tags">
                                <a href="#">배송</a>
                                <a href="#">휴일</a>
                                <a href="#">공지사항</a>
                                <a href="#">계좌</a>
                                <a href="#">환불</a>
                                <a href="#">교환</a>
                            </div>
                        </div>
                    </div>
                </div>
             <!-- 세부화면 메인 이미지 370px, 270px/ text 시작--> 
             <div class="col-lg-8 col-md-7 order-md-1 order-1" id="noticediv">
                 <form name="frmmm" method="post">
                    <div class="blog__details__text">                   	                    
	                   <h3><img src="img/blog/tools_icon.png"> Notice | 공지사항</h3>	
	                   <hr>                                             
						<span>Categories: </span> ${nkind}                             
		                <h5><b>Title: ${noticeVO.subject}</b></h5>			                                          		                             	 
	                    <span>Notice작성일자: </span><fmt:formatDate value="${noticeVO.indate}" type="date"/> |  조회수: ${noticeVO.count}<br>    
                    	<hr>
                    	<br>	                	
                        <img src="img/blog/${noticeVO.notimg}"/>   
                        <p style="white-space:pre;">${noticeVO.content}</p> 
                     </div> 
				     <!-- 버튼 -->
			         <div class="row">                   
			            <div class="col-lg-12 text-center">
			                <button type="button" class="site-btn" onclick="location.href='notice_list'">목록으로 </button>		                        
			             </div>
			            </div> 
			          </form>   
			     </div>	
             </div>
           </div>
        </section>  
        <!-- 세부화면 끝 -->   
      <!-- Blog Details Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    
<%@ include file="../footer.jsp" %>

</body>
</html>