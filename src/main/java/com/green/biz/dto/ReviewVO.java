package com.green.biz.dto;


import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class ReviewVO {
	private int rseq; //리뷰번호
    private String id;//회원아이디
    private String content;//리뷰내용
    private String name;//상품명
    private Timestamp indate;	// 등록일자(작성일자)
}
