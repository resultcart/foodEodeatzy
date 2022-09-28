package kr.co.eodeatzy.payment;

import lombok.Data;

@Data
public class orderDTO {
	private String o_number;
	private String u_s_id;
	private String u_p_id;
	private int o_cnt_total;
	private int o_amt_total;
	private int o_ltime_total;
	private int o_state;
	private String o_desc;
}
