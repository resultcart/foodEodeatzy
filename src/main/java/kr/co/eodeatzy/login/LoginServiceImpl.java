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
	public LoginDTO_p user_login(Map<String, Object> map) {
		return dao.user_login(map);
	}

	// 사업자 로그인
	@Override
	public LoginDTO_b busi_Login(Map<String, Object> map) {
		return dao.busi_Login(map);
	}

	// 개인 id 찾기
	@Override
	public String find_ID_U(Map<String, Object> map) {
		return dao.find_ID_U(map);
	}

	// 사업자 id 찾기
	@Override
	public String find_ID_B(Map<String, Object> map) {
		return dao.find_ID_B(map);
	}

	// 개인 pw 찾기
	@Override
	public String find_PW_U(Map<String, Object> map) {
		return dao.find_PW_U(map);
	}

	@Override
	public String find_PW_B(Map<String, Object> map) {
		return dao.find_PW_B(map);
	}

	// 회원가입
	@Override
	public void ins_mem_u(ins_mem_uDTO insmemuDTO) throws Exception {
		// TODO Auto-generated method stub
		if (insmemuDTO == null) {
			return ;
		}
		
		dao.ins_mem_u(insmemuDTO);
		
	}
	
	//개인 id중복 확인
	@Override
	public int upidCheck(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.upidCheck(u_p_id);
	}
}
