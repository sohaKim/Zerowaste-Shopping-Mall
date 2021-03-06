package com.green.biz.notice.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.green.biz.dao.NoticeDAO;
import com.green.biz.dto.NoticeVO;
import com.green.biz.notice.NoticeService;

import utils.notice.Criteria;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticeDao;
	
	@Override
	public List<NoticeVO> listNotice() {
		return noticeDao.listNotice();
	}

	/*
	@Override
	public NoticeVO getNotice(NoticeVO vo) {
		return noticeDao.getNotice(vo);
	}*/
	
	// ==> key값(검색값)으로 Notice 리스트 조회  02.25추가
	@Override
	public List<NoticeVO> searchNotice(String content) {
		
		return noticeDao.searchNotice(content);
	}

	// ==> 카테고리별 클릭시 Notice 리스트조회 02.25 추가
	@Override
	public List<NoticeVO> getNoticeByCategory(NoticeVO vo) {
		
		return noticeDao.getNoticeByCategory(vo);
	}

	// ==> getNotice에 Override구현 (+)게시판 조회수   
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public NoticeVO getNotice(NoticeVO vo) {

		noticeDao.noticeCount(vo);
		return noticeDao.getNotice(vo);
	}

	// *** Admin관리자 페이지 작성시 추가 부분
	@Override
	public void insertNotice(NoticeVO vo) {
		noticeDao.insertNotice(vo);
	}
	
	@Override
	public void updateNotice(NoticeVO vo) {
		noticeDao.updateNotice(vo);
	}

	@Override
	public void noticeCount(NoticeVO vo) {
		noticeDao.noticeCount(vo);
		
	}


	// ▶▶ Criteria 작성 후 추가 (1) -- 03.02	
	@Override
	public int countNoticeList(NoticeVO vo) {

		return noticeDao.countNoticeList(vo);
	}

	
	// ▶▶ Criteria 작성 후 추가 (2) -- 03.02	
	@Override
	public List<NoticeVO> getNoticeWithPaging(utils.notice.Criteria criteria, String content) {

		return noticeDao.getNoticeWithPaging(criteria, content);
	}
	
	@Override
	public List<NoticeVO> adminNoticeListWithPaging(utils.Criteria criteria, String subject) {
		
		return noticeDao.adminNoticeListWithPaging(criteria, subject);
	}

	@Override
	public int adminCountNoticeList(String subject) {
		return noticeDao.adminCountNoticeList(subject);
	}
  

}
