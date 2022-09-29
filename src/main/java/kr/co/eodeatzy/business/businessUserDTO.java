package kr.co.eodeatzy.business;

import lombok.Data;

@Data
public class businessUserDTO {
	// 사업자 정보 조회-수정
	private String u_b_id;
	private String u_b_name;
	private String u_b_pw;
	private String u_b_number;
	private String u_b_email;
	private int u_b_access;
	private String u_b_join_dttm;
	
}
