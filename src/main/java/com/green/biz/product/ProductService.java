package com.green.biz.product;

import java.util.List;

import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;

import utils.Criteria;

public interface ProductService {

	List<ProductVO> getNewProductList();
	
	List<ProductVO> getBestProductList();
	
	ProductVO getProduct(ProductVO vo);
	
	List<ProductVO> getProductListByKind(ProductVO vo);
	
//	 카테고리 페이징, 일단 보류 (3/4 수련)
//	public List<ProductVO> categoryWithPaging(Criteria criteria, String name, String kind);
//	
//	public int countCategoryProductList(String kind);
	
	public int countProductList(String name);
	
	public List<ProductVO> listProduct(String name);
	
	public void insertProduct(ProductVO vo);
	
	public void updateProduct(ProductVO vo);
	
	public List<ProductVO> getListWithPaging(Criteria criteria,String name);
	
	public List<SalesQuantity>getProductSales();
}
