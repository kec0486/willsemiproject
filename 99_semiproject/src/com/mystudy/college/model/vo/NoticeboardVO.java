package com.mystudy.college.model.vo;

import java.sql.Date;

public class NoticeboardVO {

	private int n_num; //게시물번호 
	private Date n_regdate; //게시일 
	private int ad_id; //관리자 아이디 
	private String n_contents; //내용 
	private int c_id; //학사번호 
	private String n_orgfilename; //원본파일 이름 
	private String n_title; //제목
	private String n_savefilename; //저장된 이름 
	
	public NoticeboardVO() {}
	public NoticeboardVO(int n_num, Date n_regdate, int ad_id, String n_contents, int c_id, String n_orgfilename,
			String n_title, String n_savefilename) {
		super();
		this.n_num = n_num;
		this.n_regdate = n_regdate;
		this.ad_id = ad_id;
		this.n_contents = n_contents;
		this.c_id = c_id;
		this.n_orgfilename = n_orgfilename;
		this.n_title = n_title;
		this.n_savefilename = n_savefilename;
	}
	public int getN_num() {
		return n_num;
	}
	public void setN_num(int n_num) {
		this.n_num = n_num;
	}
	public Date getN_regdate() {
		return n_regdate;
	}
	public void setN_regdate(Date n_regdate) {
		this.n_regdate = n_regdate;
	}
	public int getAd_id() {
		return ad_id;
	}
	public void setAd_id(int ad_id) {
		this.ad_id = ad_id;
	}
	public String getN_contents() {
		return n_contents;
	}
	public void setN_contents(String n_contents) {
		this.n_contents = n_contents;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getN_orgfilename() {
		return n_orgfilename;
	}
	public void setN_orgfilename(String n_orgfilename) {
		this.n_orgfilename = n_orgfilename;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getN_savefilename() {
		return n_savefilename;
	}
	public void setN_savefilename(String n_savefilename) {
		this.n_savefilename = n_savefilename;
	}
	
	@Override
	public String toString() {
		return "NoticeboardVO [n_num=" + n_num + ", n_regdate=" + n_regdate + ", ad_id=" + ad_id + ", n_contents="
				+ n_contents + ", c_id=" + c_id + ", n_orgfilename=" + n_orgfilename + ", n_title=" + n_title
				+ ", n_savefilename=" + n_savefilename + "]";
	}
	
	
}
