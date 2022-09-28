package kr.co.eodeatzy.store;

import lombok.Data;

@Data
public class storeMenuDTO {
	//가게별 메뉴 리스트
	private String u_s_id;
	private int m_id; 
	private String m_name;
	private int m_price;
	private int m_stock;
	private int m_state;
}
