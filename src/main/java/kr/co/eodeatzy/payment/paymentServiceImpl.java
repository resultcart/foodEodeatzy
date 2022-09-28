package kr.co.eodeatzy.payment;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.co.eodeatzy.cart.cartDTO;

@Service
public class paymentServiceImpl implements paymentService {
	
	@Inject
	paymentDAO dao;

	//결제하기 
	@Override
	public List<cartDTO> payList(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.payList(u_s_id);
	}

	//결제-가게정보
	@Override
	public orderDTO store_info(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.store_info(u_s_id);
	}
	
	

}
