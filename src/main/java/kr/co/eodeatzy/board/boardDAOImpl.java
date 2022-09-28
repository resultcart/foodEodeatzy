package kr.co.eodeatzy.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import kr.co.eodeatzy.manage.comboDTO;

@Repository
public class boardDAOImpl implements boardDAO{

	@Autowired
	SqlSession sqlsession;
	
	private static final String namespace = "kr.co.eodeatzy.boardMapper";

	@Override
	public List<comboDTO> comboList(String cb_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".comboList",cb_id);
	}
	
	@Override
	public List<boardBDTO> noticeSelectList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".noticeSelectList");
	}
	
	@Override
	public boardBDTO noticeSelect(int b_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectOne(namespace+".noticeSelect",b_id);
	}

	@Override
	public int noticeInsert(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".noticeInsert",boardBDTO);
	}

	@Override
	public int noticeUpdate(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".noticeUpdate",boardBDTO);
	}

	@Override
	public int noticeDelete(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".noticeDelete",boardBDTO);
	}

	@Override
	public List<boardBDTO> boardSelectList() throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".boardSelectList");
	}

	@Override
	public int boardInsert(boardBDTO boardBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".boardInsert", boardBDTO);
	}

	@Override
	public List<commentBDTO> commentSelectList(int b_id) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.selectList(namespace+".commentSelectList", b_id);
	}

	@Override
	public int commentInsert(commentBDTO commentBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.insert(namespace+".commentInsert", commentBDTO);
	}

	@Override
	public int commentUpdate(commentBDTO commentBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.update(namespace+".commentUpdate", commentBDTO);
	}

	@Override
	public int commentDelete(commentBDTO commentBDTO) throws Exception {
		// TODO Auto-generated method stub
		return sqlsession.delete(namespace+".commentDelete", commentBDTO);
	}
}
