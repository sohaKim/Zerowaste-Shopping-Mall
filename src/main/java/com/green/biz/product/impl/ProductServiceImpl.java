package com.green.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.ProductDAO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.SalesQuantity;
import com.green.biz.product.ProductService;

import utils.Criteria;

@Service("productService")
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDAO pDao;
	
	@Override
	public List<ProductVO> getNewProductList() {
		
		return pDao.getNewProductList();
	}

	@Override
	public List<ProductVO> getBestProductList() {
		
		return pDao.getBestProductList();
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		
		return pDao.getProduct(vo);
	}

	@Override
	public List<ProductVO> getProductListByKind(ProductVO vo, String order) {
		
		return pDao.getProductListByKind(vo, order);
	}
	
	@Override
	public int countProductList(String name) {
		
		return pDao.countProductList(name);
	}
	//0303all페이징
	@Override
	public int countProductListAll() {
		
		return pDao.countProductListAll();
	}

	@Override
	public List<ProductVO> listProduct(String name) {
		
		return pDao.listProduct(name);
	}

	@Override
	public void insertProduct(ProductVO vo) {
		
		pDao.insertProduct(vo);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		
		pDao.updateProduct(vo);
	}

	@Override
	public List<ProductVO> getListWithPaging(Criteria criteria, String name) {
	
		return pDao.getListWithPaging(criteria, name);
	}
	
	//0303all
	@Override
	public List<ProductVO> getListWithPagingAll(Criteria criteria) {
		
		return pDao.getListWithPagingAll(criteria);
	}

	//0303all낮은가격순-->0304all카테고리이름순가격순
	@Override
	public List<ProductVO> getListWithPagingAllFilter(Criteria criteria, String category, String order) {
	
		return pDao.getListWithPagingAllFilter(criteria, category, order);
	}
	
	@Override
	public List<SalesQuantity> getProductSales() {
		
		return pDao.getProductSales();
	}


	// ▶메인화면의 검색창 키워드 검색기능 --product의 모든카테고리 중 검색
	//  김소연 03.10 추가
	@Override
	public List<ProductVO> searchProductList(Criteria criteria, String name) {
		
		return pDao.searchProductList(criteria, name);
	}

	// ▶ 전체 게시글 총 개수를 pseq로 받는 count
	//  김소연 03.10 추가
	@Override
	public int countSearchProduct(ProductVO vo) {
		
		return pDao.countSearchProduct(vo);
	}

  // 어드민 카테고
  @Override
  public List<ProductVO> adminGetProductListByKind(ProductVO vo) {
		
		return pDao.adminGetProductListByKind(vo);
  
  // 어드민 상품삭제 
  @Override
	public void deleteProduct(int pseq) {

		pDao.deleteProduct(pseq);
	}


}
