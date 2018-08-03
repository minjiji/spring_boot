package com.spring.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.models.MySubjectVO;

@Repository
public interface StudentMapper {

	//나의 수강신청 목록
	public List<Map<String, Object>> mySubjectList(String id);
	//강의 목록
	public List<Map<String,Object>> getSubjectList();
	//수강신청 중복 확인
	public MySubjectVO checkSubject(MySubjectVO mysubject);
	//수강신청
	public int chooseSubject(MySubjectVO mysubject);
	//수강취소
	public int cancleSubject(MySubjectVO mysubject);
}
