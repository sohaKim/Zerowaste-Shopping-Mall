<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<%@ include file="sub_menu.jsp"%>
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
 <!-- Font Icon -->
<link rel="stylesheet" href="member/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">

<!--  JS -->
<script src="member/vendor/jquery/jquery.min.js"></script>
<script src="member/member.js"></script>
<script src="mypage/mypage.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    window.onload = function(){
    	document.getElementById("roadaddr").addEventListener("click",function(){//주소입력칸을 클릭하면
    		//카카오 지도 발생
    		new daum.Postcode({
    			oncomplete: function(data) {//선택시 입력값 세팅
    				document.getElementById("zonecode").value=data.zonecode;//우편주소넣기
    				document.getElementById("roadaddr").value=data.address;//주소넣기
    				document.querySelector("input[name=detailaddr]").focus();//상세입력 포커싱
    				}
    		}).open();
    	});
    }
    //
	</script>

	<div class="col-8">
		<div class="order_details_iner">
			<h3>My Page | ${title}</h3>
			<hr>
			<div class="border border-2" style="padding: 10px; margin-bottom: 10px;">
			<form name="formm" method="post" id="updateMember">
				<div class="form-group">
					  <i class="zmdi zmdi-account material-icons-name"></i><span> 아이디</span>
					  <input type="text" class="form-control" name="id" id="id" placeholder="id" value="${loginUser.id}" readonly>
				</div>
				<div class="form-group">
					 <label for="re-pass"><i class="zmdi zmdi-lock"></i></label><span> 비밀번호</span>
					<input type="password" class="form-control" name="pwd" id="pwd" placeholder="Password" value="${loginUser.pwd}">
				</div>
				<div class="form-group">
					 <label for="password"><i class="zmdi zmdi-lock-outline"></i></label><span> 비밀번호 확인</span>
					<input type="password" class="form-control" name="pwdCheck" id="pwdCheck" placeholder="회원정보를 수정하시려면 비밀번호를 입력해 주세요." >
				</div>
				<div class="form-group">
					<i class="zmdi zmdi-account-o"></i><span> 이름</span>
					<input type="text" class="form-control" placeholder="Name" value="${loginUser.name}" readonly>
				</div>
				<div class="form-group">
					 <i class="zmdi zmdi-email"></i><span> 이메일</span>
					<input type="email" class="form-control" name="email" id="email" placeholder="Email" value="${loginUser.email }">
				</div>
				<div class="form-group">
					<i class="zmdi zmdi-phone"></i><span> 전화번호</span>
					<input type="text" class="form-control input-sm" name="phone" id="phone" placeholder="전화번호" value="${loginUser.phone }">
				</div>

				<div class="form-group">
					<i class="zmdi zmdi-home"></i><span> 주소</span>
					<input type="text" class="form-control" name="addr1" id="roadaddr" placeholder="도로명 주소" value="${loginUser.roadaddr }">
				</div>
				<div class="form-group">
					<i class="zmdi zmdi-home"></i><span>상세주소</span>
					<input type="text" class="form-control" name="addr2" id="detailaddr" placeholder="상세 주소" value="${loginUser.detailaddr }">
				</div>
				<div class="form-group">
					<i class="zmdi zmdi-home"></i><span> 우편번호</span>
					<input type="text" class="form-control" name="zonecode" id="zonecode" placeholder="Your zipcode" value="${loginUser.zonecode }" readonly>
				</div>

				<div style="margin-top: 10px;">
					<input class="btn btn-primary" type="button" value="저장" style="margin-right: 5px;" onClick="go_updateMember('${loginUser.id}')"> <a
						href="mypage"
					><button type="button" class="btn btn-outline-secondary" style="margin-right: 470px;">돌아가기</button></a> <input type="button" name="deleteMember"
						class="btn btn-danger" value="회원 탈퇴" onClick="go_deleteMember('${loginUser.id}')"
					>
				</div>
		</div>
	</div>
	 </form>
	 </div>
		          </div>
		        </div>
		         </div>
                </div>
               <!--</section>-->
              </form>




	<%@ include file="../footer.jsp"%>
</html>