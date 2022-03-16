<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp"%>
<%@ page import="com.green.biz.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SaveEarth::로그인</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="member/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="member/css/style.css">
<body>
<div class="row" style="padding:100px 0;">
	<div class="col-lg-4"></div>
	<div class="col-lg-4">
	<form name="idsearch" method="post">
		<c:choose>
			<c:when test="${not empty pwd}">
				<div class="container">
					<div class="found-success" style="text-align:center;">
						<h4>회원가입시 사용한 비밀번호는 </h4>
						<div class="found-id" style="color:#7fad39; font-size:35px; line-height: 100px;">${pwd}</div>
						<h4>입니다</h4>
					</div><br><br>
					<div class="found-login">
						<a href= "login_form"><input type="button" class="btn btn-success" id="btnLogin" value="로그인화면으로 돌아가기" ' /></a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="container">
					<div class="found-fail">
						<h4>등록된 정보가 없습니다</h4>
					</div>
					<div class="found-login">
						<input type="button" id="btnback" value="다시 찾기"
							onClick="history.back()" />
					</div>
				</div>
			</c:otherwise>
		</c:choose>
	</form>
	</div>
	<div class="col-lg-4"></div>
</div>
	<!-- JS -->
	<script src="member/vendor/jquery/jquery.min.js"></script>
	<script src="member/js/main.js"></script>
	<script src="member/js/findinfo.js"></script>
	<%@ include file="../footer.jsp"%>
</html>