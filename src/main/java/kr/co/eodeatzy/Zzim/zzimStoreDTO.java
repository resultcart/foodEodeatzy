package kr.co.eodeatzy.Zzim;

public class zzimStoreDTO{ 
	private String u_p_id;
	private String u_s_id; 
	private String s_name;
	private String s_number;
	private int s_state;
	private int s_time;
	
	
	@Override
	public String toString() {
		return "StoreDTO [u_p_id=" + u_p_id + ", u_s_id=" + u_s_id + ", s_name=" + s_name + ", s_number=" + s_number
				+ ", s_state=" + s_state + ", s_time=" + s_time + "]";
	}
	
	
	
	public String getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(String u_p_id) {
		this.u_p_id = u_p_id;
	}
	public String getU_s_id() {
		return u_s_id;
	}
	public void setU_s_id(String u_s_id) {
		this.u_s_id = u_s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_number() {
		return s_number;
	}
	public void setS_number(String s_number) {
		this.s_number = s_number;
	}
	public int getS_state() {
		return s_state;
	}
	public void setS_state(int s_state) {
		this.s_state = s_state;
	}
	public int getS_time() {
		return s_time;
	}
	public void setS_time(int s_time) {
		this.s_time = s_time;
	}
}
