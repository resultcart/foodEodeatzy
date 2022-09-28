package kr.co.eodeatzy.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.eodeatzy.main.mainService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	mainService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
//	
//	@RequestMapping(value = "home", method = RequestMethod.GET)
//	public String home(Model model) {
//		logger.info("여긴 홈");
//		model.addAttribute("msg","테스트페이지로슝");
//		
//		return "home";
//	}
//	
	@RequestMapping(value = "testpage", method = RequestMethod.GET)
	public String testpage(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "testpage";
	}	
	
	@RequestMapping(value = "returnhome", method = RequestMethod.GET)
	public String returnhome(Locale locale,Model model) {
		Date date = new Date();
		logger.info("Welcome home! The client locale is {}.", locale);
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );		
		return "home";
	}	
	
	@RequestMapping(value = "cart", method = RequestMethod.GET)
	public String cart(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "cart";
	}	
	@RequestMapping(value = "mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "mypage";
	}	
	@RequestMapping(value = "userInfo", method = RequestMethod.GET)
	public String userInfo(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "userInfo";
	}	
	

//  ===========================================================
	@RequestMapping(value="main/notice_One")
	public String notice_One(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "home";
	}
	
	@RequestMapping(value="main/u_Addr_One")
	public String u_Addr_One(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "home";
	}

	@RequestMapping(value="main/store_type")
	public String store_type(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "store_type";
	}
	
	@RequestMapping(value="main/category")
	public String category(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "category";
	}
	
	@RequestMapping(value="main/store_info")
	public String store_info(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "store_info";
	}


}
