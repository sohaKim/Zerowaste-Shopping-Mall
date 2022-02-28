package com.green.biz.qna;

import java.util.List;
import com.green.biz.dto.QnaVO;

public interface QnaService {

	List<QnaVO> listQna(String id);

	QnaVO getQna(QnaVO vo);

	public void insertQna(QnaVO vo);

	// Qna update수정,  답변이 없을경우만 수정  조건,   02.26 김소연 추가
	public void updateQnabyQseq(QnaVO vo);
	
	
	// ▶▶ Admin관리자 페이지 작성시 추가 부분 
	public List<QnaVO> listAllQna(String content);
	
	public void updateQna(QnaVO vo);
	
	List<QnaVO> selectQnaRepList(QnaVO vo);
}


