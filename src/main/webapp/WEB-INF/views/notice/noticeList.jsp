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
    <title>Notcie-목록보기</title>

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
    
<!-- 검색기능 자바스크립트 추가 02.25 -->
<script type="text/javascript">
	function go_search(content) {
		
		document.frm.action = "notice_list";  
		document.frm.submit();
	  }
</script> 
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
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <!--  <span class="arrow_carrot-down"></span>-->
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
                        <h2>Notice</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <span>공지사항</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    
	<!-- Blog Section Begin -->		
    <section class="blog spad">
        <div class="container">
        <form name="frm" method="post">           
             <div class="row">
                <div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <table>
                            	<tr>
	                                <td><input type="text" name="key" id="key" placeholder="Search | 검색..."> 
	                                	<button type="submit" onclick="go_search(this.key)"><span class="icon_search"></span></button> 
                                	</td>
                                </tr>	
                            </table>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Categories | 카테고리</h4>
                            <ul>
                                <li><a href="#">All</a></li>
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
                
                <!-- 공지사사항용 이미지 삽입(크기 조정필요) width: 370px, height: 266px -->
                <!-- 성공시 상세보기 화면 noticeDetails.jsp 이동가능  -->            
                <div class="col-lg-8 col-md-7">
                   	<div class="row">
                   		<c:choose>
						   <c:when test="${noticeListSize<=0}">
						      <p style="align: center;"> 등록된 상품이 없습니다.</p>
						   </c:when>
					     <c:otherwise> 
                   	   	   <c:forEach items="${noticeList}" var="noticeVO">   
                   	         <div class="col-lg-6 col-md-6 col-sm-6">
                   	                    	
                            	<div class="blog__item">	
	                                <div class="blog__item__pic">
	                                    <img style="width:370px; height:266px;" src="img/blog/${noticeVO.notimg}"/>
	                                </div>                
	                                <div class="blog__item__text">
	                                    <ul>
	                                        <li><i class="fa fa-calendar-o"></i>작성일: <fmt:formatDate value= "${noticeVO.indate}" type="date"/></li>
	                                        <li><i class="fa fa-comment-o"></i>조회수: ${noticeVO.count}</li>
	                                    </ul>
	                                    <!--  <h5><img src="img/blog/tools_icon.png"><a href="notice_view?nseq=${noticeVO.nseq}">${noticeVO.subject}</a></h5>-->
	                                    <h5><img src="img/blog/tools_icon.png"><a href="notice_view${pageMaker.makeQuery(pageMaker.criteria.pageNum)}&nseq=${noticeVO.nseq}">${noticeVO.subject}</a></h5>
	                                    
	                                    <p>${noticeVO.content}</p>
	                                    <a href="notice_view?nseq=${noticeVO.nseq}" class="blog__btn">Details|상세보기 <span class="arrow_right"></span></a>
	                               </div>            
                             	</div>                                                               
						     </div>
                          </c:forEach>
						  </c:otherwise>
                          </c:choose> 
	                      </div>
	                          <div class="col-lg-6">
	                             <div class="product__pagination blog__pagination">
	                             	<hr>
	                             	<div class="col-lg-6" style="text-align: center;">
	                             		${paging}
	                             	 </div>
		                         </div>
	                         </div>
                         <%@ include file="page_area_notice.jsp"%>     
                  </div> 
             </div>
          </form>      
        </div>
       
    </section>
    <!-- Blog Section End -->
    
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