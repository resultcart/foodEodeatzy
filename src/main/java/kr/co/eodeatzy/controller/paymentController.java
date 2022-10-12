package kr.co.eodeatzy.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.eodeatzy.cart.cartDTO;
import kr.co.eodeatzy.payment.orderDTO;
import kr.co.eodeatzy.payment.paymentService;
import kr.co.eodeatzy.payment.storeAddressDTO;

@Controller
public class paymentController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	paymentService service;
	
	//결제
	@RequestMapping(value = "payment/payList", method=RequestMethod.GET )
	public ModelAndView payList(@RequestParam("u_s_id")String u_s_id) throws Exception {
		logger.info("결제~~~~~~~~");
		logger.info("usid>>>>>>>.."+u_s_id);
		
		ModelAndView mav = new ModelAndView();
		List<cartDTO> payList = service.payList(u_s_id);
		mav.addObject("payList", payList);
		mav.addObject("u_s_id", u_s_id);
		mav.setViewName("payment");
		
		return mav;
	}
	
	//결제-가게정보/상세내역
	@RequestMapping(value = "payment/store_info", method=RequestMethod.GET )
	public String store_info(@RequestParam("u_s_id")String u_s_id, Model model) throws Exception {
		logger.info("결제~~가게정보~~~~~~");
		logger.info("usid>>!!!!!!!!!"+u_s_id);
		
		orderDTO order = service.store_info(u_s_id);
		List<cartDTO> orderOne=service.orderOne(u_s_id);
		model.addAttribute("u_s_id", u_s_id);
		model.addAttribute("payList", order);
		model.addAttribute("orderOne", orderOne);
		return "pendingorder";
	}
	
	//결제-주문내역목록, 주문 상세 내역 
	@RequestMapping(value = "payment/orderlist", method=RequestMethod.GET )
	public String orderlist(@RequestParam("u_s_id")String u_s_id, Model model) throws Exception {
		logger.info("결제-주문 내역목록, 주문 상세 내역");
		logger.info("usid>>>>>>>>>>>>>"+u_s_id);
		
		storeAddressDTO sadto = service.orderlist(u_s_id);
		model.addAttribute("sadto", sadto);
		String memo=sadto.getPMemoDTO().getP_memo();
		model.addAttribute("memo", memo);
		logger.info("sadto>>>>>>>>>"+sadto);
		
		List<cartDTO> orderdetail = service.orderdetail(u_s_id);
		logger.info("orderdetail>>>>>>"+orderdetail);
		
		model.addAttribute("orderdetail", orderdetail);
		
		return "orderlist";
	}
}
