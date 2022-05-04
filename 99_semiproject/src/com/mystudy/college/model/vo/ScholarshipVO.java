package com.mystudy.college.model.vo;

public class ScholarshipVO {
	private int sch_num;
	private int st_id;
	private int sch_cost;
	private String sch_name;
	
	public ScholarshipVO(int sch_num, int st_id, int sch_cost, String sch_name) {
		super();
		this.sch_num = sch_num;
		this.st_id = st_id;
		this.sch_cost = sch_cost;
		this.sch_name = sch_name;
	}

	public int getSch_num() {
		return sch_num;
	}

	public void setSch_num(int sch_num) {
		this.sch_num = sch_num;
	}

	public int getSt_id() {
		return st_id;
	}

	public void setSt_id(int st_id) {
		this.st_id = st_id;
	}

	public int getSch_cost() {
		return sch_cost;
	}

	public void setSch_cost(int sch_cost) {
		this.sch_cost = sch_cost;
	}

	public String getSch_name() {
		return sch_name;
	}

	public void setSch_name(String sch_name) {
		this.sch_name = sch_name;
	}

	@Override
	public String toString() {
		return "ScholarshipVO [sch_num=" + sch_num + ", st_id=" + st_id + ", sch_cost=" + sch_cost + ", sch_name="
				+ sch_name + "]";
	}
	
	
	
	
}
