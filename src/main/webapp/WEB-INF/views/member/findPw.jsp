<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SaveEarth::로그인</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="member/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="member/css/style.css">


<body>
	<div class="row" style="padding:50px 0;">
	<div class="col-lg-3"></div>
	<div class="col-lg-6">
	<form name="pwfindscreen" method = "post">
			<div class = "search-title">
				<h3>비밀번호 찾기</h3><br><br>
			</div>
			<section class = "form-search">
			<div class="form-group">
				<i class="zmdi zmdi-account-o"></i><span> 이름</span>
				<input type="text" name="id" class="form-control" placeholder = "아이디를 입력해주세요">
				<br>
			</div>
		
		 	<div class="form-group">
				<i class="zmdi zmdi-phone"></i><span> 전화번호</span>
				<input type="text" name="phone" class="form-control" placeholder = "휴대폰번호를 입력헤주세요">
			</div> 
			<br>
			</section>
			<div class ="btnSearch">
				<input type="button" class="btn btn-outline-success" name="enter" value="비밀번호 찾기"  onclick="pw_search()"><br><br>
				<input type="button" class="btn btn-outline-success" name="cancel" value="취소" onclick="history.back()">
 			</div>
 	</form>
 	</div>
 	<div class="col-lg-3"></div>
 	</div>

      <!-- JS -->
    <script src="member/vendor/jquery/jquery.min.js"></script>
    <script src="member/js/main.js"></script>
    <script src="member/js/findinfo.js"></script>
<%@ include file="../footer.jsp" %>

</html>