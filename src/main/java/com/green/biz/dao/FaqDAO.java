package com.green.biz.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.green.biz.dto.FaqVO;


@Repository
public class FaqDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public List<FaqVO> listFaq() {
		
		return mybatis.selectList("mappings.qna-mapping.listFaq");
	}
}

