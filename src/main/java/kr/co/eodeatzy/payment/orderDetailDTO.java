package kr.co.eodeatzy.payment;

import kr.co.eodeatzy.cart.menuDTO;
import lombok.Data;

@Data
public class orderDetailDTO {
	//주문 내역 상세
	private String o_number;
	private int m_id;
	private int o_cnt;
}
