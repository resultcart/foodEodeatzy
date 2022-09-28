package kr.co.eodeatzy.Zzim;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class zzimServiceImpl implements zzimService{
	
	@Autowired
	zzimDAO dao;
	
	@Override
	public List<zzimDTO> ListAll(String u_p_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.ListAll(u_p_id);
	}

	@Override
	public zzimDTO detailzzim(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return dao.detailzzim(zzimdto);
	}

	@Override
	public int addZzim(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return dao.addZzim(zzimdto);
	}

	@Override
	public int updatezdesc(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updatezdesc(zzimdto);
	}

	@Override
	public int deleteZzim(zzimDTO zzimdto) throws Exception {
		// TODO Auto-generated method stub
		return dao.deleteZzim(zzimdto);
	}


	
}
