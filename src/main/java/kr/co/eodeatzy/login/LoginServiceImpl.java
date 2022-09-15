package kr.co.eodeatzy.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired 
	private LoginDAO dao;

	// 개인 로그인
	@Override
	public Map user_login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.user_login(map);
	}

	// 사업자 로그인
	@Override
	public Map busi_Login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.busi_Login(map);
	}
	
	// id 찾기
	
	// pw 찾기


	

}
