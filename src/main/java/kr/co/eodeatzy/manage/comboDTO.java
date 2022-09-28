package kr.co.eodeatzy.manage;

import lombok.Data;


public class comboDTO{

	private String cb_id;
	private int cb_num;
	private String cb_name;
	private int cb_use_yn;
	
	public String getCb_id() {
		return cb_id;
	}
	public void setCb_id(String cb_id) {
		this.cb_id = cb_id;
	}
	public int getCb_num() {
		return cb_num;
	}
	public void setCb_num(int cb_num) {
		this.cb_num = cb_num;
	}
	public String getCb_name() {
		return cb_name;
	}
	public void setCb_name(String cb_name) {
		this.cb_name = cb_name;
	}
	public int getCb_use_yn() {
		return cb_use_yn;
	}
	public void setCb_use_yn(int cb_use_yn) {
		this.cb_use_yn = cb_use_yn;
	}
	
	@Override
	public String toString() {
		return "comboDTO [cb_id=" + cb_id + ", cb_num=" + cb_num + ", cb_name=" + cb_name + ", cb_use_yn=" + cb_use_yn
				+ "]";
	}
	
	
	
}


