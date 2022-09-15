package kr.co.eodeatzy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.eodeatzy.main.mainService;
import kr.co.eodeatzy.main.u_Addr_OneDTO;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	mainService service;

	// 내주소보기 =============================================
	
	@RequestMapping(value = "main/u_Addr_one", method = RequestMethod.GET)
	public ModelAndView u_Addr_One (@RequestParam("u_p_id") String u_p_id) {
		logger.info("여긴 내주소보기");
		
		ModelAndView mav = new ModelAndView();
		u_Addr_OneDTO uArrdOne = service.u_Addr_One(u_p_id); 
		u_p_id = "KING";

		mav.addObject("uArrdOne", uArrdOne);
		mav.setViewName("u_Addr_one");
		
		return mav;
		
	}
	
//	public List<userAddrDTO> u_Addr_List(String u_p_id) throws Exception;
//	public ModelAndView u_Addr_one(HttpSession session) throws Exception {
//		logger.info("여긴 내주소보기");
//		
//		ModelAndView mav = new ModelAndView();
//		
//		String u_p_id = (String)session.getAttribute("id");
//		
//		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "KING";
//		List<u_Addr_oneDTO> addrone = (List<u_Addr_oneDTO>) service.u_Addr_one(u_p_id);
//		logger.info("return addrList : " + addrone);
//		
//		mav.addObject("addrone", addrone);
//		mav.setViewName("u_Addr_one");
//		
//		return mav;
//	}	
//	
//	선택목록 - 글 읽기
//	@RequestMapping(value="board/detail", method = RequestMethod.GET)
//	public String detail(@RequestParam("bno") int bno, Model model) throws Exception {
//		BoardDTO board = service.getDetail(bno);
//		model.addAttribute("board", board);
//		
//		// 8.22월 detail 추가작업
//		// 댓글목록
//		List<BoardReply> list = service.getDetail1(bno);
//		model.addAttribute("list", list);
//		
//		return "detail";
//		
//	}
}
