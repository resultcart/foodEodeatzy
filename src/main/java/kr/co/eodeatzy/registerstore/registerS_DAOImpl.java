package kr.co.eodeatzy.registerstore;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class registerS_DAOImpl implements registerS_DAO{
	
	@Autowired
	private SqlSession sqlsession;
	
	private static final String nameSpace = "kr.co.eodeatzy.registerMapper";

	@Override
	public int insertStore(registerS_DTO regisDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(nameSpace + ".insertStore", regisDTO);
	}

	@Override
	public int storeCheck(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(nameSpace +".storeCheck", u_s_id);
	}

}
