package com.green.biz.dto;

import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {

	private int nseq;		// 게시글 번호(공지번호)
	private String nkind;	// 카테고리  1:공지, 2:배송, 3:이벤트, 4:기타
	private String subject;	// 제목
	private String content;	// 문의 내용
	private String notimg; // 공지사항 이미지 -- default.jpg
	private Timestamp indate;	// 등록일자(작성일자)
	private int count;	   // 조회수
}
