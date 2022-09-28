package kr.co.eodeatzy.manage;

public class userBDTO{

	private String u_b_id;
	private String u_b_name;
	private String u_b_pw;
	private String u_b_number;
	private String u_b_email;
	private int u_b_access;
	private String u_b_join_dttm;
	private String u_b_login_dttm;
	private String u_b_logout_dttm;
	public String getU_b_id() {
		return u_b_id;
	}
	public void setU_b_id(String u_b_id) {
		this.u_b_id = u_b_id;
	}
	public String getU_b_name() {
		return u_b_name;
	}
	public void setU_b_name(String u_b_name) {
		this.u_b_name = u_b_name;
	}
	public String getU_b_pw() {
		return u_b_pw;
	}
	public void setU_b_pw(String u_b_pw) {
		this.u_b_pw = u_b_pw;
	}
	public String getU_b_number() {
		return u_b_number;
	}
	public void setU_b_number(String u_b_number) {
		this.u_b_number = u_b_number;
	}
	public String getU_b_email() {
		return u_b_email;
	}
	public void setU_b_email(String u_b_email) {
		this.u_b_email = u_b_email;
	}
	public int getU_b_access() {
		return u_b_access;
	}
	public void setU_b_access(int u_b_access) {
		this.u_b_access = u_b_access;
	}
	public String getU_b_join_dttm() {
		return u_b_join_dttm;
	}
	public void setU_b_join_dttm(String u_b_join_dttm) {
		this.u_b_join_dttm = u_b_join_dttm;
	}
	public String getU_b_login_dttm() {
		return u_b_login_dttm;
	}
	public void setU_b_login_dttm(String u_b_login_dttm) {
		this.u_b_login_dttm = u_b_login_dttm;
	}
	public String getU_b_logout_dttm() {
		return u_b_logout_dttm;
	}
	public void setU_b_logout_dttm(String u_b_logout_dttm) {
		this.u_b_logout_dttm = u_b_logout_dttm;
	}
	@Override
	public String toString() {
		return "userBDTO [u_b_id=" + u_b_id + ", u_b_name=" + u_b_name + ", u_b_pw=" + u_b_pw + ", u_b_number="
				+ u_b_number + ", u_b_email=" + u_b_email + ", u_b_access=" + u_b_access + ", u_b_join_dttm="
				+ u_b_join_dttm + ", u_b_login_dttm=" + u_b_login_dttm + ", u_b_logout_dttm=" + u_b_logout_dttm + "]";
	}
	
	
}


