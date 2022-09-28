package kr.co.eodeatzy.registerbussi;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class registerB_ServiceImpl implements registerB_Service{

	@Autowired
	registerB_DAO dao;
	
	@Override
	public int insertBussijoin(registerB_DTO regibDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertBussijoin(regibDTO);
	}

	@Override
	public int idCheck(String u_b_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.idCheck(u_b_id);
	}

}
