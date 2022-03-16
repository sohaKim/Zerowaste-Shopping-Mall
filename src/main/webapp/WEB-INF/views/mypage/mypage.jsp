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
		            <h3>My Page | ${title}</h3>
		            <hr style="background-color:#000000; height:2px;">
		            <form name="formm" method="post">
		            <table class="table table-bordered border-dark text-center" id="cartList" >
		              <thead>
		                <tr class="table" bgcolor="#7fad39" style="color:#FFFFFF; font-weight:800">
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
		                  <td><a href="order_detail?oseq=${orderVO.oseq}" style="color:#7fad39; font-weight: bold;"> 조회 </a></td>
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
<%@ include file="../footer.jsp" %>  
</html>