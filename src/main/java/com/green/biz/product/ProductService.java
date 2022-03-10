package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

import utils.Criteria;

public interface ProductService {

	List<ProductVO> getNewProductList();
	
	List<ProductVO> getBestProductList();
	
	ProductVO getProduct(ProductVO vo);
	
	// 어드민에서 상품 카테고리별 불러오기 
	List<ProductVO> adminGetProductListByKind(ProductVO vo);
	
//	 카테고리 페이징, 일단 보류 (3/4 수련)
//	public List<ProductVO> categoryWithPaging(Criteria criteria, String name, String kind);
//	
//	public int countCategoryProductList(String kind);
	
	public int countProductList(String name);
	
	public List<ProductVO> listProduct(String name);
	
	// 상품 입력
	public void insertProduct(ProductVO vo);
	
	// 상품 수정 
	public void updateProduct(ProductVO vo);
	
	// 3/10 상품 삭제 기능 추가 (수련)
	public void deleteProduct(int pseq);
	
	public List<ProductVO> getListWithPaging(Criteria criteria,String name);
	
	public List<SalesQuantity>getProductSales();
}
