package kr.co.eodeatzy.business;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

public interface businessDAO {
	
	// 1-1) 사업자 정보 조회
	public List<businessDTO> businessList() throws Exception;
	
	// 1-2) 사업자 정보 수정
	public int businessUpdate(Map<String, Object> buupmap) throws Exception;
	
	// 2-1) 메뉴 정보 조회
	public List<businessDTO> selectmenu() throws Exception;
	
	// 2-2) 메뉴 정보 수정
	public int updatemenu(Map<String, Object> upmap) throws Exception; 
	
	// 2-3) 메뉴 삭제
	public int menudelete(Map<String, Object> deleteMenumap) throws Exception;
	
	// 2-4) 메뉴 상세 조회
	public Map menudetail(Map<String, Object> demap) throws Exception;
	
	// 2-5) 메뉴 추가
	public int insertmenu(Map<String, Object> inmap) throws Exception; 
	
	// 3-1) 가게 정보 조회
	public List<businessDTO> storeList() throws Exception;
	
	// 3-2) 가게 정보 수정
	public int storeNameUpdate(Map<String, Object> stupmap) throws Exception;
	
	// 4-1) 주문 확인
	public List<businessDTO> orderCheck() throws Exception;
	
	// 4-2) 주문 확인 상세
	public List<businessDTO> orderdetail(String o_number) throws Exception;
	
	// 4-3) 고객 메모
	public Map orderMemo(Map<String, Object> memap) throws Exception;
	
	// 4-4) 고객 메모 수정 
	public int updateMemo(Map<String, Object> upmemap) throws Exception;


}
