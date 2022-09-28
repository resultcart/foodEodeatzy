package kr.co.eodeatzy.registerstore;

public interface registerS_DAO {
//사업장 정보 등록
	public int insertStore(registerS_DTO regisDTO)throws Exception;
	
	//가게 id중복 확인
		public int storeCheck(String u_s_id)throws Exception;
}
