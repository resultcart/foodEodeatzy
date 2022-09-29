package kr.co.eodeatzy.login;

import java.util.Map;

public interface LoginDAO {
	
	// 개인 로그인
	public LoginDTO_p user_login(Map<String, Object> map);

	// 개인 로그인 시간 업데이트
	public int user_logintime(String u_p_id);

	// 개인 로그아웃 시간 업데이트
	public int user_logouttime(String u_p_id);
	
	// 사업자 로그인
	public LoginDTO_b busi_Login(Map<String, Object> map);
	
	// 개인 id 찾기
	public String find_ID_U(Map<String, Object> map);
	
	// 사업자 id 찾기
	public String find_ID_B(Map<String, Object> map);

	// 개인 pw 찾기
	public String find_PW_U(Map<String, Object> map);
	
	// 사업자 pw 찾기
	public String find_PW_B(Map<String, Object> map);
	
	// 회원가입
	public void ins_mem_u(ins_mem_uDTO insmemuDTO) throws Exception;
	
	//개인 id중복 확인
	public int upidCheck(String u_p_id)throws Exception;

}
