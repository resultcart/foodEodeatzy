package kr.co.eodeatzy.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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

import kr.co.eodeatzy.main.b_Addr_OneDTO;
import kr.co.eodeatzy.main.categoryDTO;
import kr.co.eodeatzy.main.category_OneDTO;
import kr.co.eodeatzy.main.mainService;
import kr.co.eodeatzy.main.notice_OneDTO;
import kr.co.eodeatzy.main.store_typeDTO;
import kr.co.eodeatzy.main.u_Addr_OneDTO;
import kr.co.eodeatzy.mypageU.userAddrDTO;
import kr.co.eodeatzy.mypageU.userInfoDTO;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	mainService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Locale locale, HttpSession session,
							 @RequestParam Map<String,Object> map) throws Exception {
		logger.info("여긴 홈");
		
		ModelAndView mav = new ModelAndView();
		
//		// 개인로그인시 내주소보기
		String u_p_id = (String)session.getAttribute("user_id");
		logger.info("개인 로그인 시 받은 u_p_id : " + u_p_id);
		
		u_Addr_OneDTO u_addr_one = service.u_Addr_One(u_p_id);
		logger.info("u_addr_one : " + u_addr_one); 
		
		mav.addObject("u_addr_one", u_addr_one);
		
		// 사업자로그인시  사업장주소보기
		String u_b_id = (String) session.getAttribute("user_id");
		logger.info("사업자로그인 시 받은 u_b_id : " + u_b_id);

		b_Addr_OneDTO b_addr_One = service.b_Addr_One(u_b_id);
		logger.info("//////b_Addr_One : " + b_addr_One);
		logger.info("/////u_b_id : " + u_b_id);
		
		mav.addObject("baddrone", b_addr_One);
		
		// 공지사항
		notice_OneDTO noticeone = service.notice_One();
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
	
	
	// 홈에서 카테고리 조회 =============================================
	// 카테고리 누르면 해당하는 c_id의 가게정보 보여주기
	@RequestMapping(value="main/category_One", method = RequestMethod.GET)
	public ModelAndView category_One(@RequestParam("c_id") int c_id, HttpSession session,
			HttpServletRequest request) throws Exception {
		logger.info("여긴 세부카테고리");
		
		ModelAndView mav = new ModelAndView();	
		
		// c_id 받아와서  카테고리 조회시 c_name 주기
		String category_Name = service.category_Name(c_id);
		mav.addObject("category_name", category_Name);
		logger.info("***********//////////////category_Name : " + category_Name);
		
		// 가게리스트 보여주기
		List<category_OneDTO> category_one = service.category_One(c_id);
		mav.addObject("catego_one", category_one);
		logger.info("category_one : " + category_one);
		
		mav.setViewName("category_One");
		
		return mav;
	}
	
}
