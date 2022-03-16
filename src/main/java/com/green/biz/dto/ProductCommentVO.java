package com.green.biz.dto;


import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Data
public class ProductCommentVO {
	private int comment_seq;
	private int pseq;		// product의 pseq와 동일
	private String content;
	private String writer;
	private Date regDate;
	private Date modifyDate;
}
