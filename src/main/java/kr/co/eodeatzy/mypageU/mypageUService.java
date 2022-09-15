package kr.co.eodeatzy.mypageU;

import java.util.List;

public interface mypageUService {
	//회원정보 조회
	public userInfoDTO userInfo(String u_p_id) throws Exception;
	//회원정보 수정
	public int update_u_info(userInfoDTO userInfoDTO) throws Exception;

	//회원 탈퇴
	public int u_unregister(String u_p_id) throws Exception;	
	
	//회원주소 조회
	public List<userAddrDTO> u_Addr_List(String u_p_id) throws Exception;
	
	//회원주소 수정
	public int update_uAddr(userAddrDTO userAddrDTO) throws Exception;	
	
	//회원주소 삭제
	public int delete_uAddr(userAddrDTO userAddrDTO) throws Exception;	

	//회원주소 중복조회
	public List<userAddrDTO> u_Addr_duplicate(userAddrDTO userAddrDTO) throws Exception;		
	
	//회원주소 대표주소 초기화 	
	public int init_Addr(String u_p_id) throws Exception;
}
