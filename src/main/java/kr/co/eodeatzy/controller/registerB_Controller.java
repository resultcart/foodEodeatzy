package kr.co.eodeatzy.controller;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.registerbussi.registerB_DTO;
import kr.co.eodeatzy.registerbussi.registerB_Service;

@Controller
public class registerB_Controller {

	@Inject
	registerB_Service service;
	
	//사업자, 개인 회원가입 선택 폼
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "register";
		}
	
	
	//사업자 회원가입 폼
		@RequestMapping(value = "insertBussijoin", method = RequestMethod.GET)
		public String insertBussijoin() {
			return "insertBussijoin";
			}
	
	//사업자 회원가입
	@RequestMapping(value = "insertBussijoin", method  = RequestMethod.POST)
	public String insertBussijoin(registerB_DTO regib_dto, HttpServletRequest request,RedirectAttributes rttr,Model model) throws Exception{
		request.setCharacterEncoding("utf-8");
		
		int r = service.insertBussijoin(regib_dto);
		
		//if(r>0) {
			rttr.addFlashAttribute("msg", "회원가입 성공");
			model.addAttribute("regib_dto", regib_dto);
			
			return "midregister"; 
			
		//}
	}
	
	//아이디 중복확인 
	@ResponseBody
	@RequestMapping(value = "idCheck", method = RequestMethod.POST)
	public String idCheck(@RequestParam("u_b_id")String u_b_id) throws Exception {
		
		int result = service.idCheck(u_b_id);
		
		if(result != 0) {
			
			return "fail"; //중복 아이디가 존재
			
		}else {
			
			return "success"; //중복 아이디가 존재하지 않음
			
		}
		
	}
	
	

}
