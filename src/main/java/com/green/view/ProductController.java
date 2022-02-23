//package com.green.view;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//
//import com.green.biz.dto.ProductVO;
//import com.green.biz.product.ProductService;
//
//@Controller
//public class ProductController {
//	
//	@Autowired
//	private ProductService productService;
//	//@RequestMapping(value="/product_detail", method=RequestMethod.GET)
//	@GetMapping(value="/product_detail")
//	public String productDetailAction(ProductVO vo, Model model) {
//		
//		//力前 惑技 炼雀
//		ProductVO product = productService.getProduct(vo);
//		
//		model.addAttribute("productVO", product);
//		
//		return "product/productDetail";
//	}
//	
//	@GetMapping(value="/category")
//	public String productKindAction(ProductVO vo, Model model) {
//		
//		List<ProductVO> listProduct = productService.getProductListByKind(vo);
//		
//		model.addAttribute("productKindList", listProduct);
//		
//		return "product/productKind";
//	}
//}
package com.green.view;


//import java.util.List;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import com.green.biz.dto.ProductVO;
//import com.green.biz.product.ProductService;

@Controller
public class ProductController {

   
   @RequestMapping(value="/shop-grid", method=RequestMethod.GET)
   public String shopmain() {   // TODO: Model 持绢具 凳.
      
      return "shop-grid";
   }
   
   @RequestMapping(value="/shop-details", method=RequestMethod.GET)
   public String shopdetail() {   // TODO: Model 持绢具 凳.
      
      return "shop-details";
   }

//	@Autowired
//	private ProductService productService;
//	//@RequestMapping(value="/product_detail", method=RequestMethod.GET)
//	@GetMapping(value="/product_detail")
//	public String productDetailAction(ProductVO vo, Model model) {
//		
//		//力前 惑技 炼雀
//		ProductVO product = productService.getProduct(vo);
//		
//		model.addAttribute("productVO", product);
//		
//		return "shop-details";
//	}
//	
//	@GetMapping(value="/category")
//	public String productKindAction(ProductVO vo, Model model) {
//		
//		List<ProductVO> listProduct = productService.getProductListByKind(vo);
//		
//		model.addAttribute("productKindList", listProduct);
//		
//		return "shop-grid";
//	}
}