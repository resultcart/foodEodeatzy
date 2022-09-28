package kr.co.eodeatzy.store;



import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.eodeatzy.controller.HomeController;

@Controller
public class StoreController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	StoreService service;
	
	//가게 정보 검색
	@RequestMapping(value="store/store_info", method=RequestMethod.GET)
	public String store_info() {
		logger.info("======store_info/get======");
		return "store_info";
	}
	
	
	//가게 정보 검색	
	@RequestMapping(value ="store/store_info", method = RequestMethod.POST)
	public ModelAndView store_info(@RequestParam("s_name") String s_name) throws Exception {
		logger.info("======store_info/post======");
		logger.info("======s_name======" + s_name);
		
		ModelAndView mav = new ModelAndView();
		List<StoreDTO> store_info = service.store_info(s_name);
		mav.addObject("store_info", store_info);
		mav.setViewName("store_info");
		
		return mav;
	}

	//가게별 메뉴 리스트
	@RequestMapping(value ="store/menu_list", method = RequestMethod.GET)
	public ModelAndView menu_list(@RequestParam("u_s_id") String u_s_id) throws Exception {
		logger.info("=====menu_list====");
		logger.info("=====u_s_id====>"+u_s_id);
		
		ModelAndView mav = new ModelAndView();
		List<storeMenuDTO> menu_list = service.menu_list(u_s_id);
		mav.addObject("u_s_id", u_s_id);
		mav.addObject("menu_list", menu_list);
		mav.setViewName("menu_list");
		return mav;
	}	
	
	//가게 상세 정보, 메모
	@RequestMapping(value ="store/store_info_detail", method = RequestMethod.GET)
	public String store_info_detail(@RequestParam("u_s_id") String u_s_id, Model model) throws Exception {
		logger.info("=====store_info_detail======");
		logger.info("usid=>>>>>" + u_s_id);
		StoreDTO store = service.store_info_detail(u_s_id);
		model.addAttribute("menu_list", store);
		
		return "store_main";
	}
	
}
