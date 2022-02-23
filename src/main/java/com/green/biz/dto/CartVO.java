package com.green.biz.dto;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Getter
@Setter
@ToString
public class CartVO {

	private int cseq;  		// 장바구니 일련번호
	private String id;		// 회원 ID --  (member테이블 동일)
	private int pseq;		// 상품번호 (product테이블 동일)
	private String mname;	// 회원명
	private String pname;	// 상품명
	private int quantity;	// 수량
	private int price2;		// 판매가
	private Timestamp indate;	// 등록일

}
