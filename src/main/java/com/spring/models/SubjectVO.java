package com.spring.models;

public class SubjectVO {
	
	private String subjectCode;
	private String week;
	private int periodFrom;
	private int periodTo;
	private String subjectName;
	private String professorName;
	private String type;
	private int credit;
	private int quota;
	
	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}

	public int getCredit() {
		return credit;
	}
	public void setCredit(int credit) {
		this.credit = credit;
	}
	public int getQuota() {
		return quota;
	}
	public void setQuota(int quota) {
		this.quota = quota;
	}
	public String getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(String subjectCode) {
		this.subjectCode = subjectCode;
	}
	public int getPeriodFrom() {
		return periodFrom;
	}
	public void setPeriodFrom(int periodFrom) {
		this.periodFrom = periodFrom;
	}
	public int getPeriodTo() {
		return periodTo;
	}
	public void setPeriodTo(int periodTo) {
		this.periodTo = periodTo;
	}
	public String getSubjectName() {
		return subjectName;
	}
	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}
	public String getProfessorName() {
		return professorName;
	}
	public void setProfessorName(String professorName) {
		this.professorName = professorName;
	}

}
