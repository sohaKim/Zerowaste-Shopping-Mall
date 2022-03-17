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
    <title>SaveEarth::샵메인페이지</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
	
	<!-- Font Icon -->
    <link rel="stylesheet" href="member/fonts/material-icon/css/material-design-iconic-font.min.css">
    
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
                            <li><a href="category?kind=1&order='name'" >LIVING | 리빙</a></li>
                            <li><a href="category?kind=2&order='name'" >BATHROOM | 욕실</a></li>
                            <li><a href="category?kind=3&order='name'" >KITCHEN | 주방</a></li>
                            <li><a href="category?kind=4&order='name'" >KIT | 키트</a></li>
                            <li><a href="category?kind=5&order='name'" >ETC | 기타</a></li>
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
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                  <form  method="post" name="formm" id="theform">  
                  <fieldset>
	                
                    <div class="product__details__text">
                        <h3 style= "display:inline;">${productVO.name}</h3>&nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="#" onclick="clip(); return false;"><img src="img/share.JPG"></a><br><br>
		                <!--<a href="#" onclick="clip(); return false;" style="color:black;"><i class="zmdi zmdi-share zmdi-hc-2x"></i></a><br><br>-->
		                
                        <label> 가 격 :  </label>                      
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
				          <input type="button" value="즉시 구매"       class="btn btn-outline-success"    onclick="go_order_direct()"> 
				        </div>
                    </div>
                   </fieldset>
                  </form>
                 </div>
                
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">상세정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">배송 및 환불/교환/AS 정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">리뷰</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h4 style="color:#7fad39;"><i class="fa fa-check-square" aria-hidden="true"></i>제품 정보</h4><br>
                                    <div style="white-space:pre; line-height:30px;"><c:out value="${productVO.content}" /></div>
                                    
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                <form  method="post" name="formm" id="theform">  
                                <fieldset>
                                <img src="product_images/${productVO.prodNotice}"alt="prodNotice"></fieldset></form>
                                </div>
                            </div>
                            
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h4 style="color:#7fad39;"><i class="fa fa-check-square" aria-hidden="true"></i>상품 리뷰</h4><br><br>
                                    <ul style="list-style-type:none; line-height:30px;"">
                                    	<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 삭제조치 될 수 있습니다.</li>
                                    	<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 SAVE EARTH 내 Q&A(1:1)게시판에 문의를 남겨주세요.</li>
                                    </ul>
                                   	<div>
                                   		<%@ include file="comment.jsp" %>
                                   		<br><br>
										<ul class="pagination pagination-md justify-content-center">										
											<c:if test="${pageMaker.prev}">
												<li class="page-item">
													<a class="page-link" href="comment${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
												</li>
											</c:if>
													
											<!-- [1][2][3]... 표시 부분 -->
											<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
												<c:choose>
													<c:when test="${pageMaker.criteria.pageNum==index}" >
														<li class="page-item active" >					
															<a class="page-link" style="color:#FFFFFF; background-color:green;" href="comment${pageMaker.makeQuery(index)}">[${index}]</a>
														</li>
													</c:when>
													<c:otherwise>
														<li class="page-item">
															<a class="page-link" style="color:#7fad39;" href="comment${pageMaker.makeQuery(index)}">${index}</a>
														</li>					
													</c:otherwise>
												</c:choose>			
											</c:forEach>			
											<c:if test="${pageMaker.next}">
												<li class="page-item">
													<a class="page-link" style="color: #7fad39;" href="comment${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
												</li>
											</c:if>					
										</ul>
									</div>
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
    <script type="text/javascript">
	function clip(){
	
		var url = '';
		var textarea = document.createElement("textarea");
		document.body.appendChild(textarea);
		url = window.document.location.href;
		textarea.value = url;
		textarea.select();
		document.execCommand("copy");
		document.body.removeChild(textarea);
		alert("URL이 복사되었습니다.")
	}
	</script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/mypage.js"></script>
<%@ include file="../footer.jsp" %>  
</body>
</html>