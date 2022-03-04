package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.biz.dto.CartVO;

@Repository
public class CartDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 장바구니 담기 --삽입
	public void insertCart(CartVO vo) {
		
		mybatis.insert("mappings.cart-mapping.insertCart", vo);
	}
	
	
	// 장바구니 동일한 상품 레코드 확인 
	// 장바구니에 동일한 상품 레코드 확인
	public int countCart(int pseq, String id) {
		Map<String, Object>map = new HashMap<String, Object>();
		map.put("pseq", pseq);
		map.put("id", id);
		
		return mybatis.selectOne("mappings.cart-mapping.countCart", map);
	}
	
	// 장바구니 동일한 상품 레코드 확인 
	// 장바구니 수량 변경
	public void updatePseqCart(CartVO vo) {
		
		mybatis.update("mappings.cart-mapping.updatePseqCart", vo);
	}	
	
	//  장바구니 목록
	public List<CartVO> listCart(String id) {
		
		return mybatis.selectList("mappings.cart-mapping.listCart", id);
	}
	
	// 장바구니 금액 합계 수정 
	public int sumMoney(String id) {
		
		mybatis.selectOne("mappings.cart-mapping.sumMoney", id);
		
		return mybatis.selectOne("mappings.cart-mapping.sumMoney", id);
	}
	

	// 장바구니에서 항목 삭제
	public void deleteCart(int cseq) {
		
		mybatis.delete("mappings.cart-mapping.deleteCart", cseq);
	}
	
	// 장바구니 수량 업데이트-- 김소연 확인 03.03 ---- mapping은 바껴도 그대로,  vo로 받기
	public void updateQuantityOfCart(CartVO vo) {
		
		mybatis.update("mappings.cart-mapping.updateQuantityOfCart", vo);
	}
	
	
	// 장바구니 항목을 '처리'로 업데이트
	public void updateCart(int cseq) {
		
		mybatis.update("mappings.cart-mapping.updateCart", cseq);
	}
	

}