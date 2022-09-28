package kr.co.eodeatzy.cart;

import lombok.Data;

@Data
public class menuDTO {
	private int m_id;
	private String u_s_id;
	private String m_name;
	private int m_price;
	private int m_stock;
	private int m_ltime;
	private int m_state;
	
}
