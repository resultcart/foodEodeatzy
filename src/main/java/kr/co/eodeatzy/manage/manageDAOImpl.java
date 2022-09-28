package kr.co.eodeatzy.manage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class manageDAOImpl implements manageDAO {
	
	@Autowired
	SqlSession sqlsession;
	
	private static final String namespace = "kr.co.eodeatzy.manageMapper";
	
	@Override
	public List<userPDTO> userPList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbUserPSelect");
	}

	@Override
	public List<userPAdresDTO> tbUserPAdresList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbUserPAdresSelect");
	}

	@Override
	public List<userBDTO> tbUserbList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbUserbSelect");
	}

	@Override
	public List<storeDTO> tbStoreList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbStoreSelect");
	}

	@Override
	public List<storeAdresDTO> tbStoreAdresList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbStoreAdresSelect");
	}

	@Override
	public List<zzimDTO> tbZzimList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbZzimSelect");
	}

	@Override
	public List<orderDTO> tbOrderList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbOrderSelect");
	}

	@Override
	public List<orderDetailDTO> tbOrderDtlList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbOrderDtlSelect");
	}

	@Override
	public List<menuDTO> tbMenuList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbMenuSelect");
	}

	@Override
	public List<categoryDTO> tbCateList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbCateSelect");
	}

	@Override
	public List<cartDTO> tbCartList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbCartSelect");
	}

	@Override
	public List<boardDTO> tbBoardList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbBoardSelect");
	}

	@Override
	public List<commentDTO> tbCmtList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".tbCmtSelect");
	}

	@Override
	public List<comboDTO> comboList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace + ".comboList");
	}
	
	@Override
	public userPDTO userPListOne(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".tbUserPSelectOne", u_p_id);
	}

	@Override
	public boardDTO tbBoardListOne(inputDTO inputDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace + ".tbBoardSelectOne");
	}

	@Override
	public int tbBoardInsert(boardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".tbBoardInsert", boardDTO);
	}

	@Override
	public int tbComboInsert(comboDTO comboDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".tbComboInsert", comboDTO);
	}



	

}
