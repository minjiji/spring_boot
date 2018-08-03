package com.spring.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mapper.JoinMapper;
import com.spring.models.JoinVO;

@Service("com.spring.service")
public class JoinService {
	
	@Resource
	private JoinMapper mJoinMapper;
	
	public int addMember(JoinVO join) {
		return mJoinMapper.addMember(join);
	}
	
	public JoinVO checkId(JoinVO checkvo){
		JoinVO vo = mJoinMapper.checkId(checkvo);
		return vo;
	}
	
	public JoinVO getUser(JoinVO joinvo){
		JoinVO userVO = mJoinMapper.getUser(joinvo);
		return userVO;
	}
	
	public int changeUserInfo(JoinVO joinvo){
		return mJoinMapper.changeUserInfo(joinvo);
	}
}
