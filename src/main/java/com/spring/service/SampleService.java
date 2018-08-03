package com.spring.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mapper.SampleMapper;
import com.spring.models.UserVO;

@Service
public class SampleService {

	@Resource
	private SampleMapper sampleMapper;
	
	public UserVO getUser(UserVO vo) {
	  UserVO userVO = sampleMapper.getUser(vo);
		return userVO;
	}
}
