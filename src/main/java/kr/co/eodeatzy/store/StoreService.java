package kr.co.eodeatzy.store;

import java.util.List;

public interface StoreService {
		
	//가게 검색(조회)
	public List<StoreDTO> store_info(String s_name) throws Exception;

	//가게 상세정보/메모 조회
	public StoreDTO store_info_detail(String u_s_id) throws Exception;
	
	//가게 메뉴 조회
	public List<storeMenuDTO> menu_list(String u_s_id) throws Exception;

}
