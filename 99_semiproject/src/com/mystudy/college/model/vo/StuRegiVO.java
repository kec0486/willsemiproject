package com.mystudy.college.model.vo;

public class StuRegiVO {
	private int st_id; // 학번 
	private String st_pwd; //학생 비밀번호 
	private String st_name; //이름
	private String st_ssn; // 학생 주민등록번호 
	private int st_level; //학년 
	private String st_mobile;// 휴대폰번호 
	private String  st_phone; //집전화번호 
	private String st_email; //이메일 
	private String st_addr; //집주소 
	private int ma_code; //학과코드 
	private String re_term; // 학기 
	private int re_score; //점수 
	private String re_grade; // 성적 
	private int sub_code; //과목코드 
	
	public StuRegiVO(int st_id, String st_pwd, String st_name, String st_ssn, int st_level, String st_mobile,
			String st_phone, String st_email, String st_addr, int ma_code, String re_term, int re_score,
			String re_grade, int sub_code) {
		super();
		this.st_id = st_id;
		this.st_pwd = st_pwd;
		this.st_name = st_name;
		this.st_ssn = st_ssn;
		this.st_level = st_level;
		this.st_mobile = st_mobile;
		this.st_phone = st_phone;
		this.st_email = st_email;
		this.st_addr = st_addr;
		this.ma_code = ma_code;
		this.re_term = re_term;
		this.re_score = re_score;
		this.re_grade = re_grade;
		this.sub_code = sub_code;
	}

	public int getSt_id() {
		return st_id;
	}

	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}

	public String getSt_pwd() {
		return st_pwd;
	}

	public void setSt_pwd(String st_pwd) {
		this.st_pwd = st_pwd;
	}

	public String getSt_name() {
		return st_name;
	}

	public void setSt_name(String st_name) {
		this.st_name = st_name;
	}

	public String getSt_ssn() {
		return st_ssn;
	}

	public void setSt_ssn(String st_ssn) {
		this.st_ssn = st_ssn;
	}

	public int getSt_level() {
		return st_level;
	}

	public void setSt_level(int st_level) {
		this.st_level = st_level;
	}

	public String getSt_mobile() {
		return st_mobile;
	}

	public void setSt_mobile(String st_mobile) {
		this.st_mobile = st_mobile;
	}

	public String getSt_phone() {
		return st_phone;
	}

	public void setSt_phone(String st_phone) {
		this.st_phone = st_phone;
	}

	public String getSt_email() {
		return st_email;
	}

	public void setSt_email(String st_email) {
		this.st_email = st_email;
	}

	public String getSt_addr() {
		return st_addr;
	}

	public void setSt_addr(String st_addr) {
		this.st_addr = st_addr;
	}

	public int getMa_code() {
		return ma_code;
	}

	public void setMa_code(int ma_code) {
		this.ma_code = ma_code;
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

	@Override
	public String toString() {
		return "StuRegiVO [st_id=" + st_id + ", st_pwd=" + st_pwd + ", st_name=" + st_name + ", st_ssn=" + st_ssn
				+ ", st_level=" + st_level + ", st_mobile=" + st_mobile + ", st_phone=" + st_phone + ", st_email="
				+ st_email + ", st_addr=" + st_addr + ", ma_code=" + ma_code + ", re_term=" + re_term + ", re_score="
				+ re_score + ", re_grade=" + re_grade + ", sub_code=" + sub_code + "]";
	}
	
	
	
}
