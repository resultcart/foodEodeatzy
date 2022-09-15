package kr.co.eodeatzy.main;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mainDAOImpl implements mainDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.eodeatzy.u_addr_oneMapper";
	
	@Override
	public u_Addr_OneDTO u_Addr_One(String u_p_id) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".u_Addr_one", u_p_id);
	}

}
