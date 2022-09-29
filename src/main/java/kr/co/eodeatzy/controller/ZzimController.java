package kr.co.eodeatzy.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.Zzim.zzimDTO;
import kr.co.eodeatzy.Zzim.zzimService;



@Controller
public class ZzimController {
	@Inject
	zzimService service;
	private static final Logger logger = LoggerFactory.getLogger(ZzimController.class);	


	//찜목록 조회
			@RequestMapping(value = "ListAll", method = RequestMethod.GET)
			public ModelAndView ListAll(HttpSession session) throws Exception {
				
				
				ModelAndView mav = new ModelAndView();
				String u_p_id = (String)session.getAttribute("user_id");
				logger.info("u_p_id"+ u_p_id);
				
				//String u_p_id = (String)session.getAttribute("id");
				
				//debug 로그인 했다고 치고 u_p_id
				//u_p_id = "p_sera";
				
				List<zzimDTO> listall = service.ListAll(u_p_id);
			
		          mav.addObject("listall", listall);
				  mav.setViewName("ListAll");
				
				return mav;
			}	
	
        //찜 정보 상세보기
		@RequestMapping(value = "detailzzim", method = RequestMethod.GET)
		public ModelAndView detailzzim(@RequestParam("u_s_id")String u_s_id,zzimDTO zzimdto, Model model,HttpServletRequest request, HttpServletResponse response,HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		String u_p_id = (String)session.getAttribute("user_id");
		//debug 로그인 했다고 치고 u_p_id
		//u_p_id = "p_sera";
		
	   ModelAndView mav = new ModelAndView();
	   zzimDTO r = service.detailzzim(zzimdto);
		
		mav.addObject("r", r);
		mav.setViewName("detailzzim");
		return mav;
				
			}
	
	//찜 목록 추가
	@RequestMapping(value = "addZzim", method =RequestMethod.POST)
	public ModelAndView addZzim(zzimDTO zzimdto,HttpServletRequest request,HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		String u_p_id = (String)session.getAttribute("user_id");
		
		logger.info("u_p_id"+ u_p_id);
		logger.info("addZzim");
		//u_p_id = "p_sera";
		//여기까지 로그인이 된 상태라고 보고 진행
		
		ModelAndView mav = new ModelAndView();
		
		int r=service.addZzim(zzimdto);
		
		if(r>0) {
			mav.setViewName("redirect:ListAll?u_p_id=" + zzimdto.getU_p_id());
		}
		
		return mav;
		
	}
	
	
	//찜 목록 수정 폼
		@RequestMapping(value = "updatezdesc", method = RequestMethod.GET)
		public ModelAndView updatezdesc(@RequestParam("u_s_id")String u_s_id,zzimDTO zzimdto, Model model, HttpServletRequest request, HttpSession session) throws Exception {
			request.setCharacterEncoding("utf-8");
			String u_p_id = (String)session.getAttribute("user_id");
			//u_p_id = "p_sera";
			//여기까지 로그인이 된 상태라고 보고 진행
			ModelAndView mav = new ModelAndView();
			
			zzimDTO r = service.detailzzim(zzimdto);
			
			mav.addObject("r", r);
			
			mav.setViewName("updatezdesc");
	     	return mav;
			
		}
	
	//찜 목록 수정
	@RequestMapping(value = "updatezdesc", method = RequestMethod.POST)
	public ModelAndView updatezdesc(@RequestParam("u_s_id") String u_s_id, Model model, zzimDTO zzimdto,HttpServletRequest request, HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		String u_p_id = (String)session.getAttribute("user_id");
		//u_p_id = "p_sera";
		//여기까지 로그인이 된 상태라고 보고 진행
		
		ModelAndView mav = new ModelAndView();
		
		//원래 zzimdto를 불러와서 zdesc의 내용을 변경
		
		int r = service.updatezdesc(zzimdto);
		if(r>0) {
			mav.setViewName("redirect:ListAll?u_p_id=" + zzimdto.getU_p_id());
		}else {
			mav.setViewName("ListAll");
		}
		
	    return mav;
			
		}
			
		
		

	
	//찜 목록 삭제
	@RequestMapping(value = "deleteZzim", method = RequestMethod.POST)
	public ModelAndView deleteZzim(@RequestParam("u_s_id") String u_s_id, HttpSession session, zzimDTO zzimdto) throws Exception {
	
		ModelAndView mav = new ModelAndView();
		
		String u_p_id = (String)session.getAttribute("user_id");
		//debug 로그인 했다고 치고 u_p_id
		//u_p_id = "p_sera";

		int r = service.deleteZzim(zzimdto);
		
		if (r>0) {
			mav.setViewName("redirect:ListAll?u_p_id=" + zzimdto.getU_p_id());
		} else {
			mav.setViewName("ListAll");
		}	
		
		return mav;
	}	

}
