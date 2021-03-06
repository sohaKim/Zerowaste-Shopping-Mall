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
    <title>Ogani | Template</title>

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
<title>Insert title here</title>

</head>
<body>
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

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Checkout | 결제하기</h2>
                        <div class="breadcrumb__option">
                            <a href="index">Home</a>
                            <!--  <span></span>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6><span class="icon_tag_alt"></span> 30,000원 이상 주문시 무료배송 | <a href="shoping-cart">장바구니</a> 돌아가기</h6>
                </div>
            </div>           
            <div class="checkout__form">
                <h4>Billing Details | 결제 진행하기</h4>  
                <form id="formm" name="formm" method="post">
				<div class="row">
	                <div class="container">                   
	                    <div class="shoping__cart__table"> 
		                    <table>
		                       <thead>
		                    	<tr>
		                        	<th class="shoping__product">Products | 상품</th>
		                        	<th>Price | 금액</th> <th>Quantity | 수량</th> <th>Total |총금액</th>	                      			
		                        </tr>
		                       </thead>
		                       <tbody> 		                       
								<c:forEach var="cartVO" items="${map.cartList}" varStatus="i">	
								<tr>
	                                <td class="shoping__cart__item">
	                                    <img name="image" style="width:100px; height:100px" src="product_images/${cartVO.image}" alt="image">
	                                    <h5>${cartVO.pname}</h5>                                        	
	                                </td>
	                                    <td class="shoping__cart__price" id="price">
	                                    	 <input id="price2" type="hidden" name="price2" value="${cartVO.price2}">	                                        
	                                         <fmt:formatNumber value="${cartVO.price2}" pattern="###,###,###"/>                                        
	                                </td>
	                                <td class="shoping__cart__quantity">
		                                 <div class="quantity_btn" style="font-weight: 700; font-size: 18px;" name="quantity">
				                                 ${cartVO.quantity}
	                                     </div>
	                                </td>	                                     
	                                <td class="shoping__cart__total" id="pseqPrice">	                                      
		                                    <fmt:formatNumber pattern="###,###,###" value="${cartVO.money}"/> 
	                                </td>
	                              </tr>
	                              </c:forEach>
	                             </tbody> 								 
		                       </table>
		                    </div>  
	                     </div>
	                     <!-- 상품 리스트 끝 -->
	                     
	                     <!-- 주문자 정보 시작 -->
						 <div class="col-lg-8 col-md-6">
                            <div class="row">                            	
                                <div class="col-lg-6">
                                    <div class="checkout__input"> 
                                    	<h5><b><img src="img/cart/box-icon.png"/>수령인 정보</b></h5><br>                                  	
                                        <p>Name | 성함<span>*</span></p>
                                        <input type="text" name="mname" id="mname" value="${memberVO.name}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <input type="hidden">
                                    </div>
                                </div>
                            </div>                           
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">                                    	
                                        <p>Phone | 전화번호<span>*</span></p>
                                        <input type="text" name="phone" id="phone" value="${memberVO.phone}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>Email | 메일</p>
                                        <input type="text" name="email" id="email" value="${memberVO.email}">                                     
                                    </div>                                   
                                </div>  
                            </div>
                            <hr style="border: solid 1px grey;"><br> 
                            <div class="checkout__input__checkbox">
                            	<h5><b><img src="img/cart/box-icon.png"/>배송지 정보 </b></h5><br>	 
                                   * Ohter address | 다른 주소 사용을 원하실 경우 <b>[도로명 주소]</b>를 클릭하여 주소 수정 바랍니다.<br><br>
                            </div>                                
                            <div class="checkout__input">
                                <p>Road Name Address | 도로명 주소<span>*</span></p>
                                <input type="text" value="${memberVO.roadaddr}" name="addr1" id="roadaddr">
                            </div>
                            <div class="checkout__input">
                                <p>Detail Address | 나머지 주소<span>*</span></p>
                                <input type="text" value="${memberVO.detailaddr}" name="addr2" id="detailaddr">                                                            
                            </div>   
                            <div class="row">
	                            <div class="col-lg-3">
		                            <div class="checkout__input">		                            			                            	
		                                <p>Postcode | 우편번호<span>*</span></p>
		                                <input type="text" value="${memberVO.zonecode}" name="zonecode" id="zonecode">		                                
		                            </div>		                            
		                       </div>	                       
		                    </div>                                                                                       
	                        <div class="checkout__input">	                        	
	                            <p>Order notes | 배송관련 요청사항<span>*</span></p>
	                            <input type="text" name="shiprequest" id="shiprequest" 
	                                 placeholder="ex)부재시 현관앞에 두고 가주세요.">
	                            <fmt:formatDate value="${cartVO.indate}" type="date"/>   
	                        </div>
	                    </div>
                        
                        <!-- 오른쪽 부분 계산 시작 -->                       
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                            	<!--  <input type="hidden" id="oseq" name="oseq" value="${oseq}">-->
                                <h4>Your Order | 주문내역서</h4>
                                <div class="checkout__order__products">Products | 상품 <span>Total | 총 금액</span></div>
                                <c:forEach var="cartVO" items="${map.cartList}" varStatus="i">
	                                <ul>
	                                    <li>${cartVO.pname} <span><fmt:formatNumber value="${cartVO.money}" type="currency"/></span></li>
	                                </ul>
                                </c:forEach>
                                <div class="checkout__order__subtotal" id="fee" name="fee">Subtotal | 배송비 <span><fmt:formatNumber value="${map.fee}" type="currency"/></span></div>
                                <div class="checkout__order__total" id="allsum" name="allsum">Total | 전체금액 <span><fmt:formatNumber value="${map.allSum}" type="currency"/></span></div>                              
                                <button type="button" class="site-btn" onclick="order_invoice()">Transfer | 현금</button>
                                <button type="button" class="site-btn" id="iamport">Credit Card | 카드</button>
                            </div>                                                     
                        </div>                        
                    </div>
                </form>
            </div>
          </div>            
    </section>
    <!-- Checkout Section End -->
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
    <!-- 카카오 주소api -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>   
    <!-- 아임포트 --> 
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js" integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg==" crossorigin="anonymous" type="text/javascript"></script>
	<script src ="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
    
    <script>
    window.onload = function(){
    	document.getElementById("roadaddr").addEventListener("click",function(){//주소입력칸을 클릭
    		//카카오 지도
    		new daum.Postcode({
    			oncomplete: function(data) {//선택시 입력값 세팅
    				document.getElementById("zonecode").value=data.zonecode;//우편번호
    				document.getElementById("roadaddr").value=data.address;//도로명주소
    				document.querySelector("input[name=detailaddr]").focus();//상세주소
    				}
    		}).open();
    	});
    }
	</script> 
	

	<script>
	// checkout.jsp의 카드결제 진행, 아임포트 구현
	$("#iamport").click(function() {
		//가맹점 식별코드
		IMP.init('imp35505158');
		IMP.request_pay({
			pg: 'kakao', 
			pay_method: 'card',
			merchant_uid: 'merchant_' + new Date().getTime(),			
			name: '제로웨이스트 상품', //결제창에서 보여질 이름		
			amount: '${map.allSum}', //가격		
			buyer_email: '${memberVO.email}',
			buyer_name: '${memberVO.name}',
			buyer_tel: '${memberVO.phone}',
			buyer_addr: '${memberVO.roadaddr}',
			buyer_postcode: '{memberVO.zonecode}',
			
			}, function (rsp) {
			console.log(rsp);
			if (rsp.success) {
			var msg = '결제가 완료되었습니다.';
			msg += '고유ID : ' + rsp.imp_uid;
			msg += '상점 거래ID : ' + rsp.merchant_uid;
			msg += '결제 금액 : ' + rsp.paid_amount;
			msg += '카드 승인번호 : ' + rsp.apply_num;
				
			alert(msg);			
			
			$("#formm").attr("action","order_invoice").submit();
			} else {
			var msg = '결제에 실패하였습니다.';
			msg += '에러내용 : ' + rsp.error_msg;
			
			alert(msg);	
			location.href='javascript:history.go(-2);';
			}
		});
	});	
	</script>  
    <%@ include file="../footer.jsp" %>
     
</body>
</html>