package kr.co.eodeatzy.mypageU;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class mypageUServiceImpl implements mypageUService {

	@Inject
	mypageUDAO dao;
	
	@Override
	public userInfoDTO userInfo(String u_p_id) throws Exception {
		return dao.userInfo(u_p_id);
	}

	@Override
	public int update_u_info(userInfoDTO userInfoDTO) throws Exception {
		return dao.update_u_info(userInfoDTO);
	}

	@Override
	public int u_unregister(String u_p_id) throws Exception {
		return dao.u_unregister(u_p_id);
	}

}
