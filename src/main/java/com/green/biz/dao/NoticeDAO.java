package com.green.biz.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.biz.dto.NoticeVO;


@Repository
public class NoticeDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 조건없이 모든 Notice조회
	public List<NoticeVO> listNotice() {
		
		return mybatis.selectList("mappings.notice-mapping.listNotice");
	}
	
	// 공지사항 글 번호로 내용 조회
	public NoticeVO getNotice(int nseq) {
		return mybatis.selectOne("mappings.notice-mapping.getNotice", nseq);
	}
	
	
	// ▶▶ Admin관리자 페이지 작성시 추가 부분  미리작성
	// Notice내용 삽입
	public void insertNotice(NoticeVO vo) {
		mybatis.insert("mappings.notice-mapping.insertNotice", vo);
	}
}

