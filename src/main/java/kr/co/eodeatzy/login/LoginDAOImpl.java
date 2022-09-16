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
	public Map busi_Login(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".busi_Login", map);
	}
	
	
	
}
