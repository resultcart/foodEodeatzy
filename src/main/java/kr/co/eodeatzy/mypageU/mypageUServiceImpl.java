package kr.co.eodeatzy.mypageU;

import java.util.List;

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

	//회원주소 조회
	@Override
	public List<userAddrDTO> u_Addr_List(String u_p_id) throws Exception {
		return dao.u_Addr_List(u_p_id);
	}

	@Override
	public int update_uAddr(userAddrDTO userAddrDTO) throws Exception {
		return dao.update_uAddr(userAddrDTO);
	}

	@Override
	public int delete_uAddr(userAddrDTO userAddrDTO) throws Exception {
		return dao.delete_uAddr(userAddrDTO);
	}

	@Override
	public List<userAddrDTO> u_Addr_duplicate(userAddrDTO userAddrDTO) throws Exception {
		return dao.u_Addr_duplicate(userAddrDTO);
	}

	@Override
	public int init_Addr(String u_p_id) throws Exception {
		return dao.init_Addr(u_p_id);
	}

}
