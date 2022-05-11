package com.mystudy.college.model.vo;

public class SubjectVO {
	private int sub_code; //과목 코드 
	private String sub_name; //강목명 
	private int sub_level; // 학년 
	private int sub_credit; //학점 
	private String sub_day; //강의 요일 
	private String sub_time; // 강의 시간 
	private String sub_class; //강의실 
	
	public SubjectVO(int sub_code, String sub_name, int sub_level, int sub_credit, String sub_day, String sub_time,
			String sub_class) {
		super();
		this.sub_code = sub_code;
		this.sub_name = sub_name;
		this.sub_level = sub_level;
		this.sub_credit = sub_credit;
		this.sub_day = sub_day;
		this.sub_time = sub_time;
		this.sub_class = sub_class;
	}

	public SubjectVO() {
		// TODO Auto-generated constructor stub
	}

	public int getSub_code() {
		return sub_code;
	}

	public void setSub_code(int sub_code) {
		this.sub_code = sub_code;
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public int getSub_level() {
		return sub_level;
	}

	public void setSub_level(int sub_level) {
		this.sub_level = sub_level;
	}

	public int getSub_credit() {
		return sub_credit;
	}

	public void setSub_credit(int sub_credit) {
		this.sub_credit = sub_credit;
	}

	public String getSub_day() {
		return sub_day;
	}

	public void setSub_day(String sub_day) {
		this.sub_day = sub_day;
	}

	public String getSub_time() {
		return sub_time;
	}

	public void setSub_time(String sub_time) {
		this.sub_time = sub_time;
	}

	public String getSub_class() {
		return sub_class;
	}

	public void setSub_class(String sub_class) {
		this.sub_class = sub_class;
	}

	@Override
	public String toString() {
		return "SubjectVO [sub_code=" + sub_code + ", sub_name=" + sub_name + ", sub_level=" + sub_level
				+ ", sub_credit=" + sub_credit + ", sub_day=" + sub_day + ", sub_time=" + sub_time + ", sub_class="
				+ sub_class + "]";
	}
	
	
	
	
	
}
