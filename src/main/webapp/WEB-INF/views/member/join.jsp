<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SaveEarth::회원가입</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="member/fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="member/css/style.css">
    <link rel="stylesheet" href="/css/bootstrap.css">

    <!-- 부트스트랩 css -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
    <script type="text/javascript" src="/js/bootstrap.js"></script>


<body>
 <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h3 class="form-title">회원가입</h3>
                        <form method="post" class="join" id="join" name="formm" action="join">
                            <div class="form-group">
                                <label for="name"></label><span><i class="zmdi zmdi-account-o"></i>&nbsp;이름</span>
                                <input type="text" class="form-control" name="name" id="name" placeholder="이름을 입력헤주세요"/>
                            </div>
                            <div class="form-group">
                                <label for="id"></label><span><i class="zmdi zmdi-account material-icons-name"></i>&nbsp;아이디</span>
                                <input type="text" class="form-control" name="id" id="id" value="${id}" placeholder="ID를 입력해주세요" size="15"/>
                        		<input type="hidden"    name="reid" id="reid" value="${reid}">
        			    		<a href="id_check_form" style="float:right; color:#7fad39; font-weight: bold;" onclick = "window.open(this.href,'_blank','width=400,height=200'); return false;">중복체크</a>
                            </div>
                            <div class="form-group">
                                <label for="password"></label><span><i class="zmdi zmdi-lock"></i>&nbsp;비밀번호</span>
                                <input type="password" class="form-control"name="pwd" id="pwd" placeholder="비밀번호를 입력해주세요"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"></label><span><i class="zmdi zmdi-lock-outline"></i>&nbsp;비밀번호 확인</span>
                                <input type="password" class="form-control"name="pwdCheck" id="pwdCheck" placeholder="비밀번호를 한번 더 입력해주세요"/>
                            </div>
                            <div class="form-group">
                                <label for="phone"></label><span><i class="zmdi zmdi-phone"></i>&nbsp;휴대폰</span>
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="핸드폰번호를 입력해주세요"/>
                            </div>
                             <div class="form-group">
                                <label for="email"></label><span><i class="zmdi zmdi-email"></i>&nbsp;이메일</span>
                                <input type="email" class="form-control" name="email" id="email" placeholder="예: saveearth@email.com"/>
                            </div>
                            
                            <!--주소입력창 -->
                            <div class="form-group">
                                <label for="address"></label><span><i class="zmdi zmdi-home"></i>&nbsp;주소</span>
                                <input type="text" class="form-control" name="addr1" id="roadaddr" placeholder="주소를 입력해주세요" readonly/>
                            </div>
                            <div class="form-group">
                                <label for="address"></label><span><i class="zmdi zmdi-home"></i>&nbsp;상세주소</span>
                                <input type="text" class="form-control" name="addr2" id="detailaddr" placeholder="상세주소를 입력해주세요"/>
                            </div>
                            <div class="form-group">
                                <label for="address"></label><span><i class="zmdi zmdi-home"></i>&nbsp;우편번호</span>
                                <input type="text" class="form-control" name="zonecode" id="zonecode" placeholder="우편번호를 입력해주세요" readonly/>
                            </div>
                            
                            
                            <div class="form-group">
                            	
                            	<input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>
                                                        저는 이용약관에  <a href="contract" class="term-service" onclick = "window.open(this.href,'_blank','width=750,height=550'); return false;">전체동의</a> 합니다.</label>
                            </div>
                            <div class="form-group form-button">
                                <input type="button" class="btn btn-outline-success" value="회원가입" onclick="go_save()">
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="member/images/signup-image.jpg" alt="sing up image"></figure>
                        	<a href="login_form" class="signup-image-link">이미 회원이신가요?로그인</a>
                    </div>
                </div>
            </div>
        </section>
        
        </div>
        <!-- JS -->
    <script src="member/vendor/jquery/jquery.min.js"></script>
    <script src="member/js/main.js"></script>
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
	</script>
<%@ include file="../footer.jsp" %>

</html>