<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="admin/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="admin/product/product.js"></script>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-grid.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row justify-content-between">
			<a href="admin_login_form"><img src="admin/images/bar_01.jpg" style="margin-top: 5px;"></a>
			
				<div class="col-6" style="margin: 10px 0 ;">
					<a href="admin_product_list">  상품리스트 </a> |
					<a href="admin_order_list">  주문리스트 </a> | 
					<a href="admin_member_list">  회원리스트 </a> | 
					<a href="admin_qna_list">  QnA리스트 </a> | 
					<a href="#"> Notice</a> | 
					<a href="#">  판매실적 </a>
				</div>
			
			<div class="col-2" style="margin: 10px 0; text-align:right; padding-right: 20px;"><a href="admin_logout" >로그아웃</a></div>
		</div>
	</div>

