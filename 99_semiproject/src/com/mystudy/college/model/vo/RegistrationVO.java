package com.mystudy.college.model.vo;

public class RegistrationVO {
	private int sub_code; //과목코드 
	private String re_grade; // 성적 
	private String re_term; // 학기 
	private int st_id; //학번 
	private int re_score; //점수 
	
	public RegistrationVO(int sub_code, String re_grade, String re_term, int st_id, int re_score) {
		super();
		this.sub_code = sub_code;
		this.re_grade = re_grade;
		this.re_term = re_term;
		this.st_id = st_id;
		this.re_score = re_score;
	}
	public int getSub_code() {
		return sub_code;
	}
	public void setSub_code(int sub_code) {
		this.sub_code = sub_code;
	}
	public String getRe_grade() {
		return re_grade;
	}
	public void setRe_grade(String re_grade) {
		this.re_grade = re_grade;
	}
	public String getRe_term() {
		return re_term;
	}
	public void setRe_term(String re_term) {
		this.re_term = re_term;
	}
	public int getSt_id() {
		return st_id;
	}
	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}
	public int getRe_score() {
		return re_score;
	}
	public void setRe_score(int re_score) {
		this.re_score = re_score;
	}
	
	@Override
	public String toString() {
		return "RegistrationVO [sub_code=" + sub_code + ", re_grade=" + re_grade + ", re_term=" + re_term + ", st_id="
				+ st_id + ", re_score=" + re_score + "]";
	}
	
	
}
