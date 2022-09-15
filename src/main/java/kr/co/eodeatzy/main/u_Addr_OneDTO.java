package kr.co.eodeatzy.main;

import lombok.Data;

@Data
public class u_Addr_OneDTO {

	// 개인사용자 주소보기 tb_user_p_address
	private String u_p_id;
	private String u_p_add_id;
	private String u_p_address;
	private int u_p_flag;
	
	// 사업자 주소보기 tb_store_address
	private String u_s_id;
	private String u_s_add_id ;
	private String u_s_address;
	private int u_s_flag;
	
}
