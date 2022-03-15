function pw_search(){

	var frm=document.pwfindscreen;

	if(frm.id.value.length<3){
		alert("아이디를 올바르게 입력해주세요");
		return;
  	}

   if (frm.phone.value.length<10) {
		alert("핸드폰번호를 정확하게 입력해주세요");
		return;
   }
	
   frm.method="post";
   frm.action="findPw"; //넘어간화면
   frm.submit(); //등록이 될수 있는 조건이면, 정보를 보내겠다.
}