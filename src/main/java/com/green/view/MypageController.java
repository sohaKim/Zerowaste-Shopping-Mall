package com.green.view;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.green.biz.dao.OrderDAO;
import com.green.biz.dto.CartVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.OrderVO;
import com.green.biz.order.CartService;
import com.green.biz.order.OrderService;

@Controller
public class MypageController {
/*
 * 장바구니 담기 요청 처리   
 */
   @Autowired
   private CartService cartService;
   @Autowired
   private OrderService orderService;
   @Autowired
   private OrderDAO oDao;

   /*
    * 장바구니 담기 요청 처리
    * 동일 상품이 있을경우 항목 추가가 아닌, 개수추가 +1 
    */  
 @RequestMapping(value="/cart_insert") // mypage.js의 "cart_insert"
 // productDetail.jsp의 quantity, pseq --command객체 CartVO 로 받음
 public String insertCart(CartVO vo, Model model, HttpSession session) {
    
    // (1) 세션에 저장된 사용자 정보를 읽어 온다.
    //       MemberController의 loginAction -- loginUser
    MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
       
    // (2) 로그인이 안되어 있으면 로그인, 
    //          로그인이 되어 있으면, 장바구니에 항목 저장   
    if (loginUser == null) {
       return "member/login";
       
    } else {
       vo.setId(loginUser.getId()); // 
       
       // +) 장바구니에 기존 상품이 있는지 확인
       int count = cartService.countCart(vo.getPseq(), vo.getId());
              
	       if (count == 0) {
	    	   // 없으면 insert
	    	   cartService.insertCart(vo);
	       } else {
	    	   // 있으면 update
	    	   cartService.updatePseqCart(vo);
	       }
     
	    // (3) 장바구니 목록 조회하여 화면 표시
	    return "redirect:shoping-cart"; 
       
    }
 }
  

 /*
  * 장바구니 목록 처리  
  * 수량 X 금액 = 총 금액 계산까지
  *  +)배송비 포함, 30,000원이상 무료배송, 미만시 3,000원 추가
  */
 
 @RequestMapping(value="shoping-cart")
 public String listCart(CartVO vo, HttpSession session, Model model) {
    
    MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
    
    // 로그인이 안되어 있으면 로그인 페이지로
    if (loginUser == null) {
       return "member/login"; // jsp이동
    
    // 로그인이 되어 있으면, 장바구니 목록으로
    // cart-mapping.xml의  "listCart" - id로 가져옴
    } else {

       // -->변동
       Map<String, Object> map = new HashMap<String, Object>(); 
       List<CartVO> cartList = cartService.listCart(loginUser.getId()); // 장바구니 정보 
       int sumMoney = cartService.sumMoney(loginUser.getId()); // 장바구니 전체 금액 호출
       
       // 장바구니 전체 금액에 따라 배송비 구분
       // 배송비(30,000원 이상 무료, 미만 3,000원     
       int fee = sumMoney >= 30000 ? 0 : 3000;
       
       map.put("cartList", cartList); // 장바구니 정보를 map에 저장
       map.put("count", cartList.size());  // 장바구니 상품의 유무
       map.put("sumMoney", sumMoney); 	// 장바구니 전체 금액
       map.put("fee", fee);	   // 배송비
       map.put("allSum", sumMoney+fee);   // 주문 상품 전체 금액
             
       
       // 장바구니 목록과 위의 계산 내용을 내장객체에 저장
       model.addAttribute("map", map);      // map 변수 저장
       model.addAttribute("cartList", cartList);   // shopping-cart.jsp의 $ {cartList}
       
       
       return "cart/shoping-cart"; // jsp
    }
 } 
 
 
      /*
       * 장바구니 항목의 품목 수량 변경 
       */
      @RequestMapping(value="/cart_quantity_change") 
      
      public String updateQuantityOfCart(@RequestParam int[] quantity, 
    		  							 @RequestParam int[] pseq, 
    		  							 Model model, HttpSession session, CartVO vo) {
         
         // (1) 세션에 저장된 사용자 정보를 읽어 온다.
         //       MemberController의 loginAction -- loginUser
         MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
            
         // (2) 로그인이 안되어 있으면 로그인, 
         //          로그인이 되어 있으면, 장바구니에 항목 저장   
         if (loginUser == null) {
            return "member/login";
            
         } else {
              vo.setId(loginUser.getId()); // id가져오기
              
            // 레코드의 갯수 만큼 반복문 실행
              for(int i=0; i<pseq.length; i++) {
            	  vo.setId(loginUser.getId());
            	  vo.setQuantity(quantity[i]);
            	  vo.setPseq(pseq[i]);
            	  
            	  cartService.updateQuantityOfCart(vo);
              }
     
            // (3) 장바구니 목록 조회하여 화면 표시
            return "redirect:shoping-cart"; //jsp
         }
      }
  
      /*
       * 장바구니 항목 삭제 요청 처리
       */
      @PostMapping(value="/cart_delete")
      public String cartDelete(@RequestParam(value="cseq") int[] cseq) {
   	   
   	   for(int i=0; i<cseq.length; i++) {
   		   System.out.println(("삭제할 cart seq = " +cseq[i]));
   		   cartService.deleteCart(cseq[i]);
   	   }
   	   return "redirect:shoping-cart";
      }
      
 /*
  * 장바구니에 담긴 상품을 '결제 진행하기' 화면으로 이동 
  */                  
      @RequestMapping(value="order_process")
      public String orderInsert(CartVO vo, HttpSession session, Model model) {
         
         MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
         
         // 로그인이 안되어 있으면 로그인 페이지로
         if (loginUser == null) {
            return "member/login"; // jsp이동
         
         // 로그인이 되어 있으면, 장바구니 목록으로
         } else {
        	 
        	loginUser.getName(); 
        	loginUser.getPhone();
        	loginUser.getEmail();
        	loginUser.getZonecode();
        	loginUser.getRoadaddr();
        	loginUser.getDetailaddr();
        	
        	model.addAttribute("memberVO", loginUser);
        	 
             Map<String, Object> map = new HashMap<String, Object>(); 
             List<CartVO> cartList = cartService.listCart(loginUser.getId()); // 장바구니 정보 
             int sumMoney = cartService.sumMoney(loginUser.getId()); // 장바구니 전체 금액 호출
             
             // 장바구니 전체 금액에 따라 배송비 구분
             // 배송비(30,000원 이상 무료, 미만 3,000원     
             int fee = sumMoney >= 30000 ? 0 : 3000;
             
             map.put("cartList", cartList);      // 장바구니 정보를 map에 저장
             map.put("count", cartList.size());  // 장바구니 상품의 유무
             map.put("sumMoney", sumMoney); 	// 장바구니 전체 금액
             map.put("fee", fee);	   			// 배송비
             map.put("allSum", sumMoney+fee);   // 주문 상품 전체 금액
             
             // 장바구니 목록과 위의 계산 내용을 내장객체에 저장
             model.addAttribute("map", map);      // map 변수 저장
             model.addAttribute("cartList", cartList);   // checkout.jsp의 ${cartList}
        
            return "cart/checkout"; // jsp
         }
      } 

      /*
       * 03/15 추가
       * 제품상세 페이지(shop-details)에서 바로결제 버튼
       * 버튼 클릭시 장바구니 항목이 비워지며 해당 상품만 담김 
       */
      @RequestMapping(value="/order_direct") // mypage.js의 "order_direct"
      // productDetail.jsp의 quantity, pseq --command객체 CartVO 로 받음
      public String order_direct(CartVO vo, Model model, HttpSession session) {
         
         // (1) 세션에 저장된 사용자 정보를 읽어 온다.
         //       MemberController의 loginAction -- loginUser
         MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
            
         // (2) 로그인이 안되어 있으면 로그인, 
         //          로그인이 되어 있으면, 장바구니에 항목 저장   
         if (loginUser == null) {
            return "member/login";
            
         } else {
            vo.setId(loginUser.getId()); 
            
            	// 장바구니에 담긴 기존상품 삭제
     	    	cartService.emptyCartBeforeOrder(vo); 
     	    	cartService.insertCart(vo);
     	       }           
          
     	    // (3) 장바구니 목록 조회하여 화면 표시
     	    return "redirect:shoping-cart"; 
            
      }

     
            
      /*
       * 주문하기 화면(checkout.jsp)의 주문 처리
       * 결제 완료시 orders & order_detail 테이블에 데이터 삽입 및 장바구니 비워짐
       */
      @PostMapping(value="/order_invoice")
      public String orderInsert(OrderVO vo,HttpSession session, Model model , CartVO cart,
   		   			@RequestParam(value="zonecode")String zonecode,
   		   			@RequestParam(value="addr1")String addr1,
   		   			@RequestParam(value="addr2")String addr2) {
   	   
   	   MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
   	   
   	   if(loginUser == null) {
   		   return "member/login";
   	   }else {
   		   vo.setId(loginUser.getId());
   		   
   		   // 주소정보 추가 03.09
   			vo.setZonecode(zonecode);
   			vo.setRoadaddr(addr1);
   			vo.setDetailaddr(addr2);		 			
   		   
   		   int oseq = orderService.insertOrder(vo);
   		   
   		   model.addAttribute("oseq",oseq);
   		   
   			// 주문완료시 cart장바구니 테이블 삭제진행
   			// 파라메터에 cartVO 추가			
   			cartService.emptyCartAfterOrder(vo.getId());    		   
   		   
   		   return "redirect:order_detail_invoice"; // jsp의 value값으로 이동
   	   }
      }    
                
      // 영수증 출력화면 orerInvoice jsp 호출  
      @GetMapping(value="/order_detail_invoice")
      public String orderDetailInvoice(OrderVO order, HttpSession session, Model model) {	   

   	   MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
   		   
   		if(loginUser == null) {
   			return "member/login";
   		}else {
   			
   			order.setId(loginUser.getId());
   			List<OrderVO> orderList = orderService.orderDetailInvoice(order);// invoice-상품정보
   						
   			// 주문 총액 계산
   			int productprice = 0;
   			int ordertotal = 0;
   			
   			for(OrderVO vo : orderList) {
   				productprice +=(vo.getQuantity() * vo.getPrice2());
   				
   			}
   			
   	        // 장바구니 전체 금액에 따라 배송비 구분
   	        // 배송비(30,000원 이상 무료, 미만 3,000원		
   			int fee = productprice >= 30000 ? 0 : 3000;
   			ordertotal = fee + productprice;

   			List<OrderVO> orderDetail = orderService.deliverInfo(order);
   				   			
   			model.addAttribute("productprice", productprice);
   			model.addAttribute("fee", fee);
   			model.addAttribute("ordertotal", ordertotal);
   			model.addAttribute("orderList", orderList);   			
   			model.addAttribute("orderDetail", orderDetail);
   			
   			
   			return "cart/orderInvoice";// jsp이동
   		}
      }      

   /*
    * 마이페이지
    * 진행중인 주문내역 조회
    * 입력 파라미터:oseq
    * 			result = '1'(미처리)
    */
   @GetMapping(value="order_list")
   public String orderList(@RequestParam(value="oseq") int oseq,
		   					HttpSession session,OrderVO order, Model model) {
	   //(1) 로그인 확인
	   MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	   if(loginUser == null) {
		   return "member/login";
	   }else {
	   //(2) 주문번호별 진행중인 주문 내역 조회
		   order.setId(loginUser.getId());
		   order.setOseq(oseq);
		   order.setResult("1");
		   List<OrderVO> orderList = orderService.listOrderById(order);
	   
	   //0314예진 배송비포함
	   //(3) 주문 총액 계산
		   int totalAmount = 0;
  		   int ordertotal = 0;
		   
  		   for(OrderVO vo : orderList) {
  			 totalAmount +=(vo.getQuantity() * vo.getPrice2());
		   }
  		// 장바구니 전체 금액에 따라 배송비 구분
  	    // 배송비(30,000원 이상 무료, 미만 3,000원		
  		   int fee = totalAmount >= 30000 ? 0 : 3000;
  		   ordertotal = fee + totalAmount;
  		   
	   //(4) 내장 객체에 결과 저장
		   model.addAttribute("orderList",orderList);
		   model.addAttribute("fee", fee);
  		   model.addAttribute("ordertotal", ordertotal);
  		   model.addAttribute("totalPrice",totalAmount);
	   
	   //(5)화면 호출
	   return "mypage/orderList";
	  }
  }
   @GetMapping(value="/mypage")
   public String myPageView(HttpSession session,Model model) {
	   
	   //세션에 저장된 로그인 정보 읽어옴
	   MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	   
	   if(loginUser == null){
		   return "member/login";
	   }else {
	   //사용자가 주문한 모든 주문번호 조회
	   OrderVO vo = new OrderVO();
	   vo.setId(loginUser.getId());
	   vo.setResult("1");
	   List<Integer> oseqList = orderService.selectSeqOrdering(vo);
	   
	   //각 주문번호를 조회아여 주문요약정보 생성
	   //(1)주문 요약 정보 저장 변수
	   List<OrderVO> orderList = new ArrayList<OrderVO>();
	   
	  //(2)모든 주분번호에 대한 요약정보 생성
	   for (int oseq : oseqList) {
		   OrderVO orderVO = new OrderVO();
		   
		   orderVO.setId(loginUser.getId());
		   orderVO.setOseq(oseq);
		   orderVO.setResult("1");
		   
		   //각 주문에 대한 주문내역 조회
		   List<OrderVO> listByOseq = orderService.listOrderById(orderVO);
		   
		   //위에서 주문한 주문내역의 요약정보 생성
		   OrderVO order  = new OrderVO();
		   order.setOseq(listByOseq.get(0).getOseq());
		   order.setIndate(listByOseq.get(0).getIndate());
		   
		   if(listByOseq.size() > 1) {
			   order.setPname(listByOseq.get(0).getPname() + "외" +
					   	(listByOseq.size()-1)+"건");
		   }else {
			   order.setPname(listByOseq.get(0).getPname());
		   }
		   //주문번호별 총액 계산
		   int amount = 0;
		   int ordertotal=0;
		   
		   for(int i  = 0; i<listByOseq.size();i++) {
			   amount += listByOseq.get(i).getQuantity()
					   *listByOseq.get(i).getPrice2();
		   }
		   
		   
		   int fee = amount >= 30000 ? 0 : 3000;
  		   ordertotal = fee + amount;
  		   
  		   order.setPrice2(ordertotal);
		   
		   
		   
		   //요약정보를 List변수에 추가
		   orderList.add(order);
	   }
	   model.addAttribute("title","진행중인 주문 내역");
	   model.addAttribute("orderList",orderList);
	   
	   }
	   return "mypage/mypage";
   }
   @GetMapping(value="/order_detail")
   public String orderDetail(OrderVO vo,HttpSession session,Model model) {
	   //세션객체에서 로그인 확인
	   MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
	   
	   if(loginUser == null) {
		   return "member/login";
	   }else {
	   //주문번호를 조건으로 주문 조회
	   vo.setId(loginUser.getId());
	   //vo.setResult("1");
	   vo.setResult("");
	   
	   List<OrderVO> orderList = orderService.listOrderById(vo);
	   //화면에 출력할 정보 생성
	   //(1)주문자 정보 생성
	   OrderVO orderDetail = new OrderVO();
	   
	   orderDetail.setOseq(orderList.get(0).getOseq());
	   orderDetail.setIndate(orderList.get(0).getIndate());
	   orderDetail.setMname(orderList.get(0).getMname());
	   orderDetail.setResult(orderList.get(0).getResult());
	   
	   //주문 합계 금액 계산
	   int amount = 0;
	   int ordertotal=0;
	   
	   
	   for(int i = 0;i<orderList.size();i++) {
		   amount +=(orderList.get(i).getQuantity()
				   *orderList.get(i).getPrice2());
	   }
	   //0314배송비포함가격수정예진
	   int fee = amount>=30000?0:3000;
	   
	   ordertotal=fee+amount;
	   
	   model.addAttribute("title","My Page(주문 내역 상세)");
	   model.addAttribute("orderDetail",orderDetail);
	   model.addAttribute("ordertotal",ordertotal);
	   model.addAttribute("fee",fee);
	   model.addAttribute("totalPrice",amount);
	   model.addAttribute("orderList",orderList);
	   
	   return "mypage/orderDetail";
	  }
	  
   }
   /*
    * 총 주문내역 처리
    * 처리결과에 관계없이 사용자의 모든 주문 조회
    */
   @GetMapping(value="order_all")
	  public String orderAllVieww(OrderVO vo,HttpSession session,Model model) {
	   //(1)사용자 로그인 확인
	   MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
	   
	   if(loginUser == null){
		   return "member/login";
	   }else {		   
		   //(2)사용자의 전체 주문번호 확인
		   vo.setId(loginUser.getId());
		   vo.setResult("");//처리결과 지정 안함
		   List<Integer> oseqList = orderService.selectSeqOrdering(vo);
		   
		   //(3)각 주문번호 별 주문내역 조회
		   List<OrderVO> orderList = new ArrayList<>(); //주문요약정보 저장 변수
		   for(int oseq : oseqList) {
			   OrderVO orderVO = new OrderVO();
			   orderVO.setId(loginUser.getId());
			   orderVO.setOseq(oseq);
			   orderVO.setResult("");
			   
			   //주문번호별 주문내역 조회
			   List<OrderVO> orders = orderService.listOrderById(orderVO);
		   
			 //(4)주문요약 정보 생성
			 OrderVO summary = new OrderVO();
			 summary = orders.get(0); //우선 첫번째 상품내역 정보를 복사
			 if(orders.size()>1) {
				 summary.setPname(orders.get(0).getPname()+"외"+(orders.size()-1+"건"));
			 }else {
				 summary.setPname(orders.get(0).getPname());
			 }
			 int amount = 0;
			 int ordertotal=0;
			 
			 for (OrderVO order : orders) {
				 amount += (order.getQuantity() * order.getPrice2());
			 }
			 
			 
			 int fee = amount >= 30000 ? 0 : 3000;
	   		 ordertotal = fee + amount;
	   		 
	   		summary.setPrice2(ordertotal);
			 orderList.add(summary);
		   }
		   
		   //결과를 화면에 전달
		   model.addAttribute("title","총 주문내역");
		   model.addAttribute("orderList",orderList);
		   
		   return "mypage/mypage";
	   }
   }
}  
   




