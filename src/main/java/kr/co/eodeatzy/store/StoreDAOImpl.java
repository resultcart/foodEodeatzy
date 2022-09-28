package kr.co.eodeatzy.store;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDAOImpl implements StoreDAO {

	@Autowired
	private SqlSession sqlSession;
	static final String namespace = "kr.co.eodeatzy.storeMapper";
	
	//가게검색
	@Override
	public List<StoreDTO> store_info(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+ ".store_info", s_name);
	}
	
	//가게 상세정보 
	@Override
	public StoreDTO store_info_detail(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+ ".store_info_detail", u_s_id);
	}

	//가게별 메뉴 리스트 
	@Override
	public List<storeMenuDTO> menu_list(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+ ".menu_list", u_s_id);
	}

}
