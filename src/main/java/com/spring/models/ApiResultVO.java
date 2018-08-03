package com.spring.models;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ApiResultVO implements Serializable {

	private String status;
	private String message;

	public ApiResultVO() {
		this.status = "200";
		this.message = "OK";
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
