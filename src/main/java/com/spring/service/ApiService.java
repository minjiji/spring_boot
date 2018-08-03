package com.spring.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mapper.SampleMapper;
import com.spring.models.ApiResultVO;

@Service
public class ApiService {

	@Resource
	private SampleMapper spring1stMapper;
	
	public ApiResultVO testDB() {
		ApiResultVO apiResultVO = new ApiResultVO();
		// DB
		String now = spring1stMapper.getNow();
		apiResultVO.setMessage(now);
		return apiResultVO;
	}
}
