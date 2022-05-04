package com.mystudy.college.model.vo;

public class AdminAccountVO {
	private int ad_id; //관리자 아이디 
	private String ad_pwd; //관리자 비밀번호
	
	public int getAd_id() {
		return ad_id;
	}
	public void setAd_id(int ad_id) {
		this.ad_id = ad_id;
	}
	public String getAd_pwd() {
		return ad_pwd;
	}
	public void setAd_pwd(String ad_pwd) {
		this.ad_pwd = ad_pwd;
	}
	
	public AdminAccountVO(int ad_id, String ad_pwd) {
		super();
		this.ad_id = ad_id;
		this.ad_pwd = ad_pwd;
	}
	@Override
	public String toString() {
		return "AdminAccountVO [ad_id=" + ad_id + ", ad_pwd=" + ad_pwd + "]";
	}
	
	
	
}
