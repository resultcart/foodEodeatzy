package kr.co.eodeatzy.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.main.categoryDTO;
import kr.co.eodeatzy.main.category_OneDTO;
import kr.co.eodeatzy.main.mainService;
import kr.co.eodeatzy.main.notice_OneDTO;
import kr.co.eodeatzy.main.store_typeDTO;
import kr.co.eodeatzy.mypageU.userAddrDTO;
import kr.co.eodeatzy.mypageU.userInfoDTO;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	mainService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, HttpSession session) throws Exception {
		logger.info("여긴 홈");
		
		ModelAndView mav = new ModelAndView();
		
//		// 내주소보기
//		session.getAttribute("user_id");
//		session.getAttribute("user_name");
//		session.getAttribute("loginDTO_p");
//		
//		u_Addr_OneDTO u_addr_one = service.u_Addr_One("LoginDTO_p");
//		logger.info("u_addr_one : " + u_addr_one);  
//		mav.addObject("u_addr_one", u_addr_one);

		// 공지사항
		String b_id = (String) session.getAttribute("id"); 
		b_id = "5";
		notice_OneDTO noticeone = service.notice_One(b_id);
		logger.info("notice_One : " + noticeone);
		mav.addObject("notice_one", noticeone);
		
		List <categoryDTO> category_ = service.category();
		logger.info("category : " + category_);
		mav.addObject("catego", category_);		
		
		// 가게조회
		List<store_typeDTO> storetype = service.store_type();
		logger.info("store_type : " + storetype);
		mav.addObject("storetype", storetype);
		
		mav.setViewName("home");
		
		return mav;
	}
	

	// 내주소보기 =============================================	
	
//	@RequestMapping(value = "main/u_Addr_One", method = RequestMethod.GET)
//	public ModelAndView u_Addr_One(HttpSession session) throws Exception {
//		logger.info("여긴 내주소보기");
//		
//		ModelAndView mav = new ModelAndView();
//		
//		String u_p_id = (String)session.getAttribute("id");
//		
//		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "KING";
//		
//		u_Addr_OneDTO uaddrone = service.u_Addr_One(u_p_id);
//		
//		logger.info("return addrOne : " + uaddrone);
//		
//		mav.addObject("u_addr_one", uaddrone);
//		mav.setViewName("u_Addr_One");
//		
//		return mav;
//	}	

	
	// 공지사항 하나보기 =============================================
	
//	@RequestMapping(value="main/notice_One", method = RequestMethod.GET)
//	public ModelAndView notice_One(HttpSession session) throws Exception  {
//		logger.info("여긴 공지하나보기");
//		
//		ModelAndView mav = new ModelAndView();
//		String b_id = (String) session.getAttribute("id"); 
//		
//		b_id = "5";
//		notice_OneDTO noticeone = service.notice_One(b_id);
//		
//		logger.info("notice_One : " + noticeone);
//		
//		mav.addObject("notice_one", noticeone);
//		mav.setViewName("notice_One");
//		
//		return mav;
//	}
	
	// 카테고리 보기 =============================================
	
//	@RequestMapping(value="main/category", method = RequestMethod.GET)
//	public ModelAndView category(HttpServletRequest request) throws Exception {
//		request.setCharacterEncoding("utf-8");
//		logger.info("category");
//		ModelAndView mav = new ModelAndView();
//
//		List <categoryDTO> category_ = service.category();
//		mav.addObject("catego", category_);
//		mav.setViewName("category");
//			
//		return mav;
//	}
	
	
	// 홈에서 가게조회 =============================================
	// 가게명 클릭시 가게메뉴 보러가기
//	@RequestMapping(value="main/store_type", method = RequestMethod.GET)
//	public ModelAndView store_type() throws Exception {
//		logger.info("홈에서 가게조회");
//		ModelAndView mav = new ModelAndView();
//
//		List<store_typeDTO> storetype = service.store_type();
//		mav.addObject("storetype", storetype);
//		mav.setViewName("store_type");
//			
//		return mav;
//	}
	
	// 홈에서 카테고리 조회 =============================================
	// 카테고리 누르면 해당하는 c_id의 가게정보 보여주기
	@RequestMapping(value="main/category_One", method = RequestMethod.GET)
	public ModelAndView category_One(@RequestParam("c_id") int c_id, HttpSession session,
			HttpServletRequest request) throws Exception {
		logger.info("여긴 세부카테고리");
		
		ModelAndView mav = new ModelAndView();	
		
		List<category_OneDTO> category_one = service.category_One(c_id);
		mav.addObject("catego_one", category_one);
		logger.info("category_one : " + category_one);
		
		mav.setViewName("category_One");
		
		return mav;
	}
	
}
