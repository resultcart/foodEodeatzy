package kr.co.eodeatzy.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class mainServiceImpl implements mainService{

	@Autowired
	private mainDAO dao;
	
	@Override
	public u_Addr_OneDTO u_Addr_One(String u_p_id) {
		// TODO Auto-generated method stub
		return dao.u_Addr_One(u_p_id);
	}

}
