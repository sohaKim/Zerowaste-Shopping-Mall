package com.green.view;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.green.biz.admin.AdminService;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.OrderVO;
import com.green.biz.dto.ProductVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.dto.WorkerVO;
import com.green.biz.member.MemberService;
import com.green.biz.order.OrderService;
import com.green.biz.product.ProductService;
import com.green.biz.qna.QnaService;

@Controller
@SessionAttributes("adminUser")
public class AdminController {

	@Autowired
	private AdminService adminService;
	@Autowired
	private MemberService memberService;
	@Autowired
	private ProductService productService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private QnaService qnaService;

	// 어드민 로그인 창 띄우기
	@GetMapping(value = "/admin_login_form")
	public String adminLoginView() {
		return "admin/main";
	}

	
	// 어드민 로그인 실행
	@PostMapping(value = "/admin_login")
	public String adminLogin(@RequestParam(value = "workerId") String workerId,
			@RequestParam(value = "workerPwd") String workerPwd, Model model) {

		WorkerVO vo = new WorkerVO();
		vo.setId(workerId);
		vo.setPwd(workerPwd);
		
		int result = adminService.workerCheck(vo);
		
		// 로그인 시도 결과를 위 result 로 분기
		if (result == 1) {
			WorkerVO adminUser = adminService.getEmployee(workerId);
			model.addAttribute("adminUser", adminUser);
			
			return "redirect:admin_product_list";
		} else {
			if (result == 0) {
				model.addAttribute("message", "비밀번호를 확인하세요.");
			} else {
				model.addAttribute("message", "아이디를 확인하세요.");
			}
			return "admin/main";
		}		
	}
	
	
	// 어드민 로그아웃
	@GetMapping(value="/admin_logout")
	public String adminLogout(SessionStatus status) {
		
		status.setComplete();
		
		return "admin/main";
	}
	
	/*
	 * 		어드민 상품 페이지 관련 
	 */
	// 어드민 메인 = 상품리스트
	@RequestMapping(value="/admin_product_list")
	public String adminProductList(@RequestParam(value="key", defaultValue="") String name,
			HttpSession session, Model model) {			// TODO: Criteria(페이징) 기능 안 넣음. 	
		
		// 관리자 로그인 확인
		WorkerVO adminUser = (WorkerVO)session.getAttribute("adminUser");
		
		if (adminUser == null) {
			return "admin/main";
		} else {
			// 상품 목록조회
			List<ProductVO> prodList = productService.listProduct(name);
			
			model.addAttribute("productList", prodList);
			
			return "admin/product/productList";
		}
		
	}
	
	// 어드민에서 카테고리별 상품보기
	@GetMapping(value="/admin_product_category")
	public String productKindList(ProductVO vo, Model model) {
		List<ProductVO> listProduct = productService.getProductListByKind(vo);
		model.addAttribute("adminproductKindList", listProduct);
		
		return "admin/product/productKind";
	}

	// 상품 등록 페이지 표시
	@PostMapping(value="/admin_product_write_form")
	public String adminProductWriteView(Model model) {
		String kindList[] = {"LIVING", "BATH", "KITCHEN", "KIT", "ETC"};
		
		model.addAttribute("kindList", kindList);
		return "admin/product/productWrite";
	}
	
	// 상품 등록 처리
	@PostMapping(value="/admin_product_write")
	public String adminProductWrite(@RequestParam(value="product_image") MultipartFile uploadFile, 
																ProductVO vo, HttpSession session) {
		WorkerVO adminUser = (WorkerVO)session.getAttribute("adminUser");
			
		if (adminUser == null) {
			return "admin/main";
		} else {
			String fileName = "";
			if (!uploadFile.isEmpty()) {			// 이미지 파일이 있는 경우.
				fileName = uploadFile.getOriginalFilename();
				
				// vo 객체에 이미지 파일 저장.
				vo.setImage(fileName);
				
				// 이미지 파일의 실제 저장경로 구하기.
				String image_path = session.getServletContext().getRealPath("WEB-INF/resources/product_images/");
				System.out.println("이미지 경로: " + image_path);
			
				try {
					// 이미지 파일을 위의 경로로 이동시킨다...
					File dest = new File(image_path + fileName);
					uploadFile.transferTo(dest);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		productService.insertProduct(vo);
		
		return "redirect:admin_product_list";
	}
	
	// 상품 상세보기
	@GetMapping(value="/admin_product_detail")
	public String adminProductDetail(ProductVO vo, Model model) {
		String kindList[] = {"", "LIVING", "BATH", "KITCHEN", "KIT", "ETC"};
		
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		
		int index = Integer.parseInt(product.getKind());
		model.addAttribute("kind", kindList[index]);
		
		return "admin/product/productDetail";
	}
	
	// 상품 수정 창열기
	@PostMapping(value="/admin_product_update_form")
	public String adminProductUpdateView(ProductVO vo, Model model) {
		String kindList[] = {"LIVING", "BATH", "KITCHEN", "KIT", "ETC"};
		
		ProductVO product = productService.getProduct(vo);
		
		model.addAttribute("productVO", product);
		model.addAttribute("kindList", kindList);
		
		return "admin/product/productUpdate";
	}
	
	
	//상품 수정 처리
	@PostMapping(value="/admin_product_update")
	public String adminProductUpdate(@RequestParam(value="product_image") MultipartFile uploadFile, 
																	@RequestParam(value="nonmakeImg") String origImage,
																	ProductVO vo, HttpSession session) { 
		WorkerVO adminUser = (WorkerVO)session.getAttribute("adminUser");
		
		if (adminUser == null) {
			return "admin/main";
		} else {
			String fileName = "";
			
			// 이미지 파일을 수정 시 설정.
			if (!uploadFile.isEmpty()) {			// 이미지 파일이 있는 경우.
				fileName = uploadFile.getOriginalFilename();
				
				// vo 객체에 이미지 파일 저장.
				vo.setImage(fileName);
				
				// 이미지 파일의 실제 저장경로 구하기.
				String image_path = session.getServletContext().getRealPath("WEB-INF/resources/product_images/");
				System.out.println("이미지 경로: " + image_path);
			
				try {
					// 이미지 파일을 위의 경로로 이동시킨다...
					File dest = new File(image_path + fileName);
					uploadFile.transferTo(dest);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			} else {
				// 기존 이미지로 image 필드 설정..
				vo.setImage(origImage);
			}
			if (vo.getUseyn() == null) {
				vo.setUseyn("n");
			}
			if (vo.getBestyn() == null) {
				vo.setBestyn("n");
			}
			productService.updateProduct(vo);
			
			return "redirect:admin_product_list";
		}
	}

	
	// 상품 삭제 폼 열기
	@GetMapping(value="/admin_product_delete")
	public String adminProductDeleteFrom(ProductVO vo, HttpSession session) {
		WorkerVO adminUser = (WorkerVO)session.getAttribute("adminUser");
		
		if (adminUser == null) {
			return "admin/main";
		} else {
			
			return "redirect:admin_product_list";
		}
	}
	
//	// 상품 삭제 처리
//	@RequestMapping(value="/admin_product_delete")
//	public String adminProductDelete(ProductVO vo, HttpSession session) {
//		WorkerVO adminUser = (WorkerVO)session.getAttribute("adminUser");
//		
//		if (adminUser == null) {
//			return "admin/main";
//		} else {
//			productService.deleteProduct(vo);
//			
//			return "redirect:admin_product_list";
//		}
//	}
	
	
	
	/*
	 * 		회원 관련
	 */
	// 회원 목록 조회 처리
	@RequestMapping(value="/admin_member_list")
	public String adminMemberList(@RequestParam(value="key", defaultValue="") String name, Model model) {
			
		List<MemberVO> listMember = memberService.listMember(name);
			
		model.addAttribute("memberList", listMember);
			
		return "admin/member/memberList";
	}
	
	
	
	
	
	
	/*
	 * 		주문  관련
	 */
	// 주문 목록 조회 요청처리
	@RequestMapping(value="/admin_order_list")
	public String adminOrderList(@RequestParam(value="key", defaultValue="") String key, Model model) {
		
		List<OrderVO> orderList = orderService.listOrder(key);
		
		model.addAttribute("orderList", orderList);
		
		return "admin/order/orderList";
	}
	
	// 주문 완료 처리(입금 확인) 기능
	@RequestMapping(value="/admin_order_save")
	public String adminOrderSave(@RequestParam(value="result") int[] odseq) {
		
		for (int i = 0; i < odseq.length; i++) {
			orderService.updateOrderResult(odseq[i]);
		}	
		
		return "redirect:admin_order_list";
	}
	
	// 주문처리 상태별 상품 목록보기
	@GetMapping(value="/result")
	public String selectOrderByResult(OrderVO vo, Model model) {
		List<OrderVO> orderList = orderService.selectOrderByResult(vo);
		model.addAttribute("OrderByResult", orderList);
		
		return "admin/order/orderResult";
	}
	
	
	/*
	 * 			Q&A 관련
	 */
	// QNA 목록 조회
	@RequestMapping(value="/admin_qna_list")
	public String adminQnaList(@RequestParam(value="key", defaultValue="") String content, Model model) {
		List<QnaVO> qnaList = qnaService.listAllQna(content);
		model.addAttribute("listAllQna", qnaList);
		
		return "admin/qna/qnaList";
	}
	
	// Q&A 상태별 보기
	@GetMapping(value="/rep")
	public String selectQnaRepList(QnaVO vo, Model model) {
		List<QnaVO> qnaList = qnaService.selectQnaRepList(vo);
		model.addAttribute("qnaRepList", qnaList);
		
		return "admin/qna/qnaRep";
	}
	
}
