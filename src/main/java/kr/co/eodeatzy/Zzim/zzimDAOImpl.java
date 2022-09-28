package kr.co.eodeatzy.Zzim;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class zzimDAOImpl implements zzimDAO {
	
	@Autowired
	private SqlSession sqlsession;
	
	private static final String nameSpace = "kr.co.eodeatzy.zzimMapper";

	@Override
	public List<zzimDTO> ListAll(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(nameSpace+".ListAll", u_p_id);
	}

	
	@Override
	public zzimDTO detailzzim(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(nameSpace+".detailzzim", zzimdto);
	}

	@Override
	public int addZzim(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(nameSpace+".addZzim", zzimdto);
	}

	@Override
	public int updatezdesc(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(nameSpace+".updatezdesc", zzimdto);
	}

	@Override
	public int deleteZzim(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.delete(nameSpace+".deleteZzim", zzimdto);
	}

}
