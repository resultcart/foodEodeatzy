/*
U_P_ID varchar(15) PK 
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
 */

package kr.co.eodeatzy.login;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ins_mem_uDTO {

	// 개인회원가입
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
	public void setU_p_join_dttm(Timestamp valueOf) {
	}


}