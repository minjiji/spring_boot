package com.spring.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mapper.LoginMapper;
import com.spring.models.UserVO;

@Service
public class LoginService {

	@Resource
	private LoginMapper loginMapper;
	
	public UserVO getUser(UserVO vo) {
	  UserVO userVO = loginMapper.getUser(vo);
		return userVO;
	}
}
