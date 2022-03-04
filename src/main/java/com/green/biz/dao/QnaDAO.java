package com.green.biz.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.QnaVO;

@Repository
public class QnaDAO  {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<QnaVO> listQna(String id) {
		
		return mybatis.selectList("mappings.qna-mapping.listQna", id);
	}
	
	public QnaVO getQna(QnaVO vo) {
		return mybatis.selectOne("mappings.qna-mapping.getQna", vo);
	}
	
	public void insertQna(QnaVO vo) {
		
		mybatis.insert("mappings.qna-mapping.insertQna", vo);
	}
	
	// Qna update수정,  답변이 없을경우만 수정  조건,   02.26 김소연 추가
	public void updateQnabyQseq(QnaVO vo) {
		
		mybatis.update("mappings.qna-mapping.updateQnabyQseq", vo);
	}

	
	// ▶▶ Admin관리자 페이지 작성시 추가 부분 
	// 관리자가 조건없이 모든 Q&A를 최신순으로 조회

	public List<QnaVO> listAllQna() {
		
		return mybatis.selectList("mappings.qna-mapping.listAllQna");
	}
	
	//Q&A 수정
	public void updateQna(QnaVO vo) {
		
		mybatis.update("mappings.qna-mapping.updateQna", vo);
	}

	
	// Q&A 상태별 보기
	public List<QnaVO> selectQnaRepList(QnaVO vo) {
			
		return mybatis.selectList("mappings.qna-mapping.selectQnaRepList", vo);
	}
}


