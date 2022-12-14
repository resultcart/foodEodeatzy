package kr.co.eodeatzy.main;

import java.util.List;
import java.util.Map;

public interface mainDAO {

	// 개인이용자 주소보기
	public u_Addr_OneDTO u_Addr_One(String u_p_id) throws Exception;
	
	// 사업자 주소보기
	public b_Addr_OneDTO b_Addr_One(String u_b_id)  throws Exception; 
	
	// 공지사항 최근하나 조회
	public notice_OneDTO notice_One() throws Exception; 
	
	// 카테고리 조회
	public List <categoryDTO> category() throws Exception; 
	
	// 홈에서 가게조회
	public List <store_typeDTO> store_type() throws Exception;
	
	// 카테고리 누르면 해당하는 c_id의 가게정보 보여주기
	public List <category_OneDTO> category_One(int c_id) throws Exception;
	
	// 카테고리 조회시 해당하는 c_name가져오기 join
	public String  category_Name(int c_id) throws Exception;
	
	
}
