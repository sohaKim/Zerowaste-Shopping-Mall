package com.green.view;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.biz.dto.NoticeVO;
import com.green.biz.notice.NoticeService;

@Controller
public class NoitceController {
	
	@Autowired
	NoticeService noticeService;

// * header.jsp에서 notice_list로 받기
// * Notice공지사항 전제목록 보기(notice-홈 화면)
// * noticeList.jsp의 name="key" --> 검색 값
// * defaultValue="" key값 미입력시 null로 전체 목록 가져오도록 설정
// * 상단에 @Autowired로 NoticeService구현 필요
// */
//	@GetMapping(value="/notice_list")
//	public String noticeList(@RequestParam(value="key", defaultValue="")String key,
//							Model model) {   
//	      
//		List<NoticeVO> noticeList = noticeService.listNotice(key); // 화면에 입력된 key(검색키워드)값
//		
//		model.addAttribute("noticeList", noticeList); // noticeList.jsp의 ${noticeList}
//		
//	    return "notice/noticeList"; // jsp
//	}
	
	 /* 
	  * header.jsp에서 notice_list로 받기
	  * Notice공지사항 전제목록 보기(notice-홈 화면)	
	  */
	@GetMapping(value="/notice_list")
	public String noticeList(Model model) {   
	      
		List<NoticeVO> noticeList = noticeService.listNotice(); // 모든 Notice 목록 가져오기
		
		model.addAttribute("noticeList", noticeList); // noticeList.jsp의 ${noticeList}
		
	    return "notice/noticeList"; // jsp
	}



/*
 * Notice Details(view) 게시글 상세보기 
 * noticeList.jsp의 notice_view?nseq=
 * nseq를 NoticeVO 객체로 받음
 */

@RequestMapping(value="/notice_view")
public String noticeView(NoticeVO vo, Model model) {
		
		String[] nkindList = {"", "일반공지", "배송", "이벤트", "기타"};	 // nkind
		
		NoticeVO notice = noticeService.getNotice(vo); 
																
		model.addAttribute("noticeVO", notice); // noticeDetails.jsp ${noticeVO}
		
		// 공지사항 카테고리 설정
		int index = Integer.parseInt(notice.getNkind()); // DB에서 읽어온 nkind 값을 읽어옴
		model.addAttribute("nkind", nkindList[index]); // productDetail.jsp의 ${nkind}
		
		return "notice/noticeDetails"; // jsp
	}	

}
