package kr.co.eodeatzy.business;

import lombok.Data;

@Data
public class businessOrderDTO {		
	
	// 가게 정보 조회-수정	
	private String u_b_id;
	private String s_regi_num;
	private String s_name;
	private String s_number;
	private int c_id;
	private int s_state;
	private int s_time;
	private String u_b_img_upload;
	private String s_desc;	
	
	// 주문 확인
	private String u_s_id;
	private String o_number;
	private String u_p_id;
	private int o_cnt_total;
	private double o_amt_total;
	private int o_ltime_total;
	private int o_state;
	private String o_desc;
	private String o_datetime;
	
	// 주문 확인 상세
	private String o_cnt;
	private String m_id;
	
	// 주문 확인 메모
	private String p_memo;
	private String p_lastdate;
	

}
