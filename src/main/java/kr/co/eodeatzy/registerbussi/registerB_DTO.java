/*사업자 등록
 * u_b_id varchar(15) PK 
u_b_name varchar(30) 
U_B_PW varchar(15) 
u_b_number varchar(15) 
u_b_email varchar(30) 
U_B_ACCESS int


 */
package kr.co.eodeatzy.registerbussi;

import lombok.Data;

@Data
public class registerB_DTO {

	private String u_b_id;
	private String u_b_name;
	private String u_b_pw;
	private String u_b_number;
	private String u_b_email;
	private int u_b_access;
	
	
}
