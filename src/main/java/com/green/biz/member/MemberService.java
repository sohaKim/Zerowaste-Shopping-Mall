package com.green.biz.member;

import java.util.List;

//import com.green.biz.dto.AddressVO;
import com.green.biz.dto.MemberVO;

public interface MemberService {

	//회원 상세정보 조회
	MemberVO getMember(String id);

	//회원 존재여부 확인
	/*
	 * 리턴값:
	 * 		회원이 존재하면: 1
	 * 		회원이 존재하지 않으면: -1
	 */
	int confirmID(String id);

	//사용자 인증
	public int loginID(MemberVO vo);
	
	//회원 등록
	void insertMember(MemberVO vo);

//	//동이름으로 주소 찾기
//	public List<AddressVO> selectAddressByDong(String dong);
	
	//회원 목록 조회
	public List<MemberVO> listMember(String name);
	
	// 3/9 회원정보 수정 추가(수련)
	void updateMember(MemberVO vo); 
	void deleteMember(MemberVO vo);
}