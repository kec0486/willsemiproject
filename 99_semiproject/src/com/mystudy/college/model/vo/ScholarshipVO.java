package com.mystudy.college.model.vo;

public class ScholarshipVO {
	private int sch_num;
	private String sch_name;
	private int sch_cost;
	private int st_id;
	
	public ScholarshipVO(int sch_num, String sch_name, int sch_cost, int st_id) {
		super();
		this.sch_num = sch_num;
		this.sch_name = sch_name;
		this.sch_cost = sch_cost;
		this.st_id = st_id;
	}

	public int getSch_num() {
		return sch_num;
	}

	public void setSch_num(int sch_num) {
		this.sch_num = sch_num;
	}

	public String getSch_name() {
		return sch_name;
	}

	public void setSch_name(String sch_name) {
		this.sch_name = sch_name;
	}

	public int getSch_cost() {
		return sch_cost;
	}

	public void setSch_cost(int sch_cost) {
		this.sch_cost = sch_cost;
	}

	public int getSt_id() {
		return st_id;
	}

	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}

	@Override
	public String toString() {
		return "ScholarshipVO [sch_num=" + sch_num + ", sch_name=" + sch_name + ", sch_cost=" + sch_cost + ", st_id="
				+ st_id + "]";
	}
	
	
	
	
	
}
