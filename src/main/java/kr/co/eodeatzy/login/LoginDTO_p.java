package kr.co.eodeatzy.login;

import lombok.Data;

@Data
public class LoginDTO_p {
	
	// tb_user_p
	private String u_p_id;
	private String u_p_pw;
	private String u_p_name;
	private String u_p_regi_num;
	private String u_p_number;
	private String u_p_email;
	private int u_p_access;
	private int u_p_ad_yn;
	private int u_p_ad_media;
	private String 	u_p_join_dttm;
	private String 	u_p_login_dttm;
	private String 	u_p_logout_dttm;
	
}