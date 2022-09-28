package kr.co.eodeatzy.main;

import lombok.Data;

@Data
public class store_typeDTO {

	// 홈에서 가게정보 바로보기 tb_store
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
