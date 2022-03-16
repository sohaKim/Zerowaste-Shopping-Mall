package com.green.view;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.green.biz.dto.MemberVO;
import com.green.biz.dto.ProductCommentVO;
import com.green.biz.product.ProductService;

import utils.Criteria;
import utils.PageMaker;


// ��� Data�� �����ϴ� ��Ʈ�ѷ�
@RequestMapping("/comments/")
@RestController
public class CommentController {

	@Autowired
	ProductService productService;
	
	@PostMapping(value="/save")
	@ResponseBody
	public String saveComment(ProductCommentVO commentVO, HttpSession session) {
		
		System.out.println("��ǰ�� ��� ��û ����>>>>>");
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser"); 
		if (loginUser == null) {
			
			return("not_logedin");
		} else {
			String userId = loginUser.getId();
			
			commentVO.setWriter(userId);
			
			if (productService.saveComment(commentVO) == 1)
				return "success";
			else
				return "fail";
		}
	}
	

	@GetMapping(value="/list")
	public List<ProductCommentVO> getCommentList(ProductCommentVO commentVo) {
		
		int pseq = commentVo.getPseq();
		System.out.println("��ǰ��ȣ="+pseq);
		
		List<ProductCommentVO> commentList = productService.getCommentList(pseq);
		
		return commentList;
	}

	
	/*
	 * ��ǰ�� ����� ������ ���� ��ȸ��û ó��
	 */
//	@GetMapping(value="/pages/{pseq}/{page}",
//				produces = {MediaType.APPLICATION_XML_VALUE,
//						    MediaType.APPLICATION_JSON_UTF8_VALUE})
//	public ResponseEntity<Map<String, Object>> getList(
//			@PathVariable("page") int page,
//			@PathVariable("pseq") int pseq) {
//		Map<String, Object> commentInfo = new HashMap<String, Object>();
//		Criteria cri = new Criteria(page, 10);
//
//		
//		List<ProductCommentVO> commentList = productService.getCommentListWithPaging(cri, pseq);
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		// Ư�� ��ǰ�� ���� �� ��ǰ�� ������ ���Ѵ�.
//		int totalComment = productService.countCommentList(pseq);
//		
//		pageMaker.setTotalCount(totalComment);
//		
//		commentInfo.put("total", totalComment);
//		commentInfo.put("comments", commentList);
//		commentInfo.put("pageinfo", pageMaker);
//		
//		return new ResponseEntity<>(commentInfo, HttpStatus.OK);
//	}
//	
//	
//	@GetMapping(value="/list")
//	public Map<String, Object> CommentPagingList(@RequestParam(value="pseq") int pseq,
//									Criteria criteria, Model model,
//									HttpSession session) {
//		System.out.println("Criteria=" + criteria);
//		System.out.println("��ǰ��ȣ="+pseq);
//		Map<String, Object> commentInfo = new HashMap<String, Object>();
//		
//		List<ProductCommentVO> commentList = productService.getCommentListWithPaging(criteria, pseq);
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(criteria);
//		// Ư�� ��ǰ�� ���� �� ��ǰ�� ������ ���Ѵ�.
//		int totalComment = productService.countCommentList(pseq);
//		
//		pageMaker.setTotalCount(totalComment);
//		System.out.println("��ǰ�� ����¡ ����="+pageMaker);
//		
//		commentInfo.put("total", totalComment);
//		commentInfo.put("comments", commentList);
//		commentInfo.put("pageinfo", pageMaker);
//		
//		return commentInfo;
//	}
}











