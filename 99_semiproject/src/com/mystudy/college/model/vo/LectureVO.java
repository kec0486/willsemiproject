package com.mystudy.college.model.vo;



public class LectureVO extends SubjectVO {
	private int pro_id; //교수 아이디 
	private int sub_code; //과목 코드

	
	//private SubjectVO subjectVO; //조인때 사용할 것 
	
	public LectureVO() {
		// TODO Auto-generated constructor stub
	}
	
	

	public LectureVO(int pro_id, int sub_code) {
		this.pro_id = pro_id;
		this.sub_code = sub_code;
	}
	
	

	public int getPro_id() {
		return pro_id;
	}

	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}

	public int getSub_code() {
		return sub_code;
	}

	public void setSub_code(int sub_code) {
		this.sub_code = sub_code;
	}



	@Override
	public String toString() {
		return "LectureVO [pro_id=" + pro_id + ", sub_code=" + sub_code + "]";
	}


	
	


	
	
	 
	 
}
