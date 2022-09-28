package kr.co.eodeatzy.registerbussi;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class registerB_DAOImpl implements registerB_DAO{

	@Autowired
	private SqlSession sqlsession;
	
	private static final String nameSpace = "kr.co.eodeatzy.registerMapper";
	
	@Override
	public int insertBussijoin(registerB_DTO regibDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(nameSpace + ".insertBussijoin", regibDTO);
	}

	@Override
	public int idCheck(String u_b_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(nameSpace+".idCheck", u_b_id);
	}

}
