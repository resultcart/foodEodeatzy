package kr.co.eodeatzy.emp;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

@Service
public class empServiceImpl implements empService {

	@Inject
	empDAO dao;

	
	@Override
	public int empcount() throws Exception {
		return dao.empcount();
	}

}
