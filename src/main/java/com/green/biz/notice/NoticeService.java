package com.green.biz.notice;

import java.util.List;
import com.green.biz.dto.NoticeVO;

public interface NoticeService{

	// 조건없이 모든 Notice조회
	List<NoticeVO> listNotice();

	// 공지사항 글 번호로 내용 조회
	NoticeVO getNotice(int nseq);

	// ▶▶ Admin관리자 페이지 작성시 추가 부분  미리작성
	// Notice내용 삽입
	void insertNotice(NoticeVO vo);

}

