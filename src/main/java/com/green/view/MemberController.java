package com.green.view;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

//import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.member.MemberService;

@Controller
@SessionAttributes("loginUser")
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	/*
	 * 로그인 화면 표시
	 */
	@GetMapping(value="/login_form")
	public String loginView() {
		return "member/login";
	}
	
	/*
	 * 사용자 로그인 처리
	 * 
	 * vo객체에서 id,pwd 정보를 읽어와 사용자 인증
	 */
	@PostMapping(value="/login")
	public String loginAction(MemberVO vo,Model model) {
		MemberVO loginUser = null;
		
		System.out.println("login: vo" + vo);
		int result = memberService.loginID(vo);
		
		if(result ==1) {//사용자 인증 성공
			//사용자 정보를 조회하여 Session 객체에 전달
			loginUser = memberService.getMember(vo.getId());
			//@SessionAttribute로 지정하여 세션에서 저장됨
			model.addAttribute("loginUser", loginUser);
			
			return "redirect:/index";
			
		}else {//사용자 인증 실패
			return "member/login_fail";
		}
	}
	
	@GetMapping(value="/logout")
	public String logout(SessionStatus status) {
		
		//session.invalidate(); 완전하게 로그아웃이 안됨
		status.setComplete();//현재 세션울 종료
		
		return "member/login";
	}
	
	@GetMapping(value="/contract")
	public String contractView() {
		
		return "member/contract";
	}
	
//	@PostMapping(value="/join_form")
//	public String joinView() {
//		
//		return "member/join";
//	}
	
	@GetMapping(value="/join_form")
	public String joinView() {
		
		return "member/join";
	}
	/*
	 * ID중복체크 하면 출력
	 */

	@GetMapping(value="/id_check_form")
	
	public String idCheckView(MemberVO vo, Model model) {
		
		model.addAttribute("id",vo.getId());
		
		return "member/idcheck";
	}
	
	/*
	 * ID중복 체크 수행
	 */
	@PostMapping(value="/id_check_form")
	public String idCheckAction(MemberVO vo,Model model) {
		
		int result = memberService.confirmID(vo.getId());
		
		model.addAttribute("message",result);
		model.addAttribute("id",vo.getId());
		
		return "member/idcheck";
	}
	/*
	 * 사용할 id를 join(회원가입)화면에 전송
	 */
	@GetMapping(value="/id_check_confirmed")
	public String idCheckConfirmed(MemberVO vo, Model model) {
		
		model.addAttribute("id", vo.getId());
		model.addAttribute("reid", vo.getId()); //id 중복확인 필드
		
		return "member/join";
	}
	/*
	 * 회원가입 처리
	 */
	/*다음카카오 api를 통한 주소 입력 */
	@PostMapping(value="/join")
	public String joinAction(@RequestParam(value="zonecode")String zonecode,
							 @RequestParam(value="addr1")String addr1,
							 @RequestParam(value="addr2")String addr2,	
							 MemberVO vo) {
		vo.setZonecode(zonecode);
		vo.setRoadaddr(addr1);
		vo.setDetailaddr(addr2);
		memberService.insertMember(vo);
		
		return "member/login";
	}
//	//0314 아이디찾기예진
//	@RequestMapping(value = "/find_id_form")
//	public String find_id_form() throws Exception{
//		return "member/find_id_form";
//	}

	
	   
	// 3/9 마이페이지 수정 추가(수련)
	@GetMapping(value="/update_member_form")
	public String updateMemberForm(Model model, HttpSession session) {
			
		model.addAttribute("title","개인정보 수정");
		
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		if (loginUser == null) {
			return "member/login";
		} else {
			return "mypage/updateMember";		
		}
		
	}
		
	@PostMapping(value="/update_member")
	public String updateMember(@RequestParam(value="zonecode")String zonecode,
				@RequestParam(value="addr1")String addr1,
				@RequestParam(value="addr2")String addr2,	
				MemberVO vo, Model model) {
		vo.setZonecode(zonecode);
		vo.setRoadaddr(addr1);
		vo.setDetailaddr(addr2);
		memberService.updateMember(vo);
		
		model.addAttribute("loginUser", vo);
		
		return "redirect:mypage";
}
	
	@PostMapping(value="/deleteMember")
	public String deleteMember(MemberVO vo, SessionStatus status) {
	
		status.setComplete();
		return "index";
	}
	
}
