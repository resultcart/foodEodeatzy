package kr.co.eodeatzy.manage;

public class userPDTO{
 
	private String u_p_id;
	private String u_p_pw;	
	private String u_p_name;	
	private String u_p_regi_num;	
	private String u_p_number;	
	private String u_p_email;	
	private int u_p_access;	
	private int u_p_ad_yn;	
	private int u_p_ad_media;	
	private String u_p_desc;	
	private String u_p_join_dttm;	
	private String u_p_login_dttm;	
	private String u_p_logout_dttm;
	
	public String getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(String u_p_id) {
		this.u_p_id = u_p_id;
	}
	public String getU_p_pw() {
		return u_p_pw;
	}
	public void setU_p_pw(String u_p_pw) {
		this.u_p_pw = u_p_pw;
	}
	public String getU_p_name() {
		return u_p_name;
	}
	public void setU_p_name(String u_p_name) {
		this.u_p_name = u_p_name;
	}
	public String getU_p_regi_num() {
		return u_p_regi_num;
	}
	public void setU_p_regi_num(String u_p_regi_num) {
		this.u_p_regi_num = u_p_regi_num;
	}
	public String getU_p_number() {
		return u_p_number;
	}
	public void setU_p_number(String u_p_number) {
		this.u_p_number = u_p_number;
	}
	public String getU_p_email() {
		return u_p_email;
	}
	public void setU_p_email(String u_p_email) {
		this.u_p_email = u_p_email;
	}
	public int getU_p_access() {
		return u_p_access;
	}
	public void setU_p_access(int u_p_access) {
		this.u_p_access = u_p_access;
	}
	public int getU_p_ad_yn() {
		return u_p_ad_yn;
	}
	public void setU_p_ad_yn(int u_p_ad_yn) {
		this.u_p_ad_yn = u_p_ad_yn;
	}
	public int getU_p_ad_media() {
		return u_p_ad_media;
	}
	public void setU_p_ad_media(int u_p_ad_media) {
		this.u_p_ad_media = u_p_ad_media;
	}
	public String getU_p_desc() {
		return u_p_desc;
	}
	public void setU_p_desc(String u_p_desc) {
		this.u_p_desc = u_p_desc;
	}
	public String getU_p_join_dttm() {
		return u_p_join_dttm;
	}
	public void setU_p_join_dttm(String u_p_join_dttm) {
		this.u_p_join_dttm = u_p_join_dttm;
	}
	public String getU_p_login_dttm() {
		return u_p_login_dttm;
	}
	public void setU_p_login_dttm(String u_p_login_dttm) {
		this.u_p_login_dttm = u_p_login_dttm;
	}
	public String getU_p_logout_dttm() {
		return u_p_logout_dttm;
	}
	public void setU_p_logout_dttm(String u_p_logout_dttm) {
		this.u_p_logout_dttm = u_p_logout_dttm;
	}
	@Override
	public String toString() {
		return "userPDTO [u_p_id=" + u_p_id + ", u_p_pw=" + u_p_pw + ", u_p_name=" + u_p_name + ", u_p_regi_num="
				+ u_p_regi_num + ", u_p_number=" + u_p_number + ", u_p_email=" + u_p_email + ", u_p_access="
				+ u_p_access + ", u_p_ad_yn=" + u_p_ad_yn + ", u_p_ad_media=" + u_p_ad_media + ", u_p_desc=" + u_p_desc
				+ ", u_p_join_dttm=" + u_p_join_dttm + ", u_p_login_dttm=" + u_p_login_dttm + ", u_p_logout_dttm="
				+ u_p_logout_dttm + "]";
	}
	
	
	
}


