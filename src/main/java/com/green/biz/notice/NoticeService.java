package com.green.biz.notice;

import java.util.List;

import com.green.biz.dto.NoticeVO;

import utils.notice.Criteria;



public interface NoticeService{

	// 조건없이 모든 Notice조회
	List<NoticeVO> listNotice();

	// 공지사항 글 번호로 내용 조회
	NoticeVO getNotice(NoticeVO vo);

	// ==> key값(검색값)으로 Notice 리스트 조회  02.25추가
	public List<NoticeVO> searchNotice(String content);
	
	// ==> 카테고리별 클릭시 Notice 리스트조회 02.25 추가
	public List<NoticeVO> getNoticeByCategory(NoticeVO vo);
	
	// ==> 게시판 조회수  02.25 추가
	public void noticeCount(NoticeVO vo);
	

	// ▶▶ Criteria 작성 후 추가 (1) -- 03.02	
	public int countNoticeList(NoticeVO vo);
	
	// ▶▶ Criteria 작성 후 추가 (2) -- 03.02	
	public List<NoticeVO> getNoticeWithPaging(Criteria criteria, String content);
	

		
	// ▶▶ Admin관리자 페이지 작성시 추가 부분  미리작성
	// Notice내용 삽입
	public void insertNotice(NoticeVO vo);
	
	public void updateNotice(NoticeVO vo);
		
	public int adminCountNoticeList(String subject);
	public List<NoticeVO> adminNoticeListWithPaging(utils.Criteria criteria, String subject);


}

