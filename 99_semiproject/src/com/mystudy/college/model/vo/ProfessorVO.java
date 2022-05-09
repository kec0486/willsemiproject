package com.mystudy.college.model.vo;

public class ProfessorVO {
	private int pro_id; //아이디 
	private String pro_pwd; //비밀번호
	private String pro_name; //이름
	private String pro_ssn; //주민등록번호 
	private String pro_position; //직책
	private String pro_office; //연구실 
	private String pro_mobile; //전화번호 
	private String pro_phone; //전화번호
	private String pro_email; //이메일 
	private String pro_addr; //주소
	private int ma_code; // 학과코드
	
	

	
	public ProfessorVO(int pro_id, String pro_pwd, String pro_name, String pro_ssn, String pro_position,
			String pro_office, String pro_mobile, String pro_phone, String pro_email, String pro_addr, int ma_code) {
		super();
		this.pro_id = pro_id;
		this.pro_pwd = pro_pwd;
		this.pro_name = pro_name;
		this.pro_ssn = pro_ssn;
		this.pro_position = pro_position;
		this.pro_office = pro_office;
		this.pro_mobile = pro_mobile;
		this.pro_phone = pro_phone;
		this.pro_email = pro_email;
		this.pro_addr = pro_addr;
		this.ma_code = ma_code;
	}




	public ProfessorVO(int pro_id, String pro_pwd, String pro_position, String pro_phone, String pro_addr, String pro_office,
			String pro_mobile, String pro_email) {
		super();
		this.pro_id = pro_id;
		this.pro_pwd = pro_pwd;
		this.pro_position = pro_position;
		this.pro_phone = pro_phone;
		this.pro_addr = pro_addr;
		this.pro_office = pro_office;
		this.pro_mobile = pro_mobile;
		this.pro_email = pro_email;
	}




	public int getPro_id() {
		return pro_id;
	}




	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}




	public String getPro_pwd() {
		return pro_pwd;
	}




	public void setPro_pwd(String pro_pwd) {
		this.pro_pwd = pro_pwd;
	}




	public String getPro_name() {
		return pro_name;
	}




	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}




	public String getPro_ssn() {
		return pro_ssn;
	}




	public void setPro_ssn(String pro_ssn) {
		this.pro_ssn = pro_ssn;
	}




	public String getPro_position() {
		return pro_position;
	}




	public void setPro_position(String pro_position) {
		this.pro_position = pro_position;
	}




	public String getPro_office() {
		return pro_office;
	}




	public void setPro_office(String pro_office) {
		this.pro_office = pro_office;
	}




	public String getPro_mobile() {
		return pro_mobile;
	}




	public void setPro_mobile(String pro_mobile) {
		this.pro_mobile = pro_mobile;
	}




	public String getPro_phone() {
		return pro_phone;
	}




	public void setPro_phone(String pro_phone) {
		this.pro_phone = pro_phone;
	}




	public String getPro_email() {
		return pro_email;
	}




	public void setPro_email(String pro_email) {
		this.pro_email = pro_email;
	}




	public String getPro_addr() {
		return pro_addr;
	}




	public void setPro_addr(String pro_addr) {
		this.pro_addr = pro_addr;
	}




	public int getMa_code() {
		return ma_code;
	}




	public void setMa_code(int ma_code) {
		this.ma_code = ma_code;
	}




	@Override
	public String toString() {
		return "ProfessorVO [pro_id=" + pro_id + ", pro_pwd=" + pro_pwd + ", pro_name=" + pro_name + ", pro_ssn="
				+ pro_ssn + ", pro_position=" + pro_position + ", pro_office=" + pro_office + ", pro_mobile="
				+ pro_mobile + ", pro_phone=" + pro_phone + ", pro_email=" + pro_email + ", pro_addr=" + pro_addr
				+ ", ma_code=" + ma_code + "]";
	}



	
	
	}
	
	
	

