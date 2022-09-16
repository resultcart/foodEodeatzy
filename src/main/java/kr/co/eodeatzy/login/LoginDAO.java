package kr.co.eodeatzy.login;

import java.util.Map;

public interface LoginDAO {
	
	// 개인 로그인
	public LoginDTO_p user_login(Map<String, Object> map);
	
	// 사업자 로그인
	public Map busi_Login(Map<String, Object> map);
	
	// id 찾기
	
	// pw 찾기
}
