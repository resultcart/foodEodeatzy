package kr.co.eodeatzy.payment;

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
import kr.co.eodeatzy.controller.HomeController;

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
		model.addAttribute("payList", order);
		model.addAttribute("orderOne", orderOne);
		return "pendingorder";
	}
	
	//결제-주문내역목록
	@RequestMapping(value = "payment/orderlist", method=RequestMethod.GET )
	public String orderlist() {
		logger.info("결제~~주문내역목록~~~~~~");
		return "orderlist";
	}
	
}
