<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 주문완료 내역 </title>
</head>
<style>
.receipt-content .logo a:hover {
  text-decoration: none;
  color: #7793C4; 
}

.receipt-content .invoice-wrapper {
  background: #FFF;
  border: 1px solid #CDD3E2;
  box-shadow: 0px 0px 1px #CCC;
  padding: 40px 40px 60px;
  margin-top: 40px;
  border-radius: 4px; 
}

.receipt-content .invoice-wrapper .payment-details span {
  color: #A9B0BB;
  display: block; 
}
.receipt-content .invoice-wrapper .payment-details a {
  display: inline-block;
  margin-top: 5px; 
}

.receipt-content .invoice-wrapper .line-items .print a {
  display: inline-block;
  border: 1px solid #9CB5D6;
  padding: 13px 13px;
  border-radius: 5px;
  color: #708DC0;
  font-size: 13px;
  -webkit-transition: all 0.2s linear;
  -moz-transition: all 0.2s linear;
  -ms-transition: all 0.2s linear;
  -o-transition: all 0.2s linear;
  transition: all 0.2s linear; 
}

.receipt-content .invoice-wrapper .line-items .print a:hover {
  text-decoration: none;
  border-color: #333;
  color: #333; 
}

.receipt-content {
  background: #ECEEF4; 
}
@media (min-width: 1200px) {
  .receipt-content .container {width: 900px; } 
}

.receipt-content .logo {
  text-align: center;
  margin-top: 50px; 
}

.receipt-content .logo a {
  font-family: Myriad Pro, Lato, Helvetica Neue, Arial;
  font-size: 36px;
  letter-spacing: .1px;
  color: #555;
  font-weight: 300;
  -webkit-transition: all 0.2s linear;
  -moz-transition: all 0.2s linear;
  -ms-transition: all 0.2s linear;
  -o-transition: all 0.2s linear;
  transition: all 0.2s linear; 
}

.receipt-content .invoice-wrapper .intro {
  line-height: 25px;
  color: #444; 
}

.receipt-content .invoice-wrapper .payment-info {
  margin-top: 25px;
  padding-top: 15px; 
}

.receipt-content .invoice-wrapper .payment-info span {
  color: #A9B0BB; 
}

.receipt-content .invoice-wrapper .payment-info strong {
  display: block;
  color: #444;
  margin-top: 3px; 
}

@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .payment-info .text-right {
  text-align: left;
  margin-top: 20px; } 
}
.receipt-content .invoice-wrapper .payment-details {
  border-top: 2px solid #EBECEE;
  margin-top: 30px;
  padding-top: 20px;
  line-height: 22px; 
}


@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .payment-details .text-right {
  text-align: left;
  margin-top: 20px; } 
}
.receipt-content .invoice-wrapper .line-items {
  margin-top: 40px; 
}
.receipt-content .invoice-wrapper .line-items .headers {
  color: #A9B0BB;
  font-size: 13px;
  letter-spacing: .3px;
  border-bottom: 2px solid #EBECEE;
  padding-bottom: 4px; 
}
.receipt-content .invoice-wrapper .line-items .items {
  margin-top: 8px;
  border-bottom: 2px solid #EBECEE;
  padding-bottom: 8px; 
}
.receipt-content .invoice-wrapper .line-items .items .item {
  padding: 10px 0;
  color: #696969;
  font-size: 15px; 
}
@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .line-items .items .item {
  font-size: 13px; } 
}
.receipt-content .invoice-wrapper .line-items .items .item .amount {
  letter-spacing: 0.1px;
  color: #84868A;
  font-size: 16px;
 }
@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .line-items .items .item .amount {
  font-size: 13px; } 
}

.receipt-content .invoice-wrapper .line-items .total {
  margin-top: 30px; 
}

.receipt-content .invoice-wrapper .line-items .total .extra-notes {
  float: left;
  width: 40%;
  text-align: left;
  font-size: 13px;
  color: #7A7A7A;
  line-height: 20px; 
}

@media (max-width: 767px) {
  .receipt-content .invoice-wrapper .line-items .total .extra-notes {
  width: 100%;
  margin-bottom: 30px;
  float: none; } 
}

.receipt-content .invoice-wrapper .line-items .total .extra-notes strong {
  display: block;
  margin-bottom: 5px;
  color: #454545; 
}

.receipt-content .invoice-wrapper .line-items .total .field {
  margin-bottom: 7px;
  font-size: 14px;
  color: #555; 
}

.receipt-content .invoice-wrapper .line-items .total .field.grand-total {
  margin-top: 10px;
  font-size: 16px;
  font-weight: 500; 
}

.receipt-content .invoice-wrapper .line-items .total .field.grand-total span {
  color: #20A720;
  font-size: 16px; 
}

.receipt-content .invoice-wrapper .line-items .total .field span {
  display: inline-block;
  margin-left: 20px;
  min-width: 85px;
  color: #84868A;
  font-size: 15px; 
}

.receipt-content .invoice-wrapper .line-items .print {
  margin-top: 50px;
  text-align: center; 
}



.receipt-content .invoice-wrapper .line-items .print a i {
  margin-right: 3px;
  font-size: 14px; 
}

.receipt-content .footer {
  margin-top: 40px;
  margin-bottom: 110px;
  text-align: center;
  font-size: 12px;
  color: #969CAD; 
}                    
</style>
<body>
 
<form id="formm" name="formm" method="get">              
<div class="receipt-content">
<c:forEach var="orderVO" items="${orderList}">
    <div class="container bootstrap snippets bootdey">
		<div class="row">	 
			<div class="col-md-12">
				<div class="invoice-wrapper">				
					<div class="intro">
						<h5><strong>*${orderVO.mname} 님</strong></h5>						
						<b>주문완료 된 영수증 내역서 입니다.</b><br>
					</div>

					<div class="payment-info">
						<div class="row">
							<div class="col-sm-6">
								<span>Order No | 주문번호</span>
								<strong>${orderVO.oseq}</strong>
							</div>
							<div class="col-sm-6 text-right">
								<span>Order Date | 주문일</span>
								<strong>${orderVO.indate}</strong>
							</div>
						</div>	
					</div>

					<div class="payment-details">					
						<div class="row">
							<div class="col-sm-6">
								<span>Shipping Address | 배송정보</span><br>
								<strong>
									*수령인: ${orderVO.mname}<br>
									*연락처: ${orderVO.phone}<br>
								</strong>
								<p>
									${orderVO.roadaddr}<br>
									${orderVO.detailaddr}<br>
									${orderVO.zonecode}<br>
									<br>
									<a href="#">
										${orderVO.email}<br>
									</a>
								</p>
								
							</div>
							<div class="col-sm-6 text-right">
								<span>Payment by | 결제 정보</span><br>
								<strong>
									<!--연동 성공시 추후 paymethod 추가하기-->
								</strong>
								<p>
									<a href="#">
										saveearth@email.com<br>
									</a>
								</p>
							</div>
						</div>
					</div>
					<div class="line-items">
						<div class="headers clearfix">
							<div class="row">
								<div class="col-xs-4">Products | 상품명</div>
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
								Subtotal | 상품합계  : <span><fmt:formatNumber value="${orderVO.summoney}" type="currency"/></span>
							</div>
							<div class="field">
								Shipping | 배송비 : <span><fmt:formatNumber value="${orderVO.fee}" type="currency"/></span>
							</div>
							<div class="field grand-total">
								<b>Total | 총 합계  : <span><fmt:formatNumber value="${orderVO.summoney + orderVO.fee}" type="currency"/></span></b>
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
</c:forEach>	
</div>                 
</form>
 <script src="js/jquery-3.3.1.min.js"></script>
 <script src="js/bootstrap.min.js"></script>
 <script src="js/main.js"></script>
 <script src="js/mypage.js"></script>
 
<%@ include file="footer.jsp" %>
</body>
</html>