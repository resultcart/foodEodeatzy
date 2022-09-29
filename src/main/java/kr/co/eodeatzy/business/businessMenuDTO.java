package kr.co.eodeatzy.business;

import lombok.Data;

@Data
public class businessMenuDTO {
	// 메뉴 정보 조회-수정
	private String u_b_id;
	private String u_s_id;
	private int m_id;
	private String m_name;
	private double m_price;
	private int m_stock;
	private int m_ltime;
	private int m_state;
	
}
