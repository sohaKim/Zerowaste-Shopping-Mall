package com.green.biz.order;

import java.util.List;

import com.green.biz.dto.CartVO;

public interface CartService {

	// 장바구니 담기
	void insertCart(CartVO vo);

	// 장바구니 목록 
	List<CartVO> listCart(String id);

	// 장바구니에서 항목 삭제
	void deleteCart(int cseq);
	
	// 장바구니 수량 업데이트 
	public void updateQuantityOfCart(CartVO vo);	

	// 장바구니에 동일한 상품 레코드 확인
	public int countCart(int pseq, String id);

	// 바구니 수량 변경
	public void updatePseqCart(CartVO vo);

	// 장바구니 금액 합계 수정 
	public int sumMoney(String id);
	
	// ▶Admin
	// 장바구니 업데이트
	void updateCart(int cseq);
}

