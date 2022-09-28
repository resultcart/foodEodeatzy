package kr.co.eodeatzy.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.eodeatzy.board.boardBDTO;
import kr.co.eodeatzy.board.boardService;
import kr.co.eodeatzy.board.commentBDTO;
import kr.co.eodeatzy.manage.comboDTO;

@Controller
public class boardController {

	@Autowired
	boardService service;
	
	//공지사항 조회화면
	@RequestMapping(value="board/noticeList", method = RequestMethod.GET)
	public String noticeList() throws Exception {
		
		return "noticeList";
	}
	
	//공지사항리스트 조회
	@RequestMapping(value="board/noticeSelectList", method = RequestMethod.GET)
	public ModelAndView noticeSelectList(Model model) throws Exception {
		System.out.println("noticeSelectList!!!!!!!!!!!!!!!");
		ModelAndView mav = new ModelAndView();
		
		List<boardBDTO> noticeList = service.noticeSelectList();
		mav.addObject("noticeList", noticeList);
		mav.setViewName("noticeList");
		
		return mav;
	}
	
	//공지사항 등록화면
	@RequestMapping(value="board/noticeInsert", method = RequestMethod.GET)
	public String noticeInsert() throws Exception {
		
		return "noticeInsert";
	}
	
	
	//공지사항_등록처리
	@RequestMapping(value = "board/noticeInsert", method = RequestMethod.POST)
	public String noticeInsert(boardBDTO boardBDTO) throws Exception {

		boardBDTO.setB_writer("root");
		boardBDTO.setB_state(10);
		
		int r = service.noticeInsert(boardBDTO);
		// 수정에 성공하면 목록보기로 이동
		if (r > 0) {
			//rttr.addFlashAttribute("msg", "입력완료");
			return "redirect:noticeList";
		}
		return "redirect:noticeInsert";
	}
	
	//공지사항_수정삭제_화면
	@RequestMapping(value = "board/noticeUpDel", method = RequestMethod.GET)
	public ModelAndView noticeUpDel(@RequestParam("b_id") int id, @RequestParam("btnGb") int btnGb) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		boardBDTO notice = service.noticeSelect(id);
		mav.addObject("notice", notice);
		
		String cb_id = "b_state";
		List<comboDTO> comboList  = service.comboList(cb_id);
		mav.addObject("comboList", comboList);
		
		mav.addObject("btnGb", btnGb);
		mav.setViewName("noticeUpDel");

		return mav;
	}
	
	//공지사항_수정삭제_처리
	@RequestMapping(value = "board/noticeUpDel", method = RequestMethod.POST)
	public String noticeUpDel(@RequestParam("b_id") int id, @RequestParam("btnGb") int btnGb, boardBDTO boardBDTO) throws Exception {
		System.out.println("noticeUpDel*************"+btnGb+"$$$$"+boardBDTO.getB_content());
		boardBDTO.setB_writer("root");
		int r = 0;
		
		if(btnGb ==2) {			//수정처리
			r = service.noticeUpdate(boardBDTO);
		} else if(btnGb ==3) {	//삭제처리
			r = service.noticeDelete(boardBDTO);
		}

		if (r > 0) {
			//rttr.addFlashAttribute("msg", "입력완료");
			return "redirect:noticeList";
		}
		return "redirect:noticeUpDel";
	}
	
	//제보게시판_전체화면&전체리스트조회
	@RequestMapping(value="board/boardList", method = RequestMethod.GET)
	public ModelAndView boardList() throws Exception {
		System.out.println("제보게시판");
		ModelAndView mav = new ModelAndView();
		
		List<boardBDTO> boardList = service.boardSelectList();
		mav.addObject("boardList", boardList);
		mav.setViewName("boardList");
		return mav;
	}
	
	//제보게시판_세부조회화면&세부조회
	@RequestMapping(value="board/boardDetail", method = RequestMethod.GET)
	public String boardDetail(Model model,@RequestParam Map<String,String> map) throws Exception {
		System.out.println(map.get("b_id")+"&&&&&&&&&&&&&&&&&&&");

		boardBDTO boardB = service.noticeSelect(Integer.parseInt(map.get("b_id")));
		model.addAttribute("boardB",boardB);
		
		List<commentBDTO> commentBList  = service.commentSelectList(Integer.parseInt(map.get("b_id")));
		model.addAttribute("commentBList", commentBList);
		
		return "boardDetail";
	}
	
	//제보게시판_등록화면
	@RequestMapping(value="board/boardInsert", method = RequestMethod.GET)
	public String boardInsert() {
		
		return "boardInsert";
	}
	
	//제보게시판_등록처리
	@RequestMapping(value="board/boardInsert", method = RequestMethod.POST)
	public String boardInsert(boardBDTO boardBDTO, HttpServletRequest request)throws Exception {

		boardBDTO.setB_writer("root");
		
		int r = service.boardInsert(boardBDTO);
		
		return "redirect:boardList";
	}
	
	//제보게시판_수정삭제_화면
	@RequestMapping(value = "board/boardUpDel", method = RequestMethod.GET)
	public ModelAndView boardUpDel(@RequestParam("hidden_bId") int b_id, @RequestParam("btnGb") int btnGb) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		boardBDTO board = service.noticeSelect(b_id);
		mav.addObject("board", board);
		mav.addObject("btnGb", btnGb);
		mav.setViewName("boardUpDel");

		return mav;
	}
		
	//제보게시판_수정삭제_처리
	@RequestMapping(value = "board/boardUpDel", method = RequestMethod.POST)
	public String boardUpDel(@RequestParam("b_id") int id, @RequestParam("btnGb") int btnGb, boardBDTO boardBDTO) throws Exception {
		System.out.println("noticeUpDel*************"+btnGb+"$$$$"+boardBDTO.getB_content());
		boardBDTO.setB_writer("root");
		int r = 0;
		
		if(btnGb ==2) {			//수정처리
			r = service.noticeUpdate(boardBDTO);
		} else if(btnGb ==3) {	//삭제처리
			r = service.noticeDelete(boardBDTO);
		}

		if (r > 0) {
			//rttr.addFlashAttribute("msg", "입력완료");
			return "redirect:boardList";
		}
		return "redirect:boardUpDel";
	}
	
	//ajax 댓글에 대한 매핑과 메소드를 구현(모델에 싣지 않고 그대로 return)
	@ResponseBody
	@RequestMapping(value="board/commentList", method = RequestMethod.POST)
	public List<commentBDTO> commentList(@RequestParam("b_id")int b_id) throws Exception {
		return service.commentSelectList(b_id);
	}
	
	@ResponseBody
	@RequestMapping(value="board/commentInsert", method = RequestMethod.POST)
	public int commentInsert(commentBDTO commentBDTO) throws Exception {
		commentBDTO.setBc_writer("작성자");
		
		return service.commentInsert(commentBDTO);
	}
	
	//ajax 댓글 수정
	@ResponseBody
	@RequestMapping(value="board/commentUpdate", method = RequestMethod.POST)
	public int commentUpdate(commentBDTO commentBDTO) throws Exception {
		System.out.println("!!!commentUpdate!!!");
		return service.commentUpdate(commentBDTO);
	}
	
	//ajax 댓글 삭제
	@ResponseBody
	@RequestMapping(value="board/commentDelete", method = RequestMethod.POST)
	public int commentDelete(commentBDTO commentBDTO) throws Exception {
		System.out.println("!!!commentdelete!!!!!");
		return service.commentDelete(commentBDTO);
	}
}
