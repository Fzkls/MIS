package com.stu.pojo;

public class ClassPojo {
	private String cno;
	private String cn;
	private String teacher;
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCn() {
		return cn;
	}
	public void setCn(String cn) {
		this.cn = cn;
	}
	public String getTeacher() {
		return teacher;
	}
	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}
	@Override
	public String toString() {
		return "Class [cno=" + cno + ", cn=" + cn + ", teacher=" + teacher + "]";
	}
	
}
