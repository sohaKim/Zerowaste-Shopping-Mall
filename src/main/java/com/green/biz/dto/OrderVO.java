package com.green.biz.dto;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderVO {

	private int odseq;		// 주문 상세번호
	private int oseq;		 	// 주문번호
	private String id;			// 회원id
	private Timestamp indate;	// 주문일
	private String mname;    	// 회원명	
	private String zonecode;	// 우편번호
	private String roadaddr;	// 도로명주소
	private String detailaddr;  // 상세주소
	private String phone;		// 핸드폰번호	
	private int pseq;			// 구매하는 상품번호
	private String pname;	    // 상품이름	
	private int quantity;		// 수량
	private int price2;			// 1개당 금액
	private String result;		// 결과(admin쪽) 1:미처리, 2:처리완료 
	private String image;		// 상품이미지	
	private String email;		// 메일주소
	private String shiprequest;	// 배송 요청사항 메시지;
	private int fee;			// 배송비
	private int ordertotal;	// 총 결제금액
	
	//private String paymethod;	// 결제수단  1:현금, 2:카드
}
