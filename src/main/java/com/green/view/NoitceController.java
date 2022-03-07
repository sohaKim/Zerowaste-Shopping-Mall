package com.green.view;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.green.biz.dto.NoticeVO;
import com.green.biz.notice.NoticeService;
import utils.notice.Criteria;
import utils.notice.PageMaker;

@Controller
public class NoitceController {
	
	@Autowired
	NoticeService noticeService;

 /* header.jsp에서 notice_list로 받기
  * Notice공지사항 전제목록 보기(notice-홈 화면)
  * noticeList.jsp의 name="key" --> 검색 값
  * defaultValue="" key값 미입력시 null로 전체 목록 가져오도록 설정
  * 
  */
//	@RequestMapping(value="/notice_list")
//	public String noticeList(@RequestParam(value="key", defaultValue="")String key,
//							Model model) {   
//	      
//		List<NoticeVO> noticeList = noticeService.searchNotice(key); // 화면에 입력된 key(검색키워드)값
//		
//		model.addAttribute("noticeList", noticeList); // noticeList.jsp의 ${noticeList}
//		
//	    return "notice/noticeList"; // jsp
//	}
	
	/* header.jsp에서 notice_list로 받기
	 * Notice공지사항 전제목록 보기(notice-홈 화면)
	 * noticeList.jsp의 name="key" --> 검색 값
	 * defaultValue="" key값 미입력시 null로 전체 목록 가져오도록 설정
	 * 
	 * 
	 * Criteria 설정(All카테고리에만 적용--6개씩 글 묶음)----03.02 수정
	 */	
	@RequestMapping(value="/notice_list")
	public String noticeList(@RequestParam(value="key", defaultValue="")String content,
			Criteria criteria, Model model, NoticeVO vo) {   
	      
		List<NoticeVO> noticeList = noticeService.getNoticeWithPaging(criteria, content); // 화면에 입력된 key(검색키워드)값
		
		// 화면에 표시할 페이지 버튼 정보 설정		
		PageMaker pageMaker = new PageMaker(); // PageMakerNoitce() 객체생성	
		pageMaker.setCriteria(criteria); // 현재 페이지와 페이지당 항목 수 정보 설정		
		int totalCount = noticeService.countNoticeList(vo); // 전체 게시글 수 조회 by nseq-NoticeVO타입 (notice-mapping.xml) 
		
		// 전체 상품목록 개수 설정 메소드(setTotalCount) 구현 및 페이지정보(fieldInit()) 초기화
		pageMaker.setTotalCount(totalCount); 
		System.out.println("[noticeList] pageMaker=" + pageMaker);

		model.addAttribute("noticeList", noticeList); // noticeList.jsp의 ${noticeList}
		model.addAttribute("noticeListSize", noticeList.size()); // noticeList.jsp의 ${noticeList}의 size
		model.addAttribute("pageMaker", pageMaker); //noticeList.jsp의 ${pageMaker}
		
	    return "notice/noticeList"; // jsp
	}	

	
	
	
	

	/*
	 * noticeList.jsp에서 
	 * 왼쪽 카테고리바에서 카테고리 번호(a href="category?kind=1")를 누를경우
	 * 해당 카테고리에 해당되는 항목만 리스트에 나열
	 */
	@GetMapping(value="/notice_category")
	public String getNoticeByCategory(NoticeVO vo, Model model) {
		
		List<NoticeVO> noticeList = noticeService.getNoticeByCategory(vo);
		model.addAttribute("noticeList", noticeList);
		
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
