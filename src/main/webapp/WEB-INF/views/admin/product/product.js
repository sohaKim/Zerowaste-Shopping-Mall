/**
 * 
 */

// 상품 이름으로 조회
function go_search() {
	$("#prod_form").attr("action", "admin_product_list").submit();
}

 
//상품 전체 조회
function go_total() {
	$("#key").val("");				// 키워드를 빈 문자열로 초기화 
	$("#prod_form").attr("action", "admin_product_list").submit();
}


// 상품 등록화면 출력
function go_wrt() {
	$("#prod_form").attr("action", "admin_product_write_form").submit();
}


// 상품 등록 시 입력값 확인 
function go_save() {	
	var $price1 = $("#price1");
	var $price2 = $("#price2");
	var $price3 = $("#price3");
	
	if ($("#kind").val == "") {
		alert("상품 종류를 선택해 주세요.");
		$("#kind").focus();
	} else if ($("#name").val()=="") {
	      alert("상품명을 입력하세요!");
	      $("#name").focus();
	 } else if ($price1.val()=="") {
	      alert("원가를 입력하세요!");
	      $price1.focus();
	 } else if ($price2.val()=="") {
	      alert("판매가를 입력하세요!");
	      $price2.focus();
	 } else if ($("#content").val()=="") {
	      alert("상품상세를 입력하세요!");
	      $("#content").focus();
	 } else if ($("#product_image").val()=="") {
	      alert("상품 이미지를 입력하세요!");
	      $("#product_image").focus();
	 } else {
		 // 주의: 이미지 파일을 전송하므로 encType 설정되어야 함.
		 $("#wirte_form").attr("encoding", "multipart/form-data");
		 $("#write_form").attr("action", "admin_product_write").submit();
	 }
	
}



// 판매가 - 원가 계산. price2 - price1
function go_ab() {
	var a = $("#price2").val();
	var b = $("#price1").val();
	
	$("#price3").val(a-b);
}


// 상품 상세보기 요청 함수
function go_detail(pseq) {
	$("#prod_form").attr("action", "admin_product_detail?pseq=" + pseq).submit();
}

// 상품 수정 페이지 열기
function go_mod(pseq) {
	$("#detail_form").attr("action", "admin_product_update_form?pseq=" + pseq).submit();
}

// 상품 정보 수정
function go_mod_save(pseq) {
	var $price1 = $("#price1");
	var $price2 = $("#price2");
	var $price3 = $("#price3");
	
	if ($("#kind").val == "") {
		alert("상품 종류를 선택해 주세요.");
		$("#kind").focus();
	} else if ($("#name").val()=="") {
	      alert("상품명을 입력하세요!");
	      $("#name").focus();
	 } else if ($price1.val()=="") {
	      alert("원가를 입력하세요!");
	      $price1.focus();
	 } else if ($price2.val()=="") {
	      alert("판매가를 입력하세요!");
	      $price2.focus();
	 } else if ($price3.val()=="") {
		 $price2.focus();
	 } else if ($("#content").val()=="") {
	      alert("상품상세를 입력하세요!");
	      $("#content").focus();
	 } else {
		  // 베스트 상품 체크 수정
		 if ($("#bestyn").is(":checked")) {
			 $("#bestyn").val("y");
		 } else {
			 $("#bestyn").val("n");
		 } 
		 
		 
		 // 신상품 체크 수정 
		 if ($("#useyn").is(":checked")) {
			 $("#useyn").val("y");
		 } else {
			 $("#useyn").val("n");
		 }
		 // 주의: 이미지 파일을 전송하므로 encType 설정되어야 함.
		 $("#update_form").attr("encoding", "multipart/form-data");
		 $("#update_form").attr("action", "admin_product_update?pseq=" +pseq).submit();
	 }
}

//상품 등록 창에서 취소하고 다시 목록으로 돌아가는거 
function go_write_list() {
	$("#write_form").attr("action", "admin_product_list").submit();
}


// 상품 수정 창에서 취소하고 다시 목록으로 돌아가는거 
function go_mov() {
	$("#update_form").attr("action", "admin_product_list").submit();
}


// 상품 상세보기에서 상품 목록으로 이동
function go_list() {
	$("#detail_form").attr("action", "admin_product_list").submit();	
}

//
//// 상품 삭제
//function clickDel(pseq) {
//	$("#frm").attr("action", "admin_product_delete?pseq="+pseq).submit();
//}