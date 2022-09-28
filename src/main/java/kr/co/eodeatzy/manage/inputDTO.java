package kr.co.eodeatzy.manage;

import lombok.Data;

public class inputDTO{

	private int hidden_upId;
	private int b_id;
	private int btnGb;

	public int getBtnGb() {
		return btnGb;
	}

	public void setBtnGb(int btnGb) {
		this.btnGb = btnGb;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public int getHidden_upId() {
		return hidden_upId;
	}

	public void setHidden_upId(int hidden_upId) {
		this.hidden_upId = hidden_upId;
	}

	@Override
	public String toString() {
		return "inputDTO [hidden_upId=" + hidden_upId + ", b_id=" + b_id + ", btnGb=" + btnGb + ", getBtnGb()="
				+ getBtnGb() + ", getB_id()=" + getB_id() + ", getHidden_upId()=" + getHidden_upId() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
	
}


