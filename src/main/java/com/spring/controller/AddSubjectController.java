package com.spring.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.models.SubjectVO;
import com.spring.service.AddSubjectService;

@Controller
public class AddSubjectController {
	
	@Resource
	private AddSubjectService mAddSubjectService;
	
	
	//강의 등록
	@RequestMapping(value="/addSubject")
	public String addSubject(SubjectVO subject){
		mAddSubjectService.addSubject(subject);
		
		return "pages/profmain";
	}

}
