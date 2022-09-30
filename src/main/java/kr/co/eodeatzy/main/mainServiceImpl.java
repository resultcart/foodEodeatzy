package kr.co.eodeatzy.main;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class mainServiceImpl implements mainService{

	@Autowired
	private mainDAO dao;
	
	// 개인이용자 주소보기
	@Override
	public u_Addr_OneDTO u_Addr_One(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.u_Addr_One(u_p_id);
	}
	// 공지사항 최근하나 조회
	@Override
	public notice_OneDTO notice_One() throws Exception {
		// TODO Auto-generated method stub
		return dao.notice_One();
	}
	
	// 카테고리 조회
	@Override
	public List<categoryDTO> category() throws Exception {
		// TODO Auto-generated method stub
		return dao.category();
	}

	//홈에서 가게조회
	@Override
	public List<store_typeDTO> store_type() throws Exception {
		// TODO Auto-generated method stub
		return dao.store_type();
	}

	// 카테고리 누르면 해당하는 c_id의 가게정보 보여주기
	@Override
	public List<category_OneDTO> category_One(int c_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.category_One(c_id);
	}

	// 카테고리 조회시 해당하는 c_name가져오기 join
	@Override
	public String category_Name(int c_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.category_Name(c_id);
	}
	
	
}
