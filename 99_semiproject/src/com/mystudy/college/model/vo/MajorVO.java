package com.mystudy.college.model.vo;

public class MajorVO {
	private int ma_code; //학과코드
	private String ma_college; //단과대학 
	private String ma_name; //전공이름 
<<<<<<< HEAD
	
=======
	public MajorVO() {}
	public MajorVO(int ma_code, String ma_college, String ma_name) {
		super();
		this.ma_code = ma_code;
		this.ma_college = ma_college;
		this.ma_name = ma_name;
	}

>>>>>>> branch 'master' of https://github.com/kec0486/willsemiproject.git
	public int getMa_code() {
		return ma_code;
	}

	public void setMa_code(int ma_code) {
		this.ma_code = ma_code;
	}
<<<<<<< HEAD
	public String getMa_college() {
		return ma_college;
	}
	public void setMa_college(String ma_college) {
		this.ma_college = ma_college;
	}
=======

	public String getMa_college() {
		return ma_college;
	}

	public void setMa_college(String ma_college) {
		this.ma_college = ma_college;
	}

>>>>>>> branch 'master' of https://github.com/kec0486/willsemiproject.git
	public String getMa_name() {
		return ma_name;
	}

	public void setMa_name(String ma_name) {
		this.ma_name = ma_name;
	}
<<<<<<< HEAD
=======

>>>>>>> branch 'master' of https://github.com/kec0486/willsemiproject.git
	@Override
	public String toString() {
		return "MajorVO [ma_code=" + ma_code + ", ma_college=" + ma_college + ", ma_name=" + ma_name + "]";
	}
	
	
	
	
}
