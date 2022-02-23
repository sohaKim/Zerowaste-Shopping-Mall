<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 	<!-- Blog Section Begin -->	
	<form name="formm" method="post"> 
    <!--<section class="blog spad">  -->
        <div class="container">
            <div class="row">
                <div class="col-3">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__item">
                            <h4>MyPAGE | 마이페이지</h4>
                            <ul>
                                <li><a href="cart_list">장바구니(cart)내역</a></li>
							    <li><a href="mypage">진행중인 주문내역</a></li>
							    <li><a href="order_all">총 주문내역</a></li>
                            </ul>
                        </div>
                     </div>
                   </div>
                
                    
  <!--  <article>
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
  </article>-->
  
 

</html>