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
                        <h3>${productVO.name}</h3>
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
                                    <!--<h4 style="color:#7fad39;"><i class="fa fa-check-square" aria-hidden="true"></i>배송 정보</h4><br>
                                    <img src="img/paper.jpg" style="display: block; margin: 0 auto;"><br><br>
                                    <ul style="list-style-type:none; line-height:30px;">
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 모든 택배는 종지재질로 발송됩니다.(종이상자,종이완충재,종이테이프)</li>
										<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 수령하신 택배박스는 운송장을 제거하신 후 종이로 분리 배출해주세요.</li>
										<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 테이프는 반질한 느낌이 나지만 PE코팅이 없는 친환경 종이 박스 테이프입니다. 택배상자와 함께 종이로 분리 배출해주세요.</li>
										<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 종이 완충재와 택배상자는 다시 사용할만큼 깨끗하다면 재사용하시는 것도 권장드립니다.</li>
										<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> PLASTIC FREE DELIVERY에 관해 더 궁금한 사항이 있으시면 고객센터(1688-1234)를 통해 문의 해주세요. 친절히 안내 드리겠습니다.</li>
										<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 결제 완료일로부터 주말 및 공휴일 제외 2~5일 안에 배송됩니다.</li>     
									</ul><br>                             
                                    <hr style="background-color:#7fad39; height:10px;"><br>
                                    <h4 style="color:#7fad39;"><i class="fa fa-check-square" aria-hidden="true"></i>교환/환불/AS 정보</h4><br><br>
                                    <ul style="list-style-type:none;line-height:30px;">
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 모든 상품 배송 완료일로부터 7일 이내 처리 가능합니다.</li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 부분 배송 시 주문 건에 마지막 상품까지 수령하신 뒤 반품 접수해 주세요.</li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 교환/반품의 경우 상품별로 1회 처리 가능한 점 참고해주세요.</li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 고객 부주의로 상품이 훼손된 경우 교환 및 반품이 어렵습니다. </li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 상품은 받아보신 상태와 최대한 동일한 상태로 보내주셔야 처리 가능합니다.</li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 단순 변심 등 고객님의 사유로 인한 교환 및 반품 시 배송비가 부과됩니다.</li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 간혹의 경우 교환 상품이 공급처 사정에 의해 품절될 수 있으며, 이경우 유선 안내드리고 있습니다.</li>
	                                    <li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 교환/반품 처리는 상품 도착 후 3-5일(주말,공휴일제외) 정도 소요되는 점 참고 부탁드립니다.</li>
                                    </ul>-->
                                </div>
                            </div>
                            
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h4 style="color:#7fad39;"><i class="fa fa-check-square" aria-hidden="true"></i>상품 리뷰</h4><br><br>
                                    <ul style="list-style-type:none; line-height:30px;"">
                                    	<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 상품에 대한 리뷰를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 삭제조치 될 수 있습니다.</li>
                                    	<li><i class="fa fa-arrow-circle-right" aria-hidden="true" style="color:#7fad39;"></i> 배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 SAVE EARTH 내 Q&A(1:1)게시판에 문의를 남겨주세요.</li>
                                    	 
                                    </ul>
                                   <%@ include file="comment.jsp" %> 
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