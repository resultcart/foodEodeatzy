package kr.co.eodeatzy.board;

import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.eodeatzy.manage.comboDTO;

public interface boardService {
	
	//콤보박스 리스트_전체조회
	public List<comboDTO> comboList(String cb_id) throws Exception;
	
	//공지사항_전체조회
	public List<boardBDTO> noticeSelectList() throws Exception;
	
	//공지사항_단건조회, 제보게시판_단건조회
	public boardBDTO noticeSelect(int b_id) throws Exception;
	
	//공지사항_등록
	public int noticeInsert(boardBDTO boardBDTO) throws Exception;
	
	//공지사항_수정, 제보게시판_수정
	public int noticeUpdate(boardBDTO boardBDTO) throws Exception;
	
	//공지사항_삭제, 제보게시판_삭제
	public int noticeDelete(boardBDTO boardBDTO) throws Exception;
	
	//제보게시판_전체조회
	public List<boardBDTO> boardSelectList() throws Exception;

	//제보게시판_등록
	public int boardInsert(boardBDTO boardBDTO) throws Exception;
	
	//댓글_조회
	public List<commentBDTO> commentSelectList(int b_id) throws Exception;

	//댓글_등록
	public int commentInsert(commentBDTO commentBDTO) throws Exception;
	
	//댓글 수정
	public int commentUpdate(commentBDTO commentBDTO) throws Exception;
	
	//댓글 삭제
	public int commentDelete(commentBDTO commentBDTO) throws Exception;

}
