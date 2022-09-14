package kr.co.eodeatzy.mypageU;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class mypageUDAOImpl implements mypageUDAO {

	@Autowired	
	private SqlSession session;
	private String namespace = "kr.co.eodeatzy.mypageMapper";
	
	@Override
	public userInfoDTO userInfo(String u_p_id) throws Exception {
		return session.selectOne(namespace + ".userInfo",u_p_id);
	}

	@Override
	public int update_u_info(userInfoDTO userInfoDTO) throws Exception {
		return session.update(namespace + ".update_u_info", userInfoDTO);
	}

	@Override
	public int u_unregister(String u_p_id) throws Exception {
		return session.update(namespace + ".u_unregister" , u_p_id);
	}
	@Override
	public List<userAddrDTO> u_Addr_List(String u_p_id) throws Exception {
		return session.selectList(namespace + ".u_Addr_List", u_p_id);
	}

	@Override
	public int update_uAddr(userAddrDTO userAddrDTO) throws Exception {
		return session.update(namespace + ".update_uAddr", userAddrDTO);
	}

	@Override
	public int delete_uAddr(userAddrDTO userAddrDTO) throws Exception {
		return session.delete(namespace + ".delete_uAddr", userAddrDTO);
	}
	

}
