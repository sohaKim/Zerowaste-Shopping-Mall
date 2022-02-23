package com.green.biz.dto;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QnaVO {

	private int qseq;		// 글번호
	private String qkind;	// 문의 카테고리  1:상품, 2:배송, 3:환불, 4:기타
	private String subject;	// 제목
	private String content;	// 문의 내용
	private String reply;	// 답변 내용
	private String id;		// 작성자 아이디(member테이블)
	private String rep;		// 답변여부 1:답변X, 2:답변O
	private Timestamp indate;	// 등록일자(작성일자)
}
