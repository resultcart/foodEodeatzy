/*
	// 홈에서 카테고리 보기 tb_menu => 가게 메인페이지 들어가서 메뉴 보기
	private int m_id;
	private String u_s_id;
	private String m_name;
	private String m_price;
	private int m_stock;
	private int m_ltime;
	private int m_state;
 */
package kr.co.eodeatzy.main;

import lombok.Data;

@Data
public class categoryDTO {

	// 홈에서 카테고리 보기 tb_category
	private int c_id;
	private String c_name;
	private int c_use;

	
}
