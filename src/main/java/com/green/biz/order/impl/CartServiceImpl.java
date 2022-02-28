package com.green.biz.order.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
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
	public List<CartVO> listCart(String id) {
		
		return cartDao.listCart(id);
	}

	@Override
	public void deleteCart(int cseq) {
		
		cartDao.deleteCart(cseq);
	}

	// 장바구니 수량 업데이트 김소연 추가 02.28 -- vo로 받기
	@Override
	public void updateQuantityOfCart(CartVO vo) {
		
		cartDao.updateQuantityOfCart(vo);
		
	}
	
	@Override
	public void updateCart(int cseq) {

		cartDao.updateCart(cseq);
		
	}


}
