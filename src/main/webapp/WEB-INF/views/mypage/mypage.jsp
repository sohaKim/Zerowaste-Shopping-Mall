<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>  
<%@ include file="../header.jsp"%>
<%@ include file="sub_menu.jsp" %> 
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>MyPAGE</title>

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
  
 <body>

		        <div class="col-8">
		          <div class="order_details_iner">
		            <h3>My Page(${title})</h3><hr>
		            <form name="formm" method="post">
		            <table class="table table-borderless" id="cartList">
		              <thead>
		                <tr>
		                  <th scope="col">주문일자</th>
		                  <th scope="col">주문번호</th>
		                  <th scope="col" colspan="2">상품명</th>
		                  <th scope="col">결제금액</th>
		                  <th scope="col">주문상세</th>
		                </tr>
		              </thead>
		              <c:forEach items="${orderList}"  var="orderVO">
		              <tbody>
		                <tr>
		                  <td><fmt:formatDate value="${orderVO.indate}" type="date"/></td>
		                  <td>${orderVO.oseq}</td>
		                  <td colspan="2"><span>${orderVO.pname} </span></td>
		                  <td> <span><fmt:formatNumber value="${orderVO.price2}" type="currency"/></span></td>
		                  <td><a href="order_detail?oseq=${orderVO.oseq}"> 조회 </a></td>
		                </tr>
		              </tbody>
		              </c:forEach>
		            </table>
		            </form>
		          </div>
		        </div>
		         </div>
                </div>
               <!--</section>-->
              </form>
		      
		   
		 
		
		




     <!-- Shoping Cart Section Begin--><!--  
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <form name="formm" method="post">
                    <div class="shoping__cart__table">
                        <table id="cartList">
                            <thead>
                                <tr>
                                    <th class="shoping__product">Products<br>상품</th>
                                    <th>Price<br>금액</th>
                                    <th>Quantity<br>수량</th>
                                    <th>Total<br>총 금액</th>
                                    <th></th>
                                </tr>
                            </thead>
                                             
                            <tbody>
                                <tr>
                                    <td><fmt:formatDate value="${orderVO.indate}" type="date"/>
                                        <img src="img/cart/cart-1.jpg" alt="">
                                        <h5>Vegetable’s Package</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        ${orderVO.oseq} 
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        10,000원
                                    </td>
                                    <td class="shoping__cart__item__close">-->
                                        <!--<span class="icon_close"></span>-->
                                        <!--<input type="checkbox" name="cseq" value= "${cartVO.cseq}">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-2.jpg" alt="">
                                        <h5>Fresh Garden Vegetable</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        8,000원
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        8,000원
                                    </td>
                                    <td class="shoping__cart__item__close">-->
                                        <!--<span class="icon_close"></span>-->
                                        <!--<input type="checkbox" name="cseq" value= "${cartVO.cseq}">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="shoping__cart__item">
                                        <img src="img/cart/cart-3.jpg" alt="">
                                        <h5>Organic Bananas</h5>
                                    </td>
                                    <td class="shoping__cart__price">
                                        20,000원
                                    </td>
                                    <td class="shoping__cart__quantity">
                                        <div class="quantity">
                                            <div class="pro-qty">
                                                <input type="text" value="1">
                                            </div>
                                        </div>
                                    </td>
                                    <td class="shoping__cart__total">
                                        20,000원
                                    </td>
                                    
                                </tr>
                            </table>
	                    </div>
	                    </form>
	                </div>
	            </div>
	        </div>
	    </section>-->
	            
                                  
 
  
  
  <!--<article>
    <h2> My Page(${title}) </h2>
    <form name="formm" method="post">
      <table id="cartList">
      <tr>
        <th>주문일자</th> <th>주문번호</th> <th>상품명</th> <th>결제 금액</th> <th>주문 상세</th> </th>    
      </tr>
      <c:forEach items="${orderList}"  var="orderVO">
      <tr>  
        <td> <fmt:formatDate value="${orderVO.indate}" type="date"/></td>
        <td> ${orderVO.oseq} </td>    
        <td> ${orderVO.pname} </td>
        <td> <fmt:formatNumber value="${orderVO.price2}" type="currency"/> </td>
        <td> <a href="order_detail?oseq=${orderVO.oseq}"> 조회 </a></td>
      </tr>
      </c:forEach>    
      </table>   
          
      <div class="clear"></div>
      <div id="buttons" style="float: right">
       <input type="button"    value="쇼핑 계속하기"  class="cancel"  onclick="location.href='index'"> 
      </div>
    </form>  
  </article>  -->
<%@ include file="../footer.jsp" %>  
</html>