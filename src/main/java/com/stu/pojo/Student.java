package com.stu.pojo;

public class Student {

	private String sno;

	private String sn;

	private String sex;

	private String major;
	
	private int grade;

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "Student [sno=" + sno + ", sn=" + sn + ", sex=" + sex + ", major=" + major + ", grade=" + grade + "]";
	}
	
	

}