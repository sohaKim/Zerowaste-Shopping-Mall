package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.WorkerVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public String workerCheck(String id) {
		return mybatis.selectOne("mappings.admin-mapping.workerCheck", id);
	}
	
	public WorkerVO getEmployee(String id) {
		return mybatis.selectOne("mappings.admin-mapping.getEmployee", id);
	}
	
	// 카테고리별로 상품 호출하기 위한 것. TODO: Product 쪽 카테고리와 충돌 나는지 확인 필요함 
	public List<ProductVO> getProductListByKind(ProductVO vo) {
		
		return mybatis.selectList("mappings.product-mapping.getProductListByKind", vo);
	}
}
