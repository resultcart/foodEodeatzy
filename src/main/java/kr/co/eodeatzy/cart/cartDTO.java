package kr.co.eodeatzy.cart;

import lombok.Data;

@Data
public class cartDTO {
	private String u_p_id;
	private String u_s_id;
	private int m_id;
	private int ct_count;
	
	private menuDTO menuDTO; //쿼리로 조인할 dto
}
