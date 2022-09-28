package kr.co.eodeatzy.manage;

public class storeDTO{

	private String u_s_id;
	private String u_b_id;
	private String s_regi_num;
	private String s_name;
	private String s_number;
	private int c_id;
	private int s_state;
	private int s_time;
	private String u_b_img_upload;
	private String s_desc;
	
	public String getU_s_id() {
		return u_s_id;
	}
	public void setU_s_id(String u_s_id) {
		this.u_s_id = u_s_id;
	}
	public String getU_b_id() {
		return u_b_id;
	}
	public void setU_b_id(String u_b_id) {
		this.u_b_id = u_b_id;
	}
	public String getS_regi_num() {
		return s_regi_num;
	}
	public void setS_regi_num(String s_regi_num) {
		this.s_regi_num = s_regi_num;
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
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
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
	public String getU_b_img_upload() {
		return u_b_img_upload;
	}
	public void setU_b_img_upload(String u_b_img_upload) {
		this.u_b_img_upload = u_b_img_upload;
	}
	public String getS_desc() {
		return s_desc;
	}
	public void setS_desc(String s_desc) {
		this.s_desc = s_desc;
	}
	@Override
	public String toString() {
		return "storeDTO [u_s_id=" + u_s_id + ", u_b_id=" + u_b_id + ", s_regi_num=" + s_regi_num + ", s_name=" + s_name
				+ ", s_number=" + s_number + ", c_id=" + c_id + ", s_state=" + s_state + ", s_time=" + s_time
				+ ", u_b_img_upload=" + u_b_img_upload + ", s_desc=" + s_desc + "]";
	}
	
	
	
}


