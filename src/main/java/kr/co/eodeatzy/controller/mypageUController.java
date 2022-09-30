package kr.co.eodeatzy.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.sun.tools.sjavac.Log;

import kr.co.eodeatzy.mypageU.mypageUService;
import kr.co.eodeatzy.mypageU.userAddrDTO;
import kr.co.eodeatzy.mypageU.userInfoDTO;

@Controller
public class mypageUController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	mypageUService service;
	
	//===마이페이지 장바구니=======================================================================
	@RequestMapping(value = "mypageU/cart", method = RequestMethod.GET)
	public String cart(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "cart";
	}	
	
	//===마이페이지 메인=======================================================================
	@RequestMapping(value = "mypageU/mypage", method = RequestMethod.GET)
	public String mypage(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "mypage";
	}	
	
	//===회원정보조회=======================================================================
	@RequestMapping(value = "mypageU/userInfo", method = RequestMethod.GET)
	public ModelAndView userInfo(HttpSession session) throws Exception {
		logger.info("mypageU/userInfo");
		
		ModelAndView mav = new ModelAndView();
		
		String u_p_id = (String)session.getAttribute("user_id");
		logger.info("mypageU/userInfo session id : " + u_p_id);
		
		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "king";
 		
		userInfoDTO userInfo = service.userInfo(u_p_id);
		logger.info("userInfo: " + userInfo);
		
		mav.addObject("userInfo", userInfo);
		mav.setViewName("userInfo");
		
		return mav;
	}	
	
	@RequestMapping(value = "mypageU/update_u_info", method = RequestMethod.POST)
	public String update_u_info(userInfoDTO userInfo) throws Exception {
		logger.info("mypageU/update_u_info post");
		logger.info("update_u_info userInfo param : " + userInfo);
		
		
		if (userInfo.getU_p_id() == null) {
			logger.info("로그인 확인 안됨 Error: " + userInfo);
			return "userInfo";
		}
		
 		//update하고
		int r = service.update_u_info(userInfo);
		logger.info("update return : " + r);
		logger.info("userInfo.getU_p_id() : " + userInfo.getU_p_id());
		
		if (r>0) {
			return "redirect:userInfo?u_p_id=" + userInfo.getU_p_id();
		} else {
			return "userInfo";
		}
	}	
	

	
	
	//===회원탈퇴=======================================================================
	@RequestMapping(value = "mypageU/u_unregister", method = RequestMethod.GET)
	public String u_unregister(Model model) {
		logger.info("mypageU/u_unregister");
		
		return "u_unregister";
	}	
	
	@RequestMapping(value = "mypageU/u_unregister", method = RequestMethod.POST)
	public String u_unregister(HttpSession session, Model model) throws Exception {
		logger.info("mypageU/u_unregister post");
		String u_p_id = (String)session.getAttribute("user_id");
		logger.info("mypageU/u_unregister session id : " + u_p_id);
		
		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "king";
		
		int r = service.u_unregister(u_p_id);
		//로그아웃처리
		session.invalidate();
		
		if (r>0) {
			logger.info("회원탈퇴 완료");
			model.addAttribute("msg","회원탈퇴 완료");
			model.addAttribute("url","/");
			return "alert";
		} else {
			logger.info("회원탈퇴 실패");
			model.addAttribute("msg","회원탈퇴 실패");
			model.addAttribute("url","/mypageU/u_unregister");
			return "alert";
		}
	}	
	
	
	//===회원주소 조회=======================================================================
	@RequestMapping(value = "mypageU/u_Addr_List", method = RequestMethod.GET)
	public ModelAndView u_Addr_List(HttpSession session) throws Exception {
		logger.info("mypageU/u_Addr_List");
		
		ModelAndView mav = new ModelAndView();
		
		String u_p_id = (String)session.getAttribute("user_id");
		
		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "KING";
		logger.info("mypageU/u_Addr_List session id : " + u_p_id);
		
		List<userAddrDTO> addrList = service.u_Addr_List(u_p_id);
		logger.info("return addrList : " + addrList);
		
		mav.addObject("addrList", addrList);
		mav.setViewName("u_Addr_List");
		
		return mav;
	}	
	//===회원주소 추가/수정=======================================================================
	@RequestMapping(value = "mypageU/update_uAddr", method = RequestMethod.POST)
	public ModelAndView update_uAddr(HttpSession session, @RequestParam("insertName")String insertName
			, @RequestParam("insertAddr")String insertAddr) throws Exception {
		logger.info("mypageU/update_uAddr");
		
		ModelAndView mav = new ModelAndView();
		
		String u_p_id = (String)session.getAttribute("user_id");
		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "KING";
		logger.info("mypageU/update_uAddr session id : " + u_p_id);

		
		
		//주소 등록할 dto만듬
		userAddrDTO dto =  new userAddrDTO();
		dto.setU_p_id(u_p_id);
		dto.setU_p_add_id(insertName);
		dto.setU_p_address(insertAddr);
		dto.setU_p_flag(2);
		logger.info("mypageU/update_uAddr dto : " + dto);
		
		
		//필요한 전체 주소 갯수 받아오기
		List<userAddrDTO> addrList = service.u_Addr_List(u_p_id);  

		// 지금 추가인지 수정인지 판별 중복된 주소가 있엇을때는 수정으로 판정.
		List<userAddrDTO> checkList = service.u_Addr_duplicate(dto);
		int addrMax = addrList.size();
		int exist = checkList.size();
		logger.info("mypageU/update_uAddr addr count : " + addrMax + " updateitem :  " + exist);
		
		//수정이 아닌경우 리스트보다 많으면 삭제요청
		if ((addrMax >= 5) && (exist<=0))  {
			
			mav.addObject("msg", "주소를 저장 할수있는 최대값은 5개까지 입니다.  사용하지 않는 주소를 삭제 후 등록해주세요." );
			mav.addObject("url", "/mypageU/u_Addr_List");
			mav.setViewName("alert");
			
			return mav;
		}
		
		// 수정전 대표 주소를없앰
		service.init_Addr(u_p_id);
		
		//수정한 주소가 대표 주소로 설정.
		int r = service.update_uAddr(dto);
		
		logger.info("update_uAddr return : " + r);
		
		if (r>0) {
			mav.setViewName("redirect:u_Addr_List?u_p_id=" + dto.getU_p_id());
		} else {
			mav.setViewName("u_Addr_List");
		}		
		
		return mav;
	}	
	//mypageU/delete_uAddr
	//===회원주소 삭제=======================================================================
	@RequestMapping(value = "mypageU/delete_uAddr", method = RequestMethod.POST)
	public ModelAndView delete_uAddr(HttpSession session,
			@RequestParam("staCount") String staCount, userAddrDTO dto) throws Exception {
		logger.info("mypageU/delete_uAddr");
		logger.info("mypageU/delete_uAddr staCount : " + staCount);
		logger.info("mypageU/delete_uAddr dto : " + dto);
		
		ModelAndView mav = new ModelAndView();
		
		String u_p_id = (String)session.getAttribute("user_id");
		//debug 로그인 했다고 치고 u_p_id
//		u_p_id = "KING";
		logger.info("mypageU/delete_uAddr session id : " + u_p_id);

		int r = service.delete_uAddr(dto);
		
		logger.info("delete_uAddr return : " + r);
		
		if (r>0) {
			mav.setViewName("redirect:u_Addr_List?u_p_id=" + dto.getU_p_id());
		} else {
			mav.setViewName("u_Addr_List");
		}	
		
		return mav;
	}	


	
	@RequestMapping(value = "mypageU/eatitem", method = RequestMethod.GET)
	public String eatitem(Model model) {
		model.addAttribute("msg","테스트페이지로슝");
		
		return "eatitem";
	}		


}
