<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<link href="CSS/subpage.css" rel="stylesheet">
<style type="text/css">
body{   
  background-color:#7fad39;
  font-family: Verdana;
}
#wrap{     
  margin: 0 20px;
}
h1 {
  font-family: "Times New Roman", Times, serif;
  font-size: 30px;
  color: #CCC;
  font-weight: normal;
}
p {
  font-family: "Times New Roman", Times, serif;
  font-size: 20px;
  color: #CCC;
  font-weight: normal;
}
div{
color: #CCC;
}
input[type=button], input[type=submit] {
  /*float: right;*/
}
</style>
<script type="text/javascript">
function idok(){
  opener.formm.id.value="${id}"; 
  opener.formm.reid.value="${id}";
  self.close();
}
</script>
</head>
<body>
<div id="wrap">
  <h1>ID 중복확인</h1>
  <form method=post name=formm id="theform" style="margin-right:0 "
  		action="id_check_form" >
    <p>User ID <input type=text name="id" value="${id}"> 
            <input type=submit value="검색" class="submit"></p><br>     
    <div style="margin-top: 0px">   
      <c:if test="${message == 1}">
        <script type="text/javascript">
          opener.document.formm.id.value="";
        </script>
        ${id}(은)는 이미 사용중인 아이디입니다.
      </c:if>
      <c:if test="${message==-1}">
        ${id}(은)는 사용 가능한 ID입니다.
        <input type="button" value="사용" class="cancel" onclick="idok()">
      </c:if>
    </div>
  </form>
</div>  
</body>
</html>