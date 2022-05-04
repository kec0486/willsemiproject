package com.mystudy.college.model.vo;

public class LectureVO {
	 private int sub_code; //과목 코드
	 private int pro_id; //교수 아이디 

	public int getSub_code() {
		return sub_code;
	}

	public void setSub_code(int sub_code) {
		this.sub_code = sub_code;
	}

	public int getPro_id() {
		return pro_id;
	}

	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}

	public LectureVO(int sub_code, int pro_id) {
		super();
		this.sub_code = sub_code;
		this.pro_id = pro_id;
	}

	@Override
	public String toString() {
		return "LectureVO [sub_code=" + sub_code + ", pro_id=" + pro_id + "]";
	}
	 
	 
}
