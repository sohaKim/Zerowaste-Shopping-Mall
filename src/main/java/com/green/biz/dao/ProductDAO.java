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
	
	public ProductVO getProduct(ProductVO vo) {
		
		return mybatis.selectOne("mappings.product-mapping.getProduct", vo);
	}
	
	//0304shopgrid이름순조회
	public List<ProductVO> getProductListByKind(ProductVO vo, String order){
		Map<String, Object> map = new HashMap<>();
		
		map.put("product", vo);
		map.put("order", order);
		
		return mybatis.selectList("mappings.product-mapping.getProductListByKind", map);
	}
	//카테고리낮은 가격순0303
	public List<ProductVO> getProductListByKindLow(ProductVO vo){
			
			return mybatis.selectList("mappings.product-mapping.getProductListByKindLow",vo);
		}
	
	//카테고리 높은 가격순0303
	public List<ProductVO> getProductListByKindHigh(ProductVO vo){
		
		return mybatis.selectList("mappings.product-mapping.getProductListByKindHigh",vo);
	}
	//카테고리all0303
	public List<ProductVO> getAllListByKind(ProductVO vo){
		
		return mybatis.selectList("mappings.product-mapping.getAllListByKind",vo);
	}

	
	// 전체 상품의 갯수 조회

	public int countProductList(String name) {
		
		return mybatis.selectOne("mappings.product-mapping.countProductList",name);
	}
	//0303all카테고리조회
	public int countProductListAll() {
		
		return mybatis.selectOne("mappings.product-mapping.countProductListAll");
	}
	
	//0303all낮은가격순카테고리조회
	public int countProductListAllLow(String category, String order) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("category", category);
		map.put("order", order);
		
		return mybatis.selectOne("mappings.product-mapping.countProductListAllLow", map);
	}	

	// 상품 목록 조회

	public List<ProductVO> listProduct(String name){
		
		return mybatis.selectList("mappings.product-mapping.listProduct",name);
	}

	// 페이지별 상품 목록 조회

	public List<ProductVO> getListWithPaging(Criteria criteria,String name) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("name", name);
		
		return mybatis.selectList("mappings.product-mapping.listWithPaging",map);
	}
	

	// 0303all페이지별 상품 목록 조회
	public List<ProductVO> getListWithPagingAll(Criteria criteria) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("criteria", criteria);
		
		return mybatis.selectList("mappings.product-mapping.listWithPagingAll",map);
	}
	
	// 0303all낮은가격순 페이지별 상품 목록 조회0304all카테고리페이징부분가격순이름순조회
	public List<ProductVO> getListWithPagingAllFilter(Criteria criteria, String category, String order) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("category", category);
		map.put("order", order);
		
		if (order.equals("high")) {
			return mybatis.selectList("mappings.product-mapping.listWithPagingFilterHigh",map);
		} else if (order.equals("low")) {
			return mybatis.selectList("mappings.product-mapping.listWithPagingFilterLow",map);
		} else {
			return mybatis.selectList("mappings.product-mapping.listWithPagingFilterName",map);
		}
	}
	
	
	// 상품 추가

	public void insertProduct(ProductVO vo) {
		
		mybatis.insert("mappings.product-mapping.insertProduct",vo);
	}
	

	// 상품 정보 수정

	public void updateProduct(ProductVO vo) {
		
		mybatis.update("mappings.product-mapping.updateProduct",vo);
	}

	// ▶ Admin 관리자 페이지 작성시 추가 부분2

	public List<SalesQuantity>getProductSales(){
		
		return mybatis.selectList("mappings.product-mapping.getProductSales");
	}
}
