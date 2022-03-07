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
/* 김소연 추가 02.28
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



//function go_cart_change() {
//	var $quantity = $("#quantity");
//	var $price = $("#price");
//	var $pseqPrice = $("#pseqPrice");
//
//	if($quantity.val()==""){
//		alert("수량을 입력해 주세요!");
//		
//	}else if($quantity.val()==0){
//		alert("수량은 1개 이상 입력해 주세요!");	
//		
//	}else if($quantity.val() > 100){
//		alert("수량이 너무 큽니다!");
//		
//	}else{
//		$pseqPrice.value = $quantity*$price
//		
//		$("#theform").attr("action","cart_quantity_change").submit();
//	}
//}

//function go_cart_change() {
//	var price = document.formm.price.value; // pseq항목의 1개 가격 sell_price,
//	var quantity = document.formm.quantity.value; // 수량  amount,
//	var pseqPrice = document.formm.pseqPrice.value; // 합계 sum, price x quantity = pseqPrice
//	
//	
//	hm = document.formm.quantity;
//	pseqPrice = document.formm.pseqPrice;
//	
//	if (hm.value < 0) {
//		hm.value = 0;
//	}
//	pseqPrice.value = parseInt(hm.value) * price;
//		
//		document.formm.action = "cart_quantity_change"
//	}



/*
*장바구니에 저장된 상품 내역을 주문처리 요청
*/
function go_order_insert(){
	$("#theform").attr("action","order_insert").submit();
}
