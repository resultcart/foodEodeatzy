package kr.co.eodeatzy.payment;

import lombok.Data;

@Data
public class pMemoDTO {
	//사용자 주문 메모
	private String u_s_id;
	private String u_p_id;
	private String p_memo;
}
