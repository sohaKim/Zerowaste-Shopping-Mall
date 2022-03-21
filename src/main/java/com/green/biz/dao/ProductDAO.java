package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.ProductCommentVO;
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

	public List<ProductVO> listProduct(String name){
		
		return mybatis.selectList("mappings.product-mapping.listProduct",name);
	}

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
			System.out.println("filter: high");
			return mybatis.selectList("mappings.product-mapping.listWithPagingFilterHigh",map);
		} else if (order.equals("low")) {
			System.out.println("filter: low");
			return mybatis.selectList("mappings.product-mapping.listWithPagingFilterLow",map);
		} else {
			System.out.println("filter: name");
			return mybatis.selectList("mappings.product-mapping.listWithPagingFilterName",map);
		}
	}
	
	// ▶메인화면의 검색창 키워드 검색기능 --product의 모든카테고리 중 검색
	//  김소연 03.15 추가
	public List<ProductVO> searchProductList(String name) {
		
		return mybatis.selectList("mappings.product-mapping.searchProductList", name);
	}	
	/*
	 * 상품평 관련 메소드
	 */
	// 03.16커멘트 기능 추가
	public List<ProductCommentVO> getCommentList(int pseq) {
		System.out.println("==> Mybatis로 getCommentList() 기능 처리");
		
		return mybatis.selectList("CommentDAO.getCommentList", pseq);
	}
	
	// 페이지별 상품평 조회
	public List<ProductCommentVO> getCommentListWithPaging(Criteria criteria, int pseq) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		System.out.println("==> Mybatis로 getCommentListWithPaging() 기능 처리");
		
		map.put("criteria", criteria);
		map.put("pseq", pseq);
		
		return mybatis.selectList("CommentDAO.getCommentListWithPaging", map);
	}
  
	
	public int countCommentList(int pseq) {
		System.out.println("==> Mybatis로 countCommentList() 기능 처리");
		
		return mybatis.selectOne("CommentDAO.countCommentList", pseq);
	}
	
	public int saveComment(ProductCommentVO commentVO) {
		System.out.println("==> Mybatis로 saveComment() 기능 처리");
		
		return mybatis.insert("CommentDAO.saveComment", commentVO);
	}
	
	public int updateComment(ProductCommentVO commentVO) {
		System.out.println("==> Mybatis로 updateComment() 기능 처리");
		
		return mybatis.update("CommentDAO.updateComment", commentVO);
	}
	
	public int deleteComment(int commentSeq) {
		System.out.println("==> Mybatis로 deleteComment() 기능 처리");
		
		return mybatis.delete("CommentDAO.deleteComment", commentSeq);
	}
	
  // 어드민
	// 어드민 상품 카테고리별 조회
	public List<ProductVO> adminGetProductListByKind(ProductVO vo){
		
		return mybatis.selectList("mappings.product-mapping.adminGetProductListByKind",vo);
	}
  
  // 상품 입력
  public void insertProduct(ProductVO vo) {
		
		mybatis.insert("mappings.product-mapping.insertProduct",vo);
	}
  
  // ▶ Admin 상품 정보 수정
	public void updateProduct(ProductVO vo) {
		
		mybatis.update("mappings.product-mapping.updateProduct",vo);
	}
  
  // 상품 삭제
	public void deleteProduct(int pseq) {
		
		mybatis.delete("mappings.product-mapping.deleteProduct", pseq);
	}
  
  // 
	public List<SalesQuantity>getProductSales(){
		
		return mybatis.selectList("mappings.product-mapping.getProductSales");
	}
	
	// 카테고리 + 페이징 일단 보류 (수련 3/4)	
		public List<ProductVO> categoryWithPaging(Criteria criteria, String name, String kind) {
			HashMap<String,Object> map = new HashMap<>();
			map.put("criteria", criteria);
			map.put("name", name);
			map.put("kind", kind);
			
			return mybatis.selectList("mappings.product-mapping.categoryWithPaging", map);
		}
		
		public int countCategoryProductList(String kind) {
			
			return mybatis.selectOne("mappings.product-mapping.countCategoryProductList", kind);
		}
	
}
