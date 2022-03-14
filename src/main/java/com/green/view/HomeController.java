package com.green.view;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.green.biz.dto.ProductVO;
import com.green.biz.product.ProductService;

@Controller
public class HomeController {

   
//   @RequestMapping(value="/index", method=RequestMethod.GET)
//   public String home() {   // TODO: Model �־�� ��.
//      
//      return "index";
//   }
   
   
	@Autowired // 객체 자동할당
	private ProductService productService;
	/**
	 * index.html에서 메인화면 표시를 위한 index URL 요청 처리
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {
		// ▶ ProductServiceImpl에 Service로 등록된 "productService" 호출
		
		// ▶ 신상품 조회 서비스 호출
		//   command객체로 이미 생성된 model에 넣어주기
		//   index.jsp의  ${newProductList} 키 값 , newProdList 속성명
		List<ProductVO> newProdList = productService.getNewProductList();
		model.addAttribute("newProductList", newProdList);
		
		// ▶ 베스트 상품 조회 서비스 호출
	    //   index.jsp의  ${bestProductList} 키 값 , newProdList 속성명
		List<ProductVO> bestProdList = productService.getBestProductList();
		model.addAttribute("bestProductList", bestProdList);
		
		return "index";
	}
   
	
	
	
}