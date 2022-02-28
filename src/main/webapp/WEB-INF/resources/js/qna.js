/**
 *  qna페이지 - 자바스크립트 구현
 */

/*
 * qna 상세보기 페이지에서  수정버튼 클릭시 수정페이지로 이동
 * qnaView.jsp의 onClick = "go_mod('${qnaVO.pseq}')"
 * qnaView.jsp의 form id = "qna_form"
 * QnaController의  @PostMapping(value="/qna_update_form")
 */
function go_mod(qseq) {
			$("#qna_form").attr("action", "qna_update_form?qseq=" + qseq).submit();	
}


function go_qna_save(qseq) {
	
	var $reply = $("#reply"); // qnaUpdate.jsp의 reply의 id값 "reply"
	
	
	if (($("#reply").val() == null) || ($("#reply").val() == "")) { 		
		$("#qna_update_form").attr("action", "qna_update").submit();// url 컨트롤러로 전달
		
	} else { // 답변 완료건 -- 수정불가
		alert("답변이 된 내용은 수정이 불가합니다."); // 수정불가
		history.go(-2);
		
	}
}
//
///*
// * qna 수정 취소
// * qnaUpdate.jsp의 onclick="go_qna()"
// * qnaUpdate.jsp의 form id ="qna_update_form"
// */	
//function go_qna(){
//	$("#qna_update_form").attr("action", "qna_list").submit();
//	
//}
