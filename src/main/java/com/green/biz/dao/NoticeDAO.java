package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.biz.dto.NoticeVO;

import utils.notice.Criteria;


@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 조건없이 모든 Notice조회
	public List<NoticeVO> listNotice() {
		
		return mybatis.selectList("mappings.notice-mapping.listNotice");
	}
	
	// 공지사항 글 번호로 내용 조회
	public NoticeVO getNotice(NoticeVO vo) {
		return mybatis.selectOne("mappings.notice-mapping.getNotice", vo);
	}
	
	// ==> key값(검색값)으로 Notice 리스트 조회  02.25추가
	public List<NoticeVO> searchNotice(String content) {
		
		return mybatis.selectList("mappings.notice-mapping.searchNotice", content);
	}
	
	// ==> 카테고리별 클릭시 Notice 리스트조회 02.25 추가
	public List<NoticeVO> getNoticeByCategory(NoticeVO vo) {
		
		return mybatis.selectList("mappings.notice-mapping.getNoticeByCategory", vo);
	}
	
	// ==> 게시판 조회수  02.25 추가
	public void noticeCount(NoticeVO vo) {
		
		mybatis.update("mappings.notice-mapping.noticeCount", vo);
	}
	
	// ▶▶ Admin관리자 페이지 작성시 추가 부분  미리작성
	// Notice내용 삽입
	public void insertNotice(NoticeVO vo) {
		
		mybatis.insert("mappings.notice-mapping.insertNotice", vo);
	}
	
	// ▶▶ Criteria 작성 후 추가 (1) -- 03.02	
	// int nseq(공지번호) 총 개수 ncnt를  NoticeVO타입으로 매개변수로 받음	 
	public int countNoticeList(NoticeVO vo) {
		
	return mybatis.selectOne("mappings.notice-mapping.countNoticeList", vo);
	
}
	
	// ▶▶ Criteria 작성 후 추가 (2) -- 03.02
	public List<NoticeVO> getNoticeWithPaging(Criteria criteria, String content) {
		HashMap<String, Object>map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("content", content);
		
		return mybatis.selectList("mappings.notice-mapping.listWithPagingNotice", map);
	}
	
}

