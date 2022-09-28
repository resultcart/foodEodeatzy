package kr.co.eodeatzy.cart;

import java.util.List;

public interface cartDAO {

	//장바구니 조회
	public List<cartDTO> sel_cartList(String u_s_id) throws Exception;
	
	//장바구니 추가
	public int ins_cartList(cartDTO cartdto) throws Exception;
	
	//장바구니 수정
	
	
	//장바구니 삭제
	public int del_cartList(int m_id) throws Exception;
}
