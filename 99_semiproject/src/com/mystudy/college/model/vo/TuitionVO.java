package com.mystudy.college.model.vo;

public class TuitionVO {
	private int tu_tution; //등록금 
	private String tu_state; //등록금 납부 상태 
	private int ma_code; //학과 코드
	
	public TuitionVO(int tu_tution, String tu_state, int ma_code) {
		super();
		this.tu_tution = tu_tution;
		this.tu_state = tu_state;
		this.ma_code = ma_code;
	}

	public int getTu_tution() {
		return tu_tution;
	}

	public void setTu_tution(int tu_tution) {
		this.tu_tution = tu_tution;
	}

	public String getTu_state() {
		return tu_state;
	}

	public void setTu_state(String tu_state) {
		this.tu_state = tu_state;
	}

	public int getMa_code() {
		return ma_code;
	}

	public void setMa_code(int ma_code) {
		this.ma_code = ma_code;
	}

	@Override
	public String toString() {
		return "TuitionVO [tu_tution=" + tu_tution + ", tu_state=" + tu_state + ", ma_code=" + ma_code + "]";
	}
	
	
}
