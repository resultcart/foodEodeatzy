package kr.co.eodeatzy.main;

import lombok.Data;

@Data
public class category_OneDTO {

	// 카테고리 누르면 해당하는 c_id의 가게정보 보여주기 tb_store
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

	private categoryDTO categoryDTO;
} 
