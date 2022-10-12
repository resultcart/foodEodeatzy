package kr.co.eodeatzy.payment;

import lombok.Data;

@Data
public class storeAddressDTO {
	//사업장 주소 
	private String u_s_id;
	private String u_s_address;
	
	private pMemoDTO pMemoDTO; //쿼리로 조인할 dto
}
