package kr.co.eodeatzy.controller;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.registerstore.registerS_DTO;
import kr.co.eodeatzy.registerstore.registerS_Service;

@Controller
public class registerS_Controller {
	@Inject
	registerS_Service service;
	
	//사업장 등록 폼
	@RequestMapping(value = "insertStore", method= RequestMethod.GET)
	public String insertStore() {
		return "insertStore";
		
	}
	
	//사업장 등록
	@RequestMapping(value = "insertStore", method = RequestMethod.POST)
	public String insertStore(registerS_DTO regis_dto,HttpServletRequest request,RedirectAttributes rttr) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		System.out.println(regis_dto);
		
		int r = service.insertStore(regis_dto);
		if(r>0) {
			rttr.addFlashAttribute("msg", "사업장 등록 성공");
			return "registerok";
		}else {
		
		return "redirect:insertStore";
		}
	}
	
	
	//아이디 중복확인 
		@ResponseBody
		@RequestMapping(value = "storeCheck", method = RequestMethod.POST)
		public String storeCheck(@RequestParam("u_s_id")String u_s_id) throws Exception {
			
			int result = service.storeCheck(u_s_id);
			
			if(result != 0) {
				
				return "fail"; //중복 아이디가 존재
				
			}else {
				
				return "success"; //중복 아이디가 존재하지 않음
				
			}
		}
}
