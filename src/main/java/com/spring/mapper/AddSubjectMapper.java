package com.spring.mapper;

import org.springframework.stereotype.Repository;

import com.spring.models.SubjectVO;

@Repository
public interface AddSubjectMapper {

	//강의 등록
	public int addSubject(SubjectVO subject);
}
