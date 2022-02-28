package com.green.biz.dto;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FaqVO {

	private int fseq;		// 글번호
	private String subject;	// 제목
	private String content;	// 문의 내용
	private Timestamp indate;	// 등록일자(작성일자)
}
