<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SaveEarth:회원가입</title>

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
                        <h2 class="form-title">Sign up</h2>
                        <form method="post" class="join" id="join" name="formm" action="join">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="id"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="id" id="id" value="${id}" placeholder="Your ID" size="15"/>
                        		<input type="hidden"    name="reid" id="reid" value="${reid}">
        			    		<a href="id_check_form" onclick = "window.open(this.href,'_blank','width=400,height=200'); return false;">중복체크</a>
                            </div>
                        
                            <div class="form-group">
                                <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pwd" id="pwd" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="pwdCheck" id="pwdCheck" placeholder="Repeat your password"/>
                            </div>
                             <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            
                            <!--주소입력창 -->
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-home"></i></label>
                                <input type="text" name="zonecode" id="zonecode" placeholder="Your zipcode" readonly/>
                            </div>
                            
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-home"></i></label>
                                <input type="text" name="addr1" id="roadaddr" placeholder="Your address" readonly/>
                            </div>
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-home"></i></label>
                                <input type="text" name="addr2" id="detailaddr" placeholder="Your detailaddress"/>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <input type="text" name="phone" id="phone" placeholder="PhoneNumber"/>
                            </div>
                            <div class="form-group">
                            	
                            	<input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span>
                                </span>I agree all statements in  <a href="contract" class="term-service" onclick = "window.open(this.href,'_blank','width=750,height=550'); return false;">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="button" class="btn btn-outline-success" value="회원가입" onclick="go_save()">
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="member/images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="login_form" class="signup-image-link">I am already member</a>
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
    //
	</script>
<%@ include file="../footer.jsp" %>

</html>