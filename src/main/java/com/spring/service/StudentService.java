package com.spring.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.spring.mapper.StudentMapper;
import com.spring.models.MySubjectVO;

@Service
public class StudentService {
	
	@Resource
	private StudentMapper mStudentMapper;
	
	//나의 수강신청 목록
	public List<Map<String, Object>> mySubjectList(String id) {
		List<Map<String,Object>> mySubjectList = mStudentMapper.mySubjectList(id);
		return mySubjectList;
	}
	//강의목록
	public List<Map<String,Object>> getSubjectList()
	{
		List<Map<String,Object>> subjectList = mStudentMapper.getSubjectList();
		return subjectList;
	}
	//강의신청 중복학인
	public MySubjectVO checkSubject(MySubjectVO mysubject){
		MySubjectVO vo = mStudentMapper.checkSubject(mysubject);
		return vo;
	}	
	//수강신청
	public int chooseSubject(MySubjectVO mysubject){
		return mStudentMapper.chooseSubject(mysubject);
	}
	//수강취소
	public int cancleSubject(MySubjectVO mysubject){
		return mStudentMapper.cancleSubject(mysubject);
	}
}