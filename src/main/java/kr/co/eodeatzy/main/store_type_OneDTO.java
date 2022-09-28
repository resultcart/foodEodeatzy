package kr.co.eodeatzy.main;

import lombok.Data;

@Data
public class store_type_OneDTO {

	// s_name 누르면 가게 메뉴 보러가기 tb_menu
	private String u_s_id;
	private String m_name;
	private String m_price;
	private int m_stock;
	private int m_ltime;
	private int m_state;
	private String s_name;
}

