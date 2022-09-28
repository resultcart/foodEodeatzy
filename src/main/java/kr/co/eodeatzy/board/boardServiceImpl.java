package kr.co.eodeatzy.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.co.eodeatzy.manage.comboDTO;

@Service
public class boardServiceImpl implements boardService {

	@Autowired
	boardDAO dao;
	
	@Override
	public List<comboDTO> comboList(String cb_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.comboList(cb_id);
	}
	
	@Override
	public List<boardBDTO> noticeSelectList() throws Exception {
		// TODO Auto-generated method stub
		return dao.noticeSelectList();
	}
	
	@Override
	public boardBDTO noticeSelect(int b_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.noticeSelect(b_id);
	}

	@Override
	public int noticeInsert(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.noticeInsert(boardBDTO);
	}

	@Override
	public int noticeUpdate(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.noticeUpdate(boardBDTO);
	}

	@Override
	public int noticeDelete(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.noticeDelete(boardBDTO);
	}

	@Override
	public List<boardBDTO> boardSelectList() throws Exception {
		// TODO Auto-generated method stub
		return dao.boardSelectList();
	}

	@Override
	public int boardInsert(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.boardInsert(boardBDTO);
	}

	@Override
	public List<commentBDTO> commentSelectList(int b_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.commentSelectList(b_id);
	}
	@Override
	public int commentInsert(commentBDTO commentBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.commentInsert(commentBDTO);
	}

	@Override
	public int commentUpdate(commentBDTO commentBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.commentUpdate(commentBDTO);
	}

	@Override
	public int commentDelete(commentBDTO commentBDTO) throws Exception {
		// TODO Auto-generated method stub
		return dao.commentDelete(commentBDTO);
	}

	

	


	
}
