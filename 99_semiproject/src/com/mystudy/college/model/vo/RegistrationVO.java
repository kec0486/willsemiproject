package com.mystudy.college.model.vo;

public class RegistrationVO {
	private String re_term; // 학기 
	private int re_score; //점수 
	private String re_grade; // 성적 
	private int sub_code; //과목코드 
	private int st_id; //학번 
	
	public RegistrationVO(String re_term, int re_score, String re_grade, int sub_code, int st_id) {
		super();
		this.re_term = re_term;
		this.re_score = re_score;
		this.re_grade = re_grade;
		this.sub_code = sub_code;
		this.st_id = st_id;
	}

	public RegistrationVO(int re_score, String re_grade, int sub_code, int st_id) {
		super();
		this.re_score = re_score;
		this.re_grade = re_grade;
		this.sub_code = sub_code;
		this.st_id = st_id;
	}

	public String getRe_term() {
		return re_term;
	}

	public void setRe_term(String re_term) {
		this.re_term = re_term;
	}

	public int getRe_score() {
		return re_score;
	}

	public void setRe_score(int re_score) {
		this.re_score = re_score;
	}

	public String getRe_grade() {
		return re_grade;
	}

	public void setRe_grade(String re_grade) {
		this.re_grade = re_grade;
	}

	public int getSub_code() {
		return sub_code;
	}

	public void setSub_code(int sub_code) {
		this.sub_code = sub_code;
	}

	public int getSt_id() {
		return st_id;
	}

	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}

	@Override
	public String toString() {
		return "RegistrationVO [re_term=" + re_term + ", re_score=" + re_score + ", re_grade=" + re_grade
				+ ", sub_code=" + sub_code + ", st_id=" + st_id + "]";
	}
	
	
	
}
