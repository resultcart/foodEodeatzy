package kr.co.eodeatzy.mypageU;


public interface mypageUDAO {
	
	//회원정보조회 조회
	public userInfoDTO userInfo(String u_p_id) throws Exception;
	
	//회원정보수정
	public int update_u_info(userInfoDTO userInfoDTO) throws Exception;
	
	//회원탈퇴
	public int u_unregister(String u_p_id) throws Exception;
	
	
	
}
