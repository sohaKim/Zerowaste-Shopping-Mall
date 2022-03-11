package com.green.biz.product;

import java.util.List;

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
	
	public void insertProduct(ProductVO vo);
	
	public void updateProduct(ProductVO vo);
	
	public List<ProductVO> getListWithPaging(Criteria criteria,String name);
	
	//0303all페이징
	public List<ProductVO> getListWithPagingAll(Criteria criteria);
	
	//0303all낮은가격순페이징0304all카테고리가격순이름순나열
	public List<ProductVO> getListWithPagingAllFilter(Criteria criteria, String category, String order);
	
	// ▶ Admin 관리자 페이지 작성시 추가 부분2
	public List<SalesQuantity>getProductSales();
	
	// ▶메인화면의 검색창 키워드 검색기능 --product의 모든카테고리 중 검색
	//  김소연 03.10 추가
	public List<ProductVO> searchProductList(Criteria criteria, String name);
	
	// ▶ 전체 게시글 총 개수를 pseq로 받는 count
	//  김소연 03.10 추가
	public int countSearchProduct(ProductVO vo);
}
