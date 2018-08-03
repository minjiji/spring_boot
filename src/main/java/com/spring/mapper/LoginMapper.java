package com.spring.mapper;

import org.springframework.stereotype.Repository;

import com.spring.models.UserVO;

@Repository
public interface LoginMapper {
	
	public String getNow();
	  public UserVO getUser(UserVO vo);
//		public int insert(String param);
//		public int update(String param);
//		public int delete(String param);

}
