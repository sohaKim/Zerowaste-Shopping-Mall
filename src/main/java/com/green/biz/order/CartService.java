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
	
	// 장바구니 수량 업데이트 김소연 추가 02.28 -- vo로 받기
	public void updateQuantityOfCart(CartVO vo);

	// 장바구니 업데이트
	void updateCart(int cseq);
}

