package kr.co.eodeatzy.manage;

public class orderDTO{

	private String o_number;
	private String u_s_id;
	private String u_p_id;
	private double o_cnt_total;
	private double o_amt_total;
	private int o_ltime_total;
	private int o_state;
	private String o_desc;
	private String o_datetime;
	public String getO_number() {
		return o_number;
	}
	public void setO_number(String o_number) {
		this.o_number = o_number;
	}
	public String getU_s_id() {
		return u_s_id;
	}
	public void setU_s_id(String u_s_id) {
		this.u_s_id = u_s_id;
	}
	public String getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(String u_p_id) {
		this.u_p_id = u_p_id;
	}
	public double getO_cnt_total() {
		return o_cnt_total;
	}
	public void setO_cnt_total(double o_cnt_total) {
		this.o_cnt_total = o_cnt_total;
	}
	public double getO_amt_total() {
		return o_amt_total;
	}
	public void setO_amt_total(double o_amt_total) {
		this.o_amt_total = o_amt_total;
	}
	public int getO_ltime_total() {
		return o_ltime_total;
	}
	public void setO_ltime_total(int o_ltime_total) {
		this.o_ltime_total = o_ltime_total;
	}
	public int getO_state() {
		return o_state;
	}
	public void setO_state(int o_state) {
		this.o_state = o_state;
	}
	public String getO_desc() {
		return o_desc;
	}
	public void setO_desc(String o_desc) {
		this.o_desc = o_desc;
	}
	public String getO_datetime() {
		return o_datetime;
	}
	public void setO_datetime(String o_datetime) {
		this.o_datetime = o_datetime;
	}
	@Override
	public String toString() {
		return "orderDTO [o_number=" + o_number + ", u_s_id=" + u_s_id + ", u_p_id=" + u_p_id + ", o_cnt_total="
				+ o_cnt_total + ", o_amt_total=" + o_amt_total + ", o_ltime_total=" + o_ltime_total + ", o_state="
				+ o_state + ", o_desc=" + o_desc + ", o_datetime=" + o_datetime + "]";
	}
	
	
}


