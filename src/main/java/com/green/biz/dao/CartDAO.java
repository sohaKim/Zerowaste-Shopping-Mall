package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.biz.dto.CartVO;

@Repository
public class CartDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 장바구니 담기
	public void insertCart(CartVO vo) {
		
		mybatis.insert("mappings.cart-mapping.insertCart", vo);
	}
	
	// 장바구니 목록
	public List<CartVO> listCart(String id) {
		
		return mybatis.selectList("mappings.cart-mapping.listCart", id);
	}
	
	// 장바구니에서 항목 삭제
	public void deleteCart(int cseq) {
		
		mybatis.delete("mappings.cart-mapping.deleteCart", cseq);
	}
	
	// 장바구니 수량 업데이트 김소연 추가 02.28 -- vo로 받기
	public void updateQuantityOfCart(CartVO vo) {
		
		mybatis.update("mappings.cart-mapping.updateQuantityOfCart", vo);
	}
	
	
	// 장바구니 항목을 '처리'로 업데이트
	public void updateCart(int cseq) {
		
		mybatis.update("mappings.cart-mapping.updateCart", cseq);
	}
	

}