package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductCommentVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

import utils.Criteria;

public interface ProductService {

	List<ProductVO> getNewProductList();
	
	List<ProductVO> getBestProductList();
	
	ProductVO getProduct(ProductVO vo);

	//0304category이름순배열
	List<ProductVO> getProductListByKind(ProductVO vo, String order);
	
	public int countProductList(String name);
	
	//0303all페이징
	public int countProductListAll();

	
	public List<ProductVO> listProduct(String name);
	
	// 상품 입력
	public void insertProduct(ProductVO vo);
	
	// 상품 수정 
	public void updateProduct(ProductVO vo);
	
	// 3/10 상품 삭제 기능 추가 (수련)
	public void deleteProduct(int pseq);
	
	public List<ProductVO> getListWithPaging(Criteria criteria,String name);
	
	//0303all페이징
	public List<ProductVO> getListWithPagingAll(Criteria criteria);
	
	//0303all낮은가격순페이징0304all카테고리가격순이름순나열
	public List<ProductVO> getListWithPagingAllFilter(Criteria criteria, String category, String order);
	
	// 03.16 comment 추가	
	public List<ProductCommentVO> getCommentList(int pseq);
	
	public int saveComment(ProductCommentVO commentVO);
	
	public int updateComment(ProductCommentVO commentVO);
	
	public int deleteComment(int commentSeq);
	
	public List<ProductCommentVO> getCommentListWithPaging(Criteria cri, int pseq);
	
	public int countCommentList(int pseq);
	
	// ▶ Admin 관리자 페이지 작성시 추가 부분2
	public List<SalesQuantity>getProductSales();

	
	// ▶메인화면의 검색창 키워드 검색기능 --product의 모든카테고리 중 검색 ----03.15 김소연수정
	public List<ProductVO> searchProductList(String name);
	
  
  // 어드민에서 상품 카테고리별 불러오기 
//	List<ProductVO> adminGetProductListByKind(ProductVO vo);
//	 카테고리 페이징, 일단 보류 (3/4 수련)
	public List<ProductVO> categoryWithPaging(Criteria criteria, String name, String kind);
	public int countCategoryProductList(String kind);
}
