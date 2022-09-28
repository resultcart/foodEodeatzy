package kr.co.eodeatzy.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class cartDAOImpl implements cartDAO {

	@Autowired
	private SqlSession sqlSession;
	static final String namespace = "kr.co.eodeatzy.cartMapper";

	//장바구니 조회
	@Override
	public List<cartDTO> sel_cartList(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace +".sel_cartList", u_s_id);
	}

	//장바구니 추가
	@Override
	public int ins_cartList(cartDTO cartdto) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert(namespace+".ins_cartList", cartdto);
	}
	
	//장바구니 삭제
	@Override
	public int del_cartList(int m_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.delete(namespace+".del_cartList", m_id);
	}


	
	

}
