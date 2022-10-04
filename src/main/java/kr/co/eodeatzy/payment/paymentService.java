package kr.co.eodeatzy.payment;

import java.util.List;

import kr.co.eodeatzy.cart.cartDTO;

public interface paymentService {
	
	//결제하기
	public List<cartDTO> payList(String u_s_id) throws Exception;
	
	//결제-가게정보
	public orderDTO store_info(String u_s_id) throws Exception;
	
	//결제-상세내역
	public List<cartDTO> orderOne(String u_s_id) throws Exception;
	
	//주문내역목록(개인/사업자(블랙컨슈머 메모))
	public storeAddressDTO orderlist(String u_s_id) throws Exception;
	
	//주문상세내역
	public List<cartDTO> orderdetail(String u_s_id) throws Exception;

}
