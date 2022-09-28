package kr.co.eodeatzy.controller;

import java.lang.System.Logger;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.cart.cartDTO;
import kr.co.eodeatzy.cart.cartService;

@Controller
public class cartController {
	private static final org.slf4j.Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	cartService service;
	
	//장바구니 조회
	@RequestMapping(value="cart/sel_cartList", method = RequestMethod.GET)
	public ModelAndView sel_cartList(@RequestParam("u_s_id") String u_s_id) throws Exception {
		logger.info("======sel_cartList====");
		logger.info("======usid====>"+u_s_id);
		
		ModelAndView mav = new ModelAndView();
		List<cartDTO> sel_cartList = service.sel_cartList(u_s_id);
		mav.addObject("u_s_id", u_s_id);
		mav.addObject("sel_cartList", sel_cartList);
		mav.setViewName("cartList");
		
		return mav;
	}
	
	//장바구니 추가
	@RequestMapping(value = "cart/ins_cartList", method=RequestMethod.GET)
	public String ins_cartList(cartDTO cartdto, HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		logger.info("~~~~~~~~~ins_cartList~~~~~~~~~~~");		
		int r = service.ins_cartList(cartdto);
		
		if(r>0) {			
			return "redirect:sel_cartList?u_s_id="+cartdto.getU_s_id();
		}
		return "redirect:ins_cartList?u_s_id="+cartdto.getU_s_id();
	}
	
//	//장바구니 추가
//	@RequestMapping(value = "cart/ins_cartList", method=RequestMethod.GET)
//	public String ins_cartList() {
//		
//		return "cartList";
//	}
	
	//장바구니 수정
	@RequestMapping(value = "cart/upd_cartList", method=RequestMethod.GET)
	public String upd_cartList() {
		
		return "cartList";
	}
	
	//장바구니 삭제
	@RequestMapping(value = "cart/del_cartList", method=RequestMethod.GET)
	public String del_cartList(@RequestParam("m_id")int m_id,
			@RequestParam("u_s_id")String u_s_id ,RedirectAttributes rttr) throws Exception {
		logger.info("======delcartlist========");
		logger.info("mid>>>>>>>"+m_id);
		
		int r = service.del_cartList(m_id);
		if(r>0) {
			return "redirect:sel_cartList?u_s_id="+u_s_id;
		}
		return "redirect:del_cartList?u_s_id="+u_s_id;
	}
	
	
}
