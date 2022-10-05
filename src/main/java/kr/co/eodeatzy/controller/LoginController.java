package kr.co.eodeatzy.controller;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.login.LoginDAOImpl;
import kr.co.eodeatzy.login.LoginDTO_b;
import kr.co.eodeatzy.login.LoginDTO_p;
import kr.co.eodeatzy.login.LoginService;
import kr.co.eodeatzy.login.NaverLoginBO;
import kr.co.eodeatzy.login.ins_mem_uDTO;
import lombok.Setter;

@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService service;
	
	@Inject
	LoginDAOImpl dao;

//	
//	/* NaverLoginBO */
//	@Setter(onMethod_ = @Autowired )
//	private NaverLoginBO naverLoginBO;
//	private String apiResult = null;
//	//kr.co.eodeatzy.login.NaverLoginBO
//	@Autowired
//	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
//		this.naverLoginBO = naverLoginBO;
//	}
//
//	//  ===네이버 아이디로그인 ========================================================
//	@RequestMapping(value = "login/naverlogin", method = { RequestMethod.GET, RequestMethod.POST } )
//	public String naverlogin(Model model, HttpSession session) {
//		logger.info("login/naverlogin");
//		
//		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
//		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
//		
//		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
//		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
//		System.out.println("네이버:" + naverAuthUrl);
//		
//		//네이버 
//		model.addAttribute("url", naverAuthUrl);
//		
//		/* 생성한 인증 URL을 View로 전달 */
////		return "login";
//		
////		model.addAttribute("msg","테스트페이지로슝");
//		return "findID";
//	}	
	
	
	



//	//네이버 로그인 성공시 callback호출 메소드
//	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
//	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
//			throws IOException {
//		System.out.println("여기는 callback");
//		OAuth2AccessToken oauthToken;
//        oauthToken = naverLoginBO.getAccessToken(session, code, state);
//        //로그인 사용자 정보를 읽어온다.
//	    apiResult = naverLoginBO.getUserProfile(oauthToken);
//		model.addAttribute("result", apiResult);
//
//        /* 네이버 로그인 성공 페이지 View 호출 */
//		return "naverSuccess";
//	}
	
//  ===아이디찾기========================================================
	@RequestMapping(value = "login/findID", method = RequestMethod.GET)
	public String findID(Model model) {
		logger.info("login/findID");
		model.addAttribute("msg","테스트페이지로슝");
		return "findID";
	}	
	
	@RequestMapping(value = "login/findID", method = RequestMethod.POST)
	public ModelAndView findID(@RequestParam Map<String, Object> map) {
		String returnid = "";
		logger.info("POST login/findID");
		logger.info("map " + map.toString());
		//map {usertype=개인, findname=킹갓더, findnum=01000000001}
		ModelAndView mav = new ModelAndView();
		
		String usertype = (String)map.get("usertype");
		if (usertype.equals("개인")) {
			logger.info("개인");	
			String getname = (String)map.get("findname");
			String getnum = (String)map.get("findnum");
			//받아온데이터를 맵퍼에 넣어줄수있도록 바꿈.
			//u_p_name //u_p_number
			map.remove("findname", getname);
			map.remove("findname", getnum);

			map.put("u_p_name", getname);
			map.put("u_p_number", getnum);
			logger.info("map " + map.toString());
			
			returnid = service.find_ID_U(map);
			mav.setViewName("alert");
			mav.addObject("msg","아이디는 " + returnid + "입니다");
			mav.addObject("url","/login/user_Login");
			
		} else if (usertype.equals("사업자")) {
			logger.info("사업자");	
			String getname = (String)map.get("findname");
			String getnum = (String)map.get("findnum");
			//받아온데이터를 맵퍼에 넣어줄수있도록 바꿈.
			//u_b_name //u_b_number
			map.remove("findname", getname);
			map.remove("findname", getnum);

			map.put("u_b_name", getname);
			map.put("u_b_number", getnum);
			logger.info("map " + map.toString());
			
			returnid = service.find_ID_B(map);
			mav.setViewName("alert");
			mav.addObject("msg","아이디는 " + returnid + "입니다");
			mav.addObject("url","/login/busi_Login");			
		} 
		
		
		if (returnid == null) {
			mav.setViewName("alert");
			mav.addObject("msg","아이디 찾기 실패");
			mav.addObject("url","/login/findID");
		}
		
		return mav;
	}	

//  ===비번찾기========================================================
	
	@RequestMapping(value = "login/findPW", method = RequestMethod.GET)
	public String findPW(Model model) {
		logger.info("login/findPW");
		model.addAttribute("msg","테스트페이지로슝");
		
		return "findPW";
	}
	@RequestMapping(value = "login/findPW", method = RequestMethod.POST)
	public ModelAndView findPW(@RequestParam Map<String, Object> map) {
		String returnPW = "";
		logger.info("POST login/findPW");
		logger.info("map " + map.toString());
		// map {usertype=사업자, findID=KING, findname=킹갓더, findnum=01000009999}
		ModelAndView mav = new ModelAndView();
		
		String usertype = (String)map.get("usertype");
		if (usertype.equals("개인")) {
			logger.info("개인");	
			String getid= (String)map.get("findID");
			String getname = (String)map.get("findname");
			String getnum = (String)map.get("findnum");
			
			//받아온데이터를 맵퍼에 넣어줄수있도록 바꿈.
			map.remove("findID", getid);
			map.remove("findname", getname);
			map.remove("findname", getnum);
			
			map.put("u_p_id", getid);
			map.put("u_p_name", getname);
			map.put("u_p_number", getnum);
			logger.info("map " + map.toString());
			
			returnPW = service.find_PW_U(map);
			mav.setViewName("alert");
			mav.addObject("msg","비밀번호 " + returnPW + "입니다");
			mav.addObject("url","/login/user_Login");
/*
 		where u_b_id =#{u_b_id}
		and u_b_name =#{u_b_name}
		and u_b_number=#{u_b_number} 
 * */
		} else if (usertype.equals("사업자")) {
			
			logger.info("사업자");	
			String getid= (String)map.get("findID");
			String getname = (String)map.get("findname");
			String getnum = (String)map.get("findnum");
			
			//받아온데이터를 맵퍼에 넣어줄수있도록 바꿈.
			map.remove("findID", getid);
			map.remove("findname", getname);
			map.remove("findname", getnum);
			
			map.put("u_b_id", getid);
			map.put("u_b_name", getname);
			map.put("u_b_number", getnum);
			logger.info("map " + map.toString());
			
			returnPW = service.find_PW_B(map);
			mav.setViewName("alert");
			mav.addObject("msg","비밀번호 " + returnPW + "입니다");
			mav.addObject("url","/login/busi_Login");
		} 
		
		
		if (returnPW == null) {
			mav.setViewName("alert");
			mav.addObject("msg","비밀번호 찾기 실패");
			mav.addObject("url","/login/findPW");
		}
		
		return mav;
	}	
	
	@RequestMapping(value = "login/findResult", method = RequestMethod.GET)
	public String findResult(Model model) {
		logger.info("login/findResult");
		model.addAttribute("msg","테스트페이지로슝");
		
		return "findResult";
	}
	
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
							 HttpSession session, Model model) throws Exception {
		logger.info("login/user_Login");
		logger.info("login/user_Login Map " + map);
		
		request.setCharacterEncoding("utf-8");
		
		//Map {u_p_id=king, u_p_pw=12345}
		LoginDTO_p loginDTO_p = service.user_login(map);
		logger.info("login/user_Login loginDTO_p " + loginDTO_p);
		
		if(loginDTO_p == null) {
			logger.info("로그인실패");
			model.addAttribute("msg","로그인실패");
			model.addAttribute("url","/login/user_Login");
			return "alert";			
		}
		else {
			logger.info("로그인성공");
			int r = dao.user_logintime(loginDTO_p.getU_p_id());
			if (r > 0) {
				logger.info("로그인 일시 저장성공");
			}
			
			session.setAttribute("user_id", loginDTO_p.getU_p_id());
			session.setAttribute("user_name", loginDTO_p.getU_p_name());
			session.setAttribute("loginDTO_p", loginDTO_p);
			session.setAttribute("loginType", "user");
			logger.info("setAttribute loginType : user");
			model.addAttribute("msg","사용자 로그인성공 :" + session.getAttribute("user_id"));
			model.addAttribute("url","/");
			return "alert";						
		}
	}
	
	// 사업자 로그인 폼으로가는 매핑
	@RequestMapping(value = "/login/busi_Login", method = RequestMethod.GET)
	public String busi_Login(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		logger.info("여긴 사업자로그인");
		return "busi_Login";
	}
	
	// 사업자 로그인 처리하기
	@RequestMapping(value = "/login/busi_Login", method = RequestMethod.POST)
	public String busi_Login(@RequestParam Map<String, Object> map, 
			 HttpServletRequest request,
			 HttpSession session, Model model) throws Exception {
		
		logger.info("login/busi_Login");
		logger.info("login/busi_Login Map " + map);
		
		request.setCharacterEncoding("utf-8");
		
		//Map {u_p_id=king, u_p_pw=12345}
		LoginDTO_b LoginDTO_b = service.busi_Login(map);
		logger.info("login/user_Login LoginDTO_b " + LoginDTO_b);
		
		if(LoginDTO_b == null) {
			logger.info("로그인실패");
			model.addAttribute("msg","로그인실패");
			model.addAttribute("url","/login/busi_Login");
			return "alert";			
		}
		else {
			logger.info("로그인성공");
			session.setAttribute("user_id", LoginDTO_b.getU_b_id());
			session.setAttribute("user_name", LoginDTO_b.getU_b_name());
			session.setAttribute("LoginDTO_b", LoginDTO_b);
			session.setAttribute("loginType", "bussiness");
			logger.info("setAttribute loginType : bussiness");
			model.addAttribute("msg","사업자 로그인성공 :" + session.getAttribute("user_id"));
			model.addAttribute("url","/");
			return "alert";						
		}
					
	}
	
	@GetMapping(value="login/logout")
	public String logout(HttpSession session, Model model) {
		logger.info("session logout : " + session);
		logger.info("session logout user_id: " + session.getAttribute("user_id"));
		logger.info("session logout user_name: " + session.getAttribute("user_name"));
		int r = dao.user_logouttime((String)session.getAttribute("user_id"));
		if (r > 0) {
			logger.info("session logout 일시 기록 성공: " + session.getAttribute("user_id"));
		}
		session.invalidate();
		
		model.addAttribute("msg","로그아웃");
		model.addAttribute("url","/");
		return "alert";	
	}
	
	// 회원가입 =============================================
	
//	// 회원가입 폼
//	@RequestMapping(value="login/register_u")
//	public String register_u(Model model) {
//		logger.info("register_u ");
//		model.addAttribute("msg", model);
//		return "register_u";
//	}
	
	// 회원가입 폼
	@RequestMapping(value="login/ins_mem_u", method = RequestMethod.GET)
	public String ins_mem_u(Model model) {
		logger.info("여긴 회원가입");
		model.addAttribute("msg", model);
		return "ins_mem_u";
	}
	
	// 회원가입 처리하기
	@RequestMapping(value="login/ins_mem_u", method = RequestMethod.POST)
	public String ins_mem_u(@ModelAttribute ins_mem_uDTO insmemuDTO, 
							HttpServletRequest request,
							RedirectAttributes rttr) throws Exception {

		logger.info("ins_mem_u : " + insmemuDTO );
		
		service.ins_mem_u(insmemuDTO);
		insmemuDTO.setU_p_join_dttm(Timestamp.valueOf(LocalDateTime.now()));

		// 회원가입시 라디오타입으로 받는 값 받아오기
//		insmemuDTO.setU_p_ad_yn(insmemuDTO.getU_p_ad_yn());
//		rttr.addFlashAttribute("ins_mem_u", insmemuDTO);
		
		logger.info("ins_mem_u 회원가입처리 완료");
		return "redirect:/login";
	}
	
	//아이디 중복확인 
	@ResponseBody
	@RequestMapping(value = "upidCheck", method = RequestMethod.POST)
	public String upidCheck(@RequestParam("u_p_id")String u_p_id) throws Exception {
		
		int result = service.upidCheck(u_p_id);
		
		if(result != 0) {
			return "fail"; //중복 아이디가 존재
		}else {
			return "success"; //중복 아이디가 존재하지 않음
		}
	}
	
}
