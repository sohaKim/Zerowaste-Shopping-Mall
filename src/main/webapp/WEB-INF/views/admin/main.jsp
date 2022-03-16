<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Earth Admin</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-grid.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript">
	function worker_check() {
		if (document.frm.workId.value == "") {
			alert("아이디를 입력하세요.");
			return false;
		} else if (document.frm.workPw.value == "") {
			alert("비밀번호를 입력하세요.");
			return false;
		}
		return true;
	}
</script>
</head>

<body>
	<div class="container">

		<div class="logo">
			<a href="admin_login_form"> <img src="admin/images/bar_01.jpg" style="margin-top: 5px;"></a>
		</div>

		<div class="loginform">
			<form name="frm" method="post" action="admin_login">
				<table style="margin-top: 100px; margin-left: 457px;">
					<tr>
						<td>아 이 디</td>
						<td><input type="text" id="workId" name="workerId" size="10"
							value="admin"></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="password" id="workPwd" name="workerPwd"
							size="10" value="admin"></td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input class="btn btn-primary" type="submit"	value="관리자 로그인" onclick="return worker_check()" style="margin: 10px;"><a href="index" class="btn btn-outline-success">메인 페이지로</a>
							<h4 style="color: red">${message}</h4></td></tr>
				</table>
			</form>
		</div>

	</div>
</body>
</html>