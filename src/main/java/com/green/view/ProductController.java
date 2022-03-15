package com.green.view;


import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.green.biz.dto.ProductVO;
import com.green.biz.product.ProductService;

import utils.Criteria;
import utils.PageMaker;

@Controller
public class ProductController {

	@Autowired
	//상품상세페이지구현
	private ProductService productService;
	//@RequestMapping(value="/product_detail", method=RequestMethod.GET)
	@GetMapping(value="/product_detail")
	public String productDetailAction(ProductVO vo, Model model) {
		
		// 제품 상세조회
		// ▶shop-details.jsp 처리
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		
		return "shop-details";
	}
	

	//모든제품 나열
	 @RequestMapping(value="/shop-grid", method=RequestMethod.GET)
	   public String shopmain(@RequestParam(value="key", defaultValue="") String name, Model model) {  
	      
	      List<ProductVO> listProduct = productService.listProduct(name);
	      for(ProductVO vo: listProduct) {
	    	  System.out.println(vo);
	      }
	      model.addAttribute("productList", listProduct);
			
	      return "shop-grid";
	   }

	//샵카테고리페이지구현0225 shopgrid이름순나열시도0304
	@GetMapping(value="/category")
	public String productKindAction(@RequestParam(value="order",required=false) String order, 
									ProductVO vo, Model model, HttpServletRequest request) {
		
		List<ProductVO> categoryProduct = productService.getProductListByKind(vo, order);
//		System.out.println("카터고리코드: " + vo.getKind());
//		System.out.println("<<<<<< 카터고리별 상품 >>>>>>");
//		for(ProductVO prod : categoryProduct) {
//			System.out.println(prod);
//		}
		
		//model.addAttribute("productKindList", categoryProduct);
		request.setAttribute("productKindList", categoryProduct);
		model.addAttribute("category", vo.getKind());
		
		return "shop-grid";
	}
	


	//0304all카테고리 페이징
	@RequestMapping(value="/all")
	public String productKindAction( // productList.jsp의 상품명 name=key
			@RequestParam(value="key", defaultValue="") String name,
			 Criteria criteria,
			 HttpSession session, Model model){
		
		
			// 상품 목록 조회
			List<ProductVO> prodList = productService.getListWithPagingAll(criteria);
				
			// 화면에 표시할 페이지 버튼 정보 설정		
			PageMaker pageMaker = new PageMaker(); // PageMaker() 객체생성	
			pageMaker.setCriteria(criteria); // 현재 페이지와 페이지당 항목 수 정보 설정		
			int totalCount = productService.countProductListAll(); // 전체 게시글 수 조회 (product-mapping.xml) 
			
			// 전체 상품목록 개수 설정 메소드(setTotalCount) 구현 및 페이지정보(fieldInit()) 초기화
			pageMaker.setTotalCount(totalCount); 
			System.out.println("[ProductList] pageMaker=" + pageMaker);
				
			model.addAttribute("allproductKindList", prodList); // productList.jsp의 ${productList}
			model.addAttribute("category", "0");
			model.addAttribute("productListSize", prodList.size()); //  productList.jsp의 ${productListSize}
			model.addAttribute("pageMaker", pageMaker); // page_area.jsp의 ${pageMaker}
			return "all"; // jsp
		
	}


	//0304all카테고리 이름순가격순나열
	@RequestMapping(value="/filter")
	public String productKindActionLow( // productList.jsp의 상품명 name=key
			@RequestParam(value="key", defaultValue="") String name,
			@RequestParam(value="category", defaultValue="") String category,
			@RequestParam(value="order") String order,
			Criteria criteria,
			HttpSession session, Model model){
		
			System.out.println("category="+category);
			// 상품 목록 조회
			List<ProductVO> prodList = productService.getListWithPagingAllFilter(criteria, category, order);
				
			// 화면에 표시할 페이지 버튼 정보 설정		
			PageMaker pageMaker = new PageMaker(); // PageMaker() 객체생성	
			pageMaker.setCriteria(criteria); // 현재 페이지와 페이지당 항목 수 정보 설정		
			int totalCount = productService.countProductListAll(); // 전체 게시글 수 조회 (product-mapping.xml) 
			
			// 전체 상품목록 개수 설정 메소드(setTotalCount) 구현 및 페이지정보(fieldInit()) 초기화
			pageMaker.setTotalCount(totalCount); 
			System.out.println("[ProductList] pageMaker=" + pageMaker);
				
			model.addAttribute("allproductKindList", prodList); // productList.jsp의 ${productList}
			model.addAttribute("productListSize", prodList.size()); //  productList.jsp의 ${productListSize}
			model.addAttribute("pageMaker", pageMaker); // page_area.jsp의 ${pageMaker}
			return "all"; // jsp
		
	}

	
	
	 
	/*
	 * 메인화면의 상품검색 기능, 상품명(name)으로만 검색가능
	 * efaultValue="" key값 미입력시 null로 전체 목록 가져오도록 설정
	 */
	@RequestMapping(value="/go_search_product")
	public String searchProductList( // all.jsp의 상품명 name=key
			@RequestParam(value="key", defaultValue="")String name,
			 Criteria criteria, Model model, ProductVO vo){
		
		
			// 상품 목록 조회
			List<ProductVO> prodList = productService.searchProductList(criteria, name);
				
			// 화면에 표시할 페이지 버튼 정보 설정		
			PageMaker pageMaker = new PageMaker(); // PageMaker() 객체생성	
			pageMaker.setCriteria(criteria); // 현재 페이지와 페이지당 항목 수 정보 설정		
			int totalCount = productService.countSearchProduct(vo); // 전체 게시글 수 조회 
			
			// 전체 상품목록 개수 설정 메소드(setTotalCount) 구현 및 페이지정보(fieldInit()) 초기화
			pageMaker.setTotalCount(totalCount); 
			System.out.println("[ProductList] pageMaker=" + pageMaker);
				
			model.addAttribute("allproductKindList", prodList); 
			model.addAttribute("category", "0");
			model.addAttribute("productListSize", prodList.size()); 
			model.addAttribute("pageMaker", pageMaker); 
			return "all"; // jsp
		
	}
}