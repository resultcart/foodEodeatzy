package kr.co.eodeatzy.manage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class manageServiceImpl implements manageService{

	@Autowired
	manageDAO dao;

	@Override
	public List<userPDTO> userPList() throws Exception {
		// TODO Auto-generated method stub
		return dao.userPList();
	}

	@Override
	public List<userPAdresDTO> tbUserPAdresList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbUserPAdresList();
	}

	@Override
	public List<userBDTO> tbUserbList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbUserbList();
	}

	@Override
	public List<storeDTO> tbStoreList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbStoreList();
	}

	@Override
	public List<storeAdresDTO> tbStoreAdresList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbStoreAdresList();
	}

	@Override
	public List<zzimDTO> tbZzimList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbZzimList();
	}

	@Override
	public List<orderDTO> tbOrderList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbOrderList();
	}

	@Override
	public List<orderDetailDTO> tbOrderDtlList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbOrderDtlList();
	}

	@Override
	public List<menuDTO> tbMenuList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbMenuList();
	}

	@Override
	public List<categoryDTO> tbCateList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbCateList();
	}

	@Override
	public List<cartDTO> tbCartList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbCartList();
	}

	@Override
	public List<boardDTO> tbBoardList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbBoardList();
	}

	@Override
	public List<commentDTO> tbCmtList() throws Exception {
		// TODO Auto-generated method stub
		return dao.tbCmtList();
	}

	@Override
	public List<comboDTO> comboList() throws Exception {
		// TODO Auto-generated method stub
		return dao.comboList();
	}

	@Override
	public userPDTO userPListOne(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.userPListOne(u_p_id);
	}


	@Override
	public boardDTO tbBoardListOne(inputDTO inputDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.tbBoardListOne(inputDTO);
	}

	@Override
	public int tbBoardInsert(boardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tbComboInsert(comboDTO comboDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
