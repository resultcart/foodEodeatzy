package kr.co.eodeatzy.business;

import lombok.Data;

@Data
public class businessOrderDTO {		
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
