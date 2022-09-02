package kr.co.eodeatzy.emp;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class empDaoImpl implements empDAO {
	
	@Inject
	private SqlSession sqlSession;
	private String namespace = "kr.co.eodeatzy.empMapper";
	
	
	@Override
	public int empcount() throws Exception {
		return sqlSession.selectOne(namespace + ".empcount");
	}

}
