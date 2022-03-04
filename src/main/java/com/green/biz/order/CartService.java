package com.green.biz.order;

import java.util.List;

import com.green.biz.dto.CartVO;

public interface CartService {

	// 장바구니 담기
	void insertCart(CartVO vo);

	// 장바구니 목록 -- mapping은 바껴도 그대로
	List<CartVO> listCart(String id);

	// 장바구니에서 항목 삭제
	void deleteCart(int cseq);
	
	// 장바구니 수량 업데이트 김소연 추가 -- mapping은 바껴도 그대로
	public void updateQuantityOfCart(CartVO vo);

	// 장바구니 업데이트
	void updateCart(int cseq);
	
	// 장바구니 동일한 상품 레코드 확인 --김소연 추가 03.03	
	// 1. 장바구니에 동일한 상품 레코드 확인
	public int countCart(int pseq, String id);
	
	// 장바구니 동일한 상품 레코드 확인 --김소연 추가 03.03
	// 2. 장바구니 수량 변경
	public void updatePseqCart(CartVO vo);

	// 장바구니 금액 합계 수정 -- 김소연 확인 03.03
	public int sumMoney(String id);
}

