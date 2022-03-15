package com.green.biz.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.biz.dao.MemberDAO;
//import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;
import com.green.biz.member.MemberService;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO mDao;
	@Override
	public MemberVO getMember(String id) {
		
		return mDao.getMember(id);
	}

	@Override
	public int confirmID(String id) {
	
		return mDao.confirmID(id);
	}

	@Override
	public void insertMember(MemberVO vo) {

		mDao.insertMember(vo);          
	}
	
//	@Override
//	public List<AddressVO> selectAddressByDong(String dong) {
//
//		return mDao.selectRoadaddrByDong(dong);
//	}
	@Override
	public int loginID(MemberVO vo) {
		return mDao.loginID(vo);
	}

	@Override
	public List<MemberVO> listMember(String name) {
		return mDao.listMember(name);
	}

	@Override
	public void updateMember(MemberVO vo) {
		mDao.updateMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		mDao.deleteMember(vo);		
	}

	@Override
	public String findPwd(String id, String phone) {
		
		return mDao.findPwd(id, phone);
	}
	
}
