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
 * 장바구니 항목별 수량 ---금액 변경
 * Quantity X Price  change
 * shoping-cart.jsp의 form id ="theform"
 */

function go_cart_change() {

	if($("#quantity").val()==""){
		alert("수량을 입력해 주세요!");
		
	}else if($("#quantity").val()==0){
		alert("수량은 1개 이상 입력해 주세요!");	
		
	}else if($("#quantity").val() > 100){
		alert("수량이 너무 큽니다!");
		
	}else{
		
		$("#theform").attr("action","cart_quantity_change").submit();
	}
}

/*
 *장바구니에 저장된 상품 내역을 주문처리 요청
 */

function go_order_process(){
	$("#theform").attr("action","order_process").submit();
}

/*
 *checkout.jsp에서 현금결제 버튼 클릭시 실행
 */
function order_invoice() {
	
	var date = new Date();			
	date.setDate(date.getDate()+3);
	
	var year = date.getFullYear();
    var month = ("0" + (1 + date.getMonth())).slice(-2);
    var day = ("0" + date.getDate()).slice(-2);
	
	alert (
		' 주문이 완료되었습니다.\n 입금 기한은 ' + year + "-" + month
			+ "-" + day +' 까지 입니다.'	
	)
	
	// 결제완료시 order_import 컨트롤러로 전달해서
	// 들어온 값(buyer,카드정보 등을 mapping을 통하여insert해주기)
	$("#formm").attr("action","order_invoice").submit();
}














