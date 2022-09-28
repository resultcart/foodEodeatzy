package kr.co.eodeatzy.business;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class businessServiceImpl implements businessService {

	@Autowired
	businessDAO dao;

	// 1-1) 사업자 정보 조회
	@Override
	public List<businessDTO> businessList() throws Exception {
		return dao.businessList();
	}
	
	// 1-2) 사업자 정보 수정
	@Override
	public int businessUpdate(Map<String, Object> buupmap) throws Exception {
		return dao.businessUpdate(buupmap);
	}

	// 2-1) 메뉴 관리 
	@Override
	public List<businessDTO> selectmenu() throws Exception {
		return dao.selectmenu();
	}

	// 2-2) 메뉴 수정
	@Override
	public int updatemenu(Map<String, Object> upmap) throws Exception {
		return dao.updatemenu(upmap);
	}	
	
	// 2-3) 메뉴 삭제
	@Override
	public int menudelete(Map<String, Object> deleteMenumap) throws Exception {
		return dao.menudelete(deleteMenumap);
	}
	
	// 2-4) 메뉴 상세 조회
	@Override
	public Map menudetail(Map<String, Object> demap) throws Exception {
		return dao.menudetail(demap);
	}
	
	// 2-5) 메뉴 추가
	@Override
	public int insertmenu(Map<String, Object> inmap) throws Exception {
		return dao.insertmenu(inmap);
	}


	// 3-1) 가게 정보 조회
	@Override
	public List<businessDTO> storeList() throws Exception {
		return dao.storeList();
	}

	// 3-2) 가게 정보 수정
	@Override
	public int storeNameUpdate(Map<String, Object> stupmap) throws Exception {
		return dao.storeNameUpdate(stupmap);
	}
	
	// 4-1) 주문 확인
	@Override
	public List<businessDTO> orderCheck() throws Exception {
		return dao.orderCheck();
	}
	
	// 4-2) 주문 상세 내역
	@Override
	public List<businessDTO> orderdetail(String o_number) throws Exception {
		return dao.orderdetail(o_number);
	}

	// 4-3) 주문 확인 메모
	@Override
	public Map orderMemo(Map<String, Object> memap) throws Exception {
		return dao.orderMemo(memap);
	}

	// 4-4) 주문 확인 고객 메모 수정
	@Override
	public int updateMemo(Map<String, Object> upmemap) throws Exception {
		return dao.updateMemo(upmemap);
	}

	
	

	

	
	
	
}
