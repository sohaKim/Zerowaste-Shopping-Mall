package com.green.biz.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.green.biz.dto.WorkerVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	public String workerCheck(String id) {
		return mybatis.selectOne("mappings.admin-mapping.workerCheck", id);
	}
	
	public WorkerVO getEmployee(String id) {
		return mybatis.selectOne("mappings.admin-mapping.getEmployee", id);
	}
	
}
