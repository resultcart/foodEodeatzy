package kr.co.eodeatzy.registerbussi;

public interface registerB_DAO {

//사업자 정보 입력
	public int insertBussijoin(registerB_DTO regibDTO)throws Exception;
	
	//사업자 id중복 확인
	public int idCheck(String u_b_id)throws Exception;
}
