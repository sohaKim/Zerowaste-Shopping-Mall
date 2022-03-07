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
		            <h3>${title}</h3><hr>
		            <form name="formm" method="post">
		            <h3>주문자 정보</h3><br>
		            <table class="table table-border text-center" id="cartList">
		              <thead>
		                <tr class="table table-success">
		                  <th scope="col">주문일자</th>
		                  <th scope="col">주문번호</th>
		                  <th scope="col">주문자</th>
		                  <th scope="col">주문 총액</th>
		                </tr>
		              </thead>
		              
		              <tbody>
		                <tr>
		                  <td><fmt:formatDate value="${orderVO.indate}" type="date"/></td>
		                  <td>${orderVO.oseq}</td>
		                  <td> ${orderDetail.mname}</td>
		                  <td><fmt:formatNumber type="currency" value="${totalPrice}" /> </td>
		                </tr>
		              </tbody>
		            </table>
		            <!-- 기존 주문 상품 정보 테이블 -->
		            <!--<h3>주문 상품 정보</h3><br>
		            <table class="table table-border text-center" id="cartList">
		              <thead>
		                <tr class="table table-success">
       						<th colspan="2">상품명</th> <th>상품별주문번호</th> <th>수량</th><th>가격</th> <th>처리 상태</th>    
     					</tr>
		              </thead>
		              <c:forEach items="${orderList}"  var="orderVO">
		              <tbody>
		                <tr>
		                  <td><img src="product_images/L-01.jpg" width="70" height="80"/></td>
		                  <td> ${orderVO.pname} </td>
					      <td> ${orderVO.odseq} </td>          
					      <td> ${orderVO.quantity} </td>
					      <td> <fmt:formatNumber type="currency" value="${orderVO.price2*orderVO.quantity}" /> </td>
		                
			              <td>
					       <c:choose>
					       <c:when test='${orderVO.result=="1"}'> 진행중 </c:when>
					       <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
					       </c:choose>
					      </td>
				        </tr>
		              </tbody>
		              </c:forEach>
		            </table>-->
		            

		            <table class="table table-border" id="cartList">
		              <c:forEach items="${orderList}"  var="orderVO">
		              <thead>
		                <tr class="table table-success">
       						<th colspan="3" style="vertical-align : left;">상품별주문번호 | ${orderVO.odseq}</th>    
     					</tr>
		              </thead>
		              
		              <tbody>
		                <tr>
		                  <td rowspan="2" width="120"><img src="product_images/${orderVO.image}" width="100" height="110"/></td>
		                  <td style="text-align: left; vertical-align : middle;"> ${orderVO.pname}</td>
		                  <td rowspan="2" style= "text-align : center; vertical-align : middle; font-weight: bold;">
					       <c:choose>
					       <c:when test='${orderVO.result=="1"}'> 진행중.. </c:when>
					       <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
					       </c:choose>
					      </td>
					    </tr>
					    <tr>   
					      <td style="text-align: left; vertical-align : middle; "><fmt:formatNumber type="currency" value="${orderVO.price2*orderVO.quantity}"/> | ${orderVO.quantity}개 </td>       
					    </tr>
		              </tbody>
		              </c:forEach>
		            </table>
		            
		            <div class="clear"></div>
				     <div id="buttons" style="float: right">
				       <input type="button"    value="쇼핑 계속하기"  class="btn btn-outline-success"  onclick="location.href='index'">
				     </div>
		            </form>
		          </div>
		       </div>
              </div>
              </div>
             <!--</section>-->
            </form>
		      
    
    
<!-- 
  <article>
    <h2> ${title} </h2>
    <form name="formm" method="post">
      <h3> 주문자 정보 </h3>     
      <table id="cartList">      
      <tr>
        <th>주문일자</th> <th>주문번호</th> <th>주문자</th>
 <th> 주문 총액</th>     
     </tr>     
     <tr>  
       <td> <fmt:formatDate value="${orderDetail.indate}" type="date"/></td>
       <td> ${orderDetail.oseq} </td>    
       <td> ${orderDetail.mname} </td>
       <td> <fmt:formatNumber type="currency" 
value="${totalPrice}" /> </td>
     </tr>    
     </table>         
     <h3> 주문 상품 정보 </h3> 
     <table id="cartList">
     <tr>
       <th>상품명</th> <th>상품별주문번호</th> <th>수량</th>
 <th>가격</th> <th>처리 상태</th>    
     </tr>
     <c:forEach items="${orderList}"  var="orderVO">
     <tr>
       <td> ${orderVO.pname} </td>
       <td> ${orderVO.odseq} </td>          
       <td> ${orderVO.quantity} </td>
       <td> <fmt:formatNumber type="currency"
value="${orderVO.price2*orderVO.quantity}" /> </td>
       <td>
         <c:choose>
         <c:when test='${orderVO.result=="1"}'> 진행중 </c:when>
         <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
         </c:choose>
       </td>
     </tr>
     </c:forEach>    
     </table>   
          
     <div class="clear"></div>
     <div id="buttons" style="float: right">
       <input type="button"    value="쇼핑 계속하기"  class="cancel"  
onclick="location.href='index'">
     </div>
    </form>  
  </article> -->  
<%@ include file="../footer.jsp" %>
</html>