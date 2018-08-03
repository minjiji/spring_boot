package com.spring.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mapper.AddSubjectMapper;
import com.spring.models.SubjectVO;

@Service
public class AddSubjectService {

	@Resource
	private AddSubjectMapper mAddSubjectMapper;
	
	public int addSubject(SubjectVO subject){
		return mAddSubjectMapper.addSubject(subject);
	}
}
