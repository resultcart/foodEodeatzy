package kr.co.eodeatzy.store;

import lombok.Data;

@Data
public class StoreDTO {
	//가게 검색-조회
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
