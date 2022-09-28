package kr.co.eodeatzy.store;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StoreServiceImpl implements StoreService{

	@Inject
	StoreDAO dao;

	//가게 검색
	@Override
	public List<StoreDTO> store_info(String s_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.store_info(s_name);
	}

	//가게 상세정보/메모 조회
	@Override
	public StoreDTO store_info_detail(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.store_info_detail(u_s_id);
	}

	//가게별 메뉴 리스트 
	@Override
	public List<storeMenuDTO> menu_list(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.menu_list(u_s_id);
	}

}
