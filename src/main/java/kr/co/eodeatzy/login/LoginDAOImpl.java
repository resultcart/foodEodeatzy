package kr.co.eodeatzy.login;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAOImpl implements LoginDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.eodeatzy.loginMapper";

	@Override
	// 개인 로그인
	public LoginDTO_p user_login(Map<String, Object> map) {
		return sqlSession.selectOne(namespace + ".user_login", map);
	}

	@Override
	public LoginDTO_b busi_Login(Map<String, Object> map) {
		return sqlSession.selectOne(namespace + ".busi_Login", map);
	}

	@Override
	public int user_logintime(String u_p_id) {
		return sqlSession.update(namespace + ".user_logintime", u_p_id);
	}

	@Override
	public int user_logouttime(String u_p_id) {
		return sqlSession.update(namespace + ".user_logouttime", u_p_id);
	}

	@Override
	public String find_ID_U(Map<String, Object> map) {
		return sqlSession.selectOne(namespace + ".find_ID_U", map);
	}

	@Override
	public String find_ID_B(Map<String, Object> map) {
		return sqlSession.selectOne(namespace + ".find_ID_B", map);
	}

	@Override
	public String find_PW_U(Map<String, Object> map) {
		return sqlSession.selectOne(namespace+".find_PW_U", map);
	}

	@Override
	public String find_PW_B(Map<String, Object> map) {
		return sqlSession.selectOne(namespace+".find_PW_B", map);
	}
	
	
	// 회원가입
	@Override
	public void ins_mem_u(ins_mem_uDTO insemeuDTO) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert(namespace + ".ins_mem_u", insemeuDTO);
	}
	
	
}
