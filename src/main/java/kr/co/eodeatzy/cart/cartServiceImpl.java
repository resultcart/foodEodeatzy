package kr.co.eodeatzy.cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class cartServiceImpl implements cartService{

	@Inject
	cartDAO dao;

	//장바구니 조회
	@Override
	public List<cartDTO> sel_cartList(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.sel_cartList(u_s_id);
	}

	//장바구니 추가
	@Override
	public int ins_cartList(cartDTO cartdto) throws Exception {
		// TODO Auto-generated method stub
		return dao.ins_cartList(cartdto);
	}	
	
	//장바구니 삭제
	@Override
	public int del_cartList(int m_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.del_cartList(m_id);
	}

	

}
