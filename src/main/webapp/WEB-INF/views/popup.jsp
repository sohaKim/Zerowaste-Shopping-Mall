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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

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

	<title>SaveEarth : 메인 페이지</title>
</head>
<style>
font-family: SF Pro KR, SF Pro Display, SF Pro Icons, AOS Icons, Apple Gothic, HY Gulim, MalgunGothic, HY Dotum, Lexi Gulim, Helvetica Neue, Helvetica, Arial, sans-serif;
.layerPopup img{
margin-bottom : 20px;}
.layerPopup:before {display:block; content:""; position:fixed; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,.5); z-index:9000}
.layerPopup .layerBox {    z-index:10000;   
position:fixed; left:25%; top:28%; transform:translate(-50%, -50%); padding:30px; background:#fff; border-radius:6px; }
.layerPopup .layerBox .title {margin-bottom:10px; padding-bottom:10px; font-weight:600; border-bottom:1px solid #d9d9d9;}
.layerPopup .layerBox .btnTodayHide {
font-size:14px; font-weight:600; color:black; 
float: left;text-decoration:none;width: 150px; 
height : 30px;line-height:30px;border:black solid 1px; text-align : center;text-decoration:none;
}
.layerPopup div{
	display : inline;
}
.layerPopup form{
	margin-top : 5px;
	font-size:16px; font-weight:600;
	weight: 100%;
	height : 30px;
	line-height:30px
}
.layerPopup #close {
	font-size:16px; 
	font-weight:600; 
	width: 40px; 
	height : 30px;
	float: right; 
	line-height:30px; 
	text-align : center;
}
.layerPopup #close a{
	color:red;
}
.layerPopup a{
	text-decoration : none;
	color : black;width: 50px;height : 40px;
}
</style>
<body>
<!-- layer popup content -->
	<div class="layerPopup" id="layer_popup" style="visibility: visible;">
	    <div class="layerBox">
	        <h4 class="title">SaveEarth 공지사항</h4>
	        <div class="cont">
	            <p>
					<a href="notice_view?pageNum=1&rowsPerPage=6&nseq=7#noticediv"><img src="img/blog/notice06.JPG" width=400 height=300 usemap="#popup" alt="event page"></a>
	            </p>
	        </div>
	          <form name="pop_form">
	        <div id="check" ><input type="checkbox" name="chkbox" value="checkbox" id='chkbox' >
	        <label for="chkbox">&nbsp&nbsp오늘 하루동안 보지 않기</label></div>
			<div id="close" ><a href="javascript:closePop();" >닫기</a></div>    
			</form>
		</div>
	</div>
<script language="JavaScript">
//head 태그 안에 스크립트 선언
        function setCookie( name, value, expiredays ) {
            var todayDate = new Date();
            todayDate.setDate( todayDate.getDate() + expiredays ); 
            document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
        }
        function closePop() {
            if ( document.pop_form.chkbox.checked ){
                setCookie( "maindiv", "done" , 1 );
            }
            document.all['layer_popup'].style.visibility = "hidden";
        }
</script>
 <script language="Javascript">
    cookiedata = document.cookie;   
    if ( cookiedata.indexOf("maindiv=done") < 0 ){     
        document.all['layer_popup'].style.visibility = "visible";
    }
    else {
        document.all['layer_popup'].style.visibility = "hidden";
    }
</script>
</body>
</html>