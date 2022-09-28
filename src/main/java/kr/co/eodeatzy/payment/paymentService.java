package kr.co.eodeatzy.payment;

import java.util.List;

import kr.co.eodeatzy.cart.cartDTO;

public interface paymentService {
	
	//결제하기
	public List<cartDTO> payList(String u_s_id) throws Exception;
	
	//결제-가게정보
	public orderDTO store_info(String u_s_id) throws Exception;

}
