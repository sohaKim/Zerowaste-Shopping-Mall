package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

import utils.Criteria;

@Repository		//������ ��ü�� ���
public class ProductDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> getNewProductList() {
		
		return mybatis.selectList("mappings.product-mapping.getNewProductList");
	}
	
	public List<ProductVO> getBestProductList(){
	
		return mybatis.selectList("mappings.product-mapping.getBestProductList");
	}
	
	// 상품 상세보기
	public ProductVO getProduct(ProductVO vo) {
		
		return mybatis.selectOne("mappings.product-mapping.getProduct", vo);
	}

	// 어드민 상품 카테고리별 조회
	public List<ProductVO> adminGetProductListByKind(ProductVO vo){
		
		return mybatis.selectList("mappings.product-mapping.adminGetProductListByKind",vo);
	}
	
	// 상품 개수 조회
	public int countProductList(String name) {
		
		return mybatis.selectOne("mappings.product-mapping.countProductList",name);
	}
	
	// 상품 리스트, 검색어 조회
	public List<ProductVO> listProduct(String name){
		
		return mybatis.selectList("mappings.product-mapping.listProduct",name);
	}
	// 페이징 있는 상품 리스트
	public List<ProductVO> getListWithPaging(Criteria criteria,String name) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("name", name);
		
		return mybatis.selectList("mappings.product-mapping.listWithPaging",map);
	}
	
	// 상품 입력
	public void insertProduct(ProductVO vo) {
		
		mybatis.insert("mappings.product-mapping.insertProduct",vo);
	}
	
	// 상품 정보 업데이트
	public void updateProduct(ProductVO vo) {
		
		mybatis.update("mappings.product-mapping.updateProduct",vo);
	}
	
	// 상품 삭제
	public void deleteProduct(int pseq) {
		
		mybatis.delete("mappings.product-mapping.deleteProduct", pseq);
	}
	
	// 상품 판매량 조회
	public List<SalesQuantity>getProductSales(){
		
		return mybatis.selectList("mappings.product-mapping.getProductSales");
	}
}
