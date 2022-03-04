package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

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
	
	public List<ProductVO> getProductListByKind(ProductVO vo){
		
		return mybatis.selectList("mappings.product-mapping.getProductListByKind",vo);
	}
// 카테고리 + 페이징 일단 보류 (수련 3/4)	
//	public List<ProductVO> categoryWithPaging(Criteria criteria, String name, String kind) {
//		HashMap<String,Object> map = new HashMap<>();
//		map.put("criteria", criteria);
//		map.put("name", name);
//		map.put("kind", kind);
//		
//		return mybatis.selectList("mappings.product-mapping.categoryWithPaging", map);
//	}
//	
//	public int countCategoryProductList(String kind) {
//		
//		return mybatis.selectOne("mappings.product-mapping.countCategoryProductList", kind);
//	}
	
	//��ü ��ǰ�� ���� ����
	public int countProductList(String name) {
		
		return mybatis.selectOne("mappings.product-mapping.countProductList",name);
	}
	
	//��ǰ ��� ��ȸ
	public List<ProductVO> listProduct(String name){
		
		return mybatis.selectList("mappings.product-mapping.listProduct",name);
	}
	//�������� ��ǰ��� ��ȸ
	public List<ProductVO> getListWithPaging(Criteria criteria,String name) {
		HashMap<String,Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("name", name);
		
		return mybatis.selectList("mappings.product-mapping.listWithPaging",map);
	}
	
	//��ǰ �߰�
	public void insertProduct(ProductVO vo) {
		
		mybatis.insert("mappings.product-mapping.insertProduct",vo);
	}
	
	//��ǰ���� ����
	public void updateProduct(ProductVO vo) {
		
		mybatis.update("mappings.product-mapping.updateProduct",vo);
	}
	
	//��ǰ�� �Ǹ� ���� ��ȸ
	public List<SalesQuantity>getProductSales(){
		
		return mybatis.selectList("mappings.product-mapping.getProductSales");
	}
}
