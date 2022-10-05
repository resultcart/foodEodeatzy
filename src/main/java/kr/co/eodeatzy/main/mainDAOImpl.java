package kr.co.eodeatzy.main;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mainDAOImpl implements mainDAO{

	@Autowired
	private SqlSession sqlSession;
	
	private static final String namespace = "kr.co.eodeatzy.mainMapper";
	
	// 개인이용자 주소보기
	@Override
	public u_Addr_OneDTO u_Addr_One(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".u_Addr_One", u_p_id);
	}
	
	// 사업자 주소보기
	@Override
	public b_Addr_OneDTO b_Addr_One(String u_b_id)  throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".b_Addr_One", u_b_id);
	}
	
	// 공지사항 최근하나 조회
	@Override
	public notice_OneDTO notice_One() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".notice_One");
	}

	// 카테고리 조회
	@Override
	public List<categoryDTO> category() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".category");
	}
	
	//홈에서 가게조회
	@Override
	public List<store_typeDTO> store_type() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".store_type");
	}
	
	// 카테고리 누르면 해당하는 c_id의 가게정보 보여주기
	@Override
	public List<category_OneDTO> category_One(int c_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace + ".category_One", c_id);
	}

	// 카테고리 조회시 해당하는 c_name가져오기 join
	@Override
	public String category_Name(int c_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace + ".category_Name",c_id);
	}

}
