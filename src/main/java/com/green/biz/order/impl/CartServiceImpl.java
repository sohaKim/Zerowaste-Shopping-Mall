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
	// 장바구니 리스트 -- mapping은 바껴도 그대로
	public List<CartVO> listCart(String id) {
		
		return cartDao.listCart(id);
	}

	@Override
	public void deleteCart(int cseq) {
		
		cartDao.deleteCart(cseq);
	}

	// 장바구니 수량 업데이트 김소연 추가   -- mapping은 바껴도 그대로
	@Override
	public void updateQuantityOfCart(CartVO vo) {
		
		cartDao.updateQuantityOfCart(vo);
		
	}
	
	@Override
	public void updateCart(int cseq) {

		cartDao.updateCart(cseq);
		
	}

	// 장바구니 동일한 상품 레코드 확인 --김소연 추가 03.03	
	// 1. 장바구니에 동일한 상품 레코드 확인
	@Override
	public int countCart(int pseq, String id) {
		
		return cartDao.countCart(pseq, id);
	}

	// 장바구니 동일한 상품 레코드 확인 --김소연 추가 03.03
	// 2. 장바구니 수량 변경
	@Override
	public void updatePseqCart(CartVO vo) {
		
		cartDao.updatePseqCart(vo);
		
	}
	
	// 장바구니 금액 합계 수정 -- 김소연 확인 03.03
	@Override
	public int sumMoney(String id) {
		
		return cartDao.sumMoney(id);
		
	}

}
