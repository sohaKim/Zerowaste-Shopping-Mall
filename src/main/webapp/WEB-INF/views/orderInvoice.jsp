<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 주문완료 내역 </title>
<link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>
 
<form id="formm" name="formm" method="get">              
<div class="receipt-content">
    <div class="container bootstrap snippets bootdey">
		<div class="row">	 
			<div class="col-md-12">
				<div class="invoice-wrapper">
				
					<div class="intro">
						<!--  <h3><strong>*주문자명: </strong></h3>--> 
						<br>
						<b>주문완료 된 영수증 내역서 입니다.</b>
					</div>

					<div class="payment-info">
						<div class="row">
							<div class="col-sm-6">
								<span>Order No|주문번호</span>
								<strong>${orderVO.oseq}</strong>
							</div>
							<div class="col-sm-6 text-right">
								<span>Order Date|주문일</span>
								<strong>${orderVO.indate}</strong>
							</div>
						</div>
					</div>

					<div class="payment-details">
					<c:forEach var="orderVO" items="${orderList}">
						<div class="row">
							<div class="col-sm-6">
								<span>Shipping Address|배송정보</span>
								<strong>
									*수령인: ${orderVO.mname}
									*연락처: ${orderVO.phone}
								</strong>
								<p>
									${orderVO.roadaddr}<br>
									${orderVO.detailaddr}<br>
									${orderVO.zonecode}<br>
									<br>
									<a href="#">
										${orderVO.email}
									</a>
								</p>
							</div>
							<div class="col-sm-6 text-right">
								<span>Payment by|결제 정보</span>
								<strong>
									<!--  ${orderVO.paymethod}-->
								</strong>
								<p>
									<a href="#">
										saveearth@email.com
									</a>
								</p>
							</div>
						</div>
					</c:forEach>
					</div>

					<div class="line-items">
						<div class="headers clearfix">
							<div class="row">
								<div class="col-xs-4">Products|상품명</div>
								<div class="col-xs-3">Quantity</div>
								<div class="col-xs-5 text-right">Amount</div>
							</div>
						</div>
						<div class="items">
							<div class="row item">
								<div class="col-xs-4 desc">
									${orderVO.pname}
								</div>
								<div class="col-xs-3 qty">
									${orderVO.quantity}
								</div>
								<div class="col-xs-5 amount text-right">
									${orderVO.price2}
								</div>
							</div>
						</div>
						<div class="total text-right">
							<p class="extra-notes">
								<strong>※ 주의사항 ※</strong><br>
								현금 입금의 경우 대표계좌로 주문일 +3일 이내로 입금해주셔야 주문처리가 됩니다.	<br>
								감사합니다.
							</p>
							<div class="field">
								Subtotal|상품합계 <span><fmt:formatNumber value="${orderVO.quantity * orderVO.price2}" type="currency"/></span>
							</div>
							<div class="field">
								Shipping|배송비 <span>${orderVO.fee}</span>
							</div>
							<div class="field grand-total">
								Total|총 합계 <span><fmt:formatNumber value="${orderVO.fee + orderVO.quantity * orderVO.price2}" type="currency"/></span>
							</div>
						</div>

						<div class="print">
							<a href="/mypage">
								<i class="fa fa-print"></i>
								마이페이지
							</a>
						</div>
					</div>
					
				</div>
				<div class="footer">
					Copyright © 2021. Save Earth
				</div>
			</div>			
		</div>
	</div>
</div>                 
</form>
 <script src="js/jquery-3.3.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
 <script src="js/main.js"></script>
 <script src="js/mypage.js"></script>
 
<%@ include file="footer.jsp" %>
</body>
</html>