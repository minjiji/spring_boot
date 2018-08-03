package com.spring.mapper;

import org.springframework.stereotype.Repository;

import com.spring.models.JoinVO;

@Repository
public interface JoinMapper {
	
	//회원가입
	public int addMember(JoinVO join); 
	
	//아이디 중복확인
	public JoinVO checkId(JoinVO checkvo);
	
	//마이페이지
	public JoinVO getUser(JoinVO joinvo);
	
	//회원정보수정
	public int changeUserInfo(JoinVO joinvo);
}
