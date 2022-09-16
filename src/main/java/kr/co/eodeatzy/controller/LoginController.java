package kr.co.eodeatzy.controller;

import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.eodeatzy.HomeController;
import kr.co.eodeatzy.login.LoginDTO_p;
import kr.co.eodeatzy.login.LoginService;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService service;
	

	// 로그인 =============================================
	
	// 로그인 폼으로가는 매핑
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		logger.info("여긴 로그인");
		model.addAttribute("msg","테스트페이지로슝");
		
		return "login";
	}
	
	// 개인로그인 폼으로가는 매핑
	@RequestMapping(value = "/login/user_Login", method = RequestMethod.GET)
	public String user_Login(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		logger.info("여긴 개인로그인");
		return "user_Login";
	}
	
	// 개인 로그인 처리하기
	@RequestMapping(value = "/login/user_Login", method = RequestMethod.POST)
	public String user_Login(@RequestParam Map<String, Object> map, 
							 HttpServletRequest request,
							 HttpSession session) throws Exception {
		logger.info("login/user_Login");
		logger.info("login/user_Login Map " + map);
		
		request.setCharacterEncoding("utf-8");
		
		//Map {u_p_id=king, u_p_pw=12345}
		LoginDTO_p loginDTO_p = service.user_login(map);
		logger.info("login/user_Login loginDTO_p " + loginDTO_p);
		
		if(loginDTO_p == null) {
			logger.info("로그인실패");
			return "redirect:login";
		}
		else {
			logger.info("로그인성공");
			session.setAttribute("user_lo", loginDTO_p.getU_p_id());
			session.setAttribute("loginDTO_p", loginDTO_p);
			return "home";
		}
	}
	
	// 사업자 로그인 폼으로가는 매핑
	@RequestMapping(value = "busi_Login", method = RequestMethod.GET)
	public String busi_Login(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		logger.info("여긴 사업자로그인");
		return "busi_Login";
	}
	
	// 사업자 로그인 처리하기
	@RequestMapping(value = "/login/busi_Login", method = RequestMethod.POST)
	public String busi_Login(@RequestParam Map<String, Object> map,
							HttpServletRequest request,
							HttpSession session) throws Exception {
		request.setCharacterEncoding("utf-8");
		Map user_bu = service.busi_Login(map);
		
		if (user_bu == null) {
			return "redirect:login";
		}
		else {
			session.setAttribute("user_bu", user_bu);
			return "busi_Login";
		}
		
	}
	
	@GetMapping(value="login/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	// 회원가입 =============================================
	
	// 회원가입 폼
	@RequestMapping(value="register_u")
	public String ins_mem_u(Model model) {
		model.addAttribute("msg", model);
		return "register_u";
	}
	
	// id. pw 찾기 =============================================
	
	// id, pw 찾기 폼
	@RequestMapping(value="user_Login")
	public String find_ID(Model model) {
		logger.info("여기는 user_Login");
		model.addAttribute("mag", "user_Login");
		return "user_Login";
	}
	
	
	
}
