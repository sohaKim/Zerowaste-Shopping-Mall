/**
 *상품을 장바구니에 담기 위한 요청 전달 
 */
function go_cart(){
	/*
	 * quantity 입력필드에 값이 있는지 확인
	 * 값이 없으면 alert출력
	 * 값이 있으면: url=>"cart_insert"submit
	 */
	if($("#quantity").val()==""){
		alert("수량을 입력해 주세요!");
		$("#quantity").focus();
	}else if($("#quantity").val() > 1000){
		alert("수량이 너무 큽니다!");
		$("#quantity").focus();
	}else{
		$("#theform").attr("action","cart_insert").submit();
	}
}
/*
*장바구니 항목  삭제
*/
function go_cart_delete(){
	var count = 0;
	//삭제할 항목이 하나인 경우 확인 체크안되면 count안됨
	if(document.formm.cseq.length == undefined){
		if (document.formm.cseq.checked == true){
			count++;
		}
	}
	//삭제할 항목이 2개이상인 경우 확인
	for (var i=0; i<document.formm.cseq.length; i++){
		if (document.formm.cseq[i].checked == true){
			count++;
		}
	}
	
	if(count == 0){
		alert("삭제할 항목을 선택해 주세요!");
	}else{//체크항목 있으면 
		//$("thefor").attr("action","cart_delete").submit();와 동일
	
		document.formm.action = "cart_delete";
		document.formm.submit();
	}
}
/*
*장바구니에 저장된 상품 내역을 주문처리 요청
*/
function go_order_insert(){
	$("#theform").attr("action","order_insert").submit();
}
