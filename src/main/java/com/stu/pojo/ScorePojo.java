package com.stu.pojo;

public class ScorePojo {
	private String sno;
	private String cno;
	private String cn;
	private int score;

	public String getSno() {
		return sno;
	}

	public void setSno(String sno) {
		this.sno = sno;
	}

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

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "Score [sno=" + sno + ", cno=" + cno + ", cn=" + cn + ", socre=" + score + "]";
	}

}
