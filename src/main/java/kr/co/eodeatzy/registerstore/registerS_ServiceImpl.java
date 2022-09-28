package kr.co.eodeatzy.registerstore;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class registerS_ServiceImpl implements registerS_Service{

	@Autowired
	registerS_DAO dao;
	
	@Override
	public int insertStore(registerS_DTO regisDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertStore(regisDTO);
	}

	@Override
	public int storeCheck(String u_s_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.storeCheck(u_s_id);
	}

	
}
