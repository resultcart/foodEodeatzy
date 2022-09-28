/*
 * U_S_ID varchar(15) PK 
U_B_ID varchar(15) 
s_regi_num varchar(15) 
s_name varchar(15) 
s_number varchar(15) 
C_ID int 
s_state int 
s_time int 
u_b_img_upload varchar(30) 
s_desc varc
 */

package kr.co.eodeatzy.registerstore;

import lombok.Data;

@Data

public class registerS_DTO {

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
}
