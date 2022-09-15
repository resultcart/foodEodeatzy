/*
개인 로그인 변수
U_P_ID varchar(15)
U_P_PW varchar(15) 
U_P_NAME varchar(10) 
U_P_REGI_NUM varchar(15) 
U_P_NUMBER varchar(15) 
U_P_EMAIL varchar(30) 
U_P_ACCESS int 
U_P_AD_YN int 
U_P_AD_MEDIA int 
U_P_DESC varchar(50) 
U_P_JOIN_DTTM datetime 
U_P_LOGIN_DTTM datetime 
U_P_LOGOUT_DTTM datetime

사업자 로그인 변수
U_B_ID varchar(15) PK 
U_B_NAME varchar(30) 
U_B_PW varchar(15) 
U_B_NUMBER varchar(15) 
U_B_EMAIL varchar(30) 
U_B_ACCESS int 
U_B_JOIN_DTTM datetime 
U_B_LOGIN_DTTM datetime 
U_B_LOGOUT_DTTM datetime
 */

package kr.co.eodeatzy.login;

import lombok.Data;

@Data
public class LoginDTO {
	
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
	private String 	u_p_desc;
	private String 	u_p_join_dttm;
	private String 	u_p_login_dttm;
	private String 	u_p_logout_dttm;
	
	// tb_user_b
	private String u_b_id;
	private String u_b_name;
	private String u_b_pw;
	private String u_b_number;
	private String u_b_email;
	private int u_b_access;
	private String u_b_join_dttm;
	private String u_b_login_dttm;
	private String u_b_logout_dttm;
}