package com.green.biz.admin.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.admin.AdminService;
import com.green.biz.dao.AdminDAO;
import com.green.biz.dto.WorkerVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminDAO adminDao;

	@Override
	public int workerCheck(WorkerVO vo) {
		int result = -1;

		// Worker 테이블에서 id 를 조건으로 pwd 조회
		String pwd_in_db = adminDao.workerCheck(vo.getId());

		// 사용자 입력 pwd와 테이블에서 조회한 pwd를 비교
		if (pwd_in_db == null) {
			result = -1;
		} else if (vo.getPwd().equals(pwd_in_db)) {
			result = 1;
		} else {
			result = 0;
		}

		return result;
	}

	@Override
	public WorkerVO getEmployee(String id) {
		
		return adminDao.getEmployee(id);
	}

}
