package kr.co.eodeatzy.business;

import lombok.Data;

@Data
public class businessDTO {
	// 사업자 정보 조회-수정
	private String u_b_id;
	private String u_b_name;
	private String u_b_pw;
	private String u_b_number;
	private String u_b_email;
	private int u_b_access;
	private String u_b_join_dttm;
	
	// 메뉴 정보 조회-수정
	private String u_s_id;
	private int m_id;
	private String m_name;
	private double m_price;
	private int m_stock;
	private int m_ltime;
	private int m_state;
	
	// 가게 정보 조회-수정	
	private String s_regi_num;
	private String s_name;
	private String s_number;
	private int c_id;
	private int s_state;
	private int s_time;
	private String u_b_img_upload;
	private String s_desc;
	
	// 주문 확인
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
	
	// 주문 확인 메모
	private String p_memo;
	private String p_lastdate;

}
