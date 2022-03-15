package com.green.biz.order.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.dao.CartDAO;
import com.green.biz.dto.CartVO;
import com.green.biz.order.CartService;

@Service("cartService")
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDAO cartDao;

	@Override
	public void insertCart(CartVO vo) {

		cartDao.insertCart(vo);
	}

	@Override   
	// 장바구니 리스트 
	public List<CartVO> listCart(String id) {
		
		return cartDao.listCart(id);
	}

	// 장바구니에 담간 항목 중 주문전에 삭제진행
	@Override
	public void deleteCart(int cseq) {
		
		cartDao.deleteCart(cseq);
	}
	
	// 03.09 김소연 추가
	// 주문완료시 장바구니 데이터 비우기, 삭제 
	@Override
	public void emptyCartAfterOrder(String id) {
		
		cartDao.emptyCartAfterOrder(id);
		
	}
	

	// 장바구니 수량 업데이트 
	@Override
	public void updateQuantityOfCart(CartVO vo) {
		
		cartDao.updateQuantityOfCart(vo);
		
	}


	// 장바구니에 동일한 상품 레코드 확인
	@Override
	public int countCart(int pseq, String id) {
		
		return cartDao.countCart(pseq, id);
	}

	

	// 03.15 추가 ----장바구니에 담긴 항목이 1개라도 있을경우 삭제 ----
	@Override
	public void emptyCartBeforeOrder(CartVO vo) {
		cartDao.emptyCartBeforeOrder(vo);
		
	}
		
	// 장바구니 동일한 상품 레코드 확인 
	// 장바구니 수량 변경
	@Override
	public void updatePseqCart(CartVO vo) {
		
		cartDao.updatePseqCart(vo);
		
	}
	
	// 장바구니 금액 합계 수정 
	@Override
	public int sumMoney(String id) {
		
		return cartDao.sumMoney(id);
		
	}
	
	
	// ▶Admin
	// 장바구니 항목 업데이트
	@Override
	public void updateCart(int cseq) {

		cartDao.updateCart(cseq);
		
	}


}
