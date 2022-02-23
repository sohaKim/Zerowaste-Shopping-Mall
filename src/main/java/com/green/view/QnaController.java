package com.green.view;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.green.biz.dto.MemberVO;
import com.green.biz.dto.QnaVO;
import com.green.biz.qna.QnaService;

@Controller
public class QnaController {

	@Autowired
	QnaService qnaService;
	
	/*
	 * 회원id를 조건으로 모든 Q&A 조회
	 */
	@GetMapping(value="/qna_list")
	public String qnaList(HttpSession session, Model model) {
		
		// 회원 로그인 확인
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if(loginUser == null) {
			return "member/login"; // jsp
		} else { 
			List<QnaVO> qnaList = qnaService.listQna(loginUser.getId());
			
			model.addAttribute("qnaList", qnaList); // qnaList.jsp의 ${qnaList}
			
			return "qna/qnaList"; // jsp			
		}
	}
	
//	// Q&A 리스트 불러오기
//	@GetMapping(value="/qna_list")
//	public String qnaList() {
//		return "qna/qnaList"; // jsp
//	}
	
	
	/*
	 * Q&A 폼 불러오기
	 */

	@GetMapping(value="/qna_write_form")
	public String qnaWriteView(HttpSession session) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			return "member/login"; // jsp
		} else {
			return "qna/qnaWrite"; // jsp
		}
	}

//	//  Q&A 폼 불러오기
//	@GetMapping(value="/qna_write_form")
//	public String qnaWriteView() {
//		return "qna/qnaWrite"; // jsp
//	}
	
	/*
	 * Q&A 폼-> 작성완료 (버튼:글등록 클릭시 // 내용저장 및 Q&A리스트로 이동)
	 */
	@PostMapping(value="/qna_write")
	public String qnaWrite(QnaVO vo, HttpSession session) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			return "member/login"; // jsp
		
		// 사용자id 정보를 QnaVO 객체에 저장	
		// qnaService 객체에서 insertQna(qnaVO, id)를 호출하여 게시글을 저장
		} else {
			vo.setId(loginUser.getId());	
			qnaService.insertQna(vo);
			
			return "redirect:qna_list"; // 게시글 목록화면(/qna_list) 이동
		}
	}

//	// Q&A 폼-> 작성완료 (버튼:글등록 클릭시 // 내용저장 및 Q&A리스트로 이동)
//	@PostMapping(value="/qna_write")
//	public String qnaWrite() {
//		return "redirect:qna_list"; // 게시글 목록화면(/qna_list) 이동
//	}
	
	
	/*
	 * Q&A View 게시글 상세보기	
	 * qnaList.jsp의 qna_view?qseq=
	 * qseq를 QnaVO 객체로 받음
	 */
	@GetMapping(value="/qna_view")
	public String qnaView(QnaVO vo, HttpSession session, Model model) {
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		
		if (loginUser == null) {
			return "member/login"; // jsp
		} else {
			vo.setId(loginUser.getId());	
			
			QnaVO qna = qnaService.getQna(vo.getQseq());
			model.addAttribute("qnaVO", qna);
			
			return "qna/qnaView"; // jsp
		}	
	}

//	// 	 * Q&A View 게시글 상세보기
//	//   * qnaList.jsp의 qna_view?qseq=
//	@GetMapping(value="/qna_view")
//	public String qnaView() {
//		return "qna/qnaView"; // jsp
//	}	
}


