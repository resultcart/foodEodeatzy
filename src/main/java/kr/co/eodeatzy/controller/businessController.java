package kr.co.eodeatzy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import java.lang.System.Logger;
import java.security.Provider.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.business.businessMenuDTO;
import kr.co.eodeatzy.business.businessOrderDTO;
import kr.co.eodeatzy.business.businessService;
import kr.co.eodeatzy.business.businessStoreDTO;
import kr.co.eodeatzy.business.businessUserDTO;

@Controller
public class businessController {
	
	@Autowired
	businessService service;
	
	// 마이페이지 연결
	@RequestMapping(value = "businessMY", method = RequestMethod.GET)
	public String businessMY(Model model) {
		model.addAttribute("msg","연결");
		
		return "businessMY";
	}

	// 1-1) 사업자 정보 조회
	@RequestMapping(value = "b_userInfo", method = RequestMethod.GET)
	   public ModelAndView b_userInfo(HttpSession session) throws Exception {
	      ModelAndView mav = new ModelAndView();
	      
	      String u_b_id = (String)session.getAttribute("user_id");
	      businessUserDTO b_userInfo = service.b_userInfo(u_b_id);
	      
	      mav.addObject("b_userInfo" , b_userInfo);
	      mav.setViewName("b_userInfo");  
	      
	      return mav;            
	   }
	
	// 1-2) 사업자 정보 수정
	@RequestMapping(value="b_userInfo", method=RequestMethod.POST)
	public String b_userInfo(@RequestParam Map<String, Object> buupmap, RedirectAttributes rttr) throws Exception {
		int r = service.businessUpdate(buupmap);
		if (r>0) {
			rttr.addFlashAttribute("msg", "수정 완료");
			return "redirect:b_userInfo";
		}
		rttr.addFlashAttribute("msg", "수정 실패");
		return "redirect:b_userInfo";
	}
	
	// 1-3) 사업자 탈퇴
	@RequestMapping(value = "b_unregister", method = RequestMethod.GET)
	public String b_unregister(Model model) {
		return "b_unregister";
	}	
	
	@RequestMapping(value = "b_unregister", method = RequestMethod.POST)
	public String b_unregister(HttpSession session, Model model) throws Exception {
		String u_b_id = (String)session.getAttribute("user_id");
		
		int r = service.b_unregister(u_b_id);
		//로그아웃처리
		session.invalidate();
		
		if (r>0) {
			model.addAttribute("msg","회원탈퇴 완료");
			model.addAttribute("url","/");
			return "alert";
		} else {
			model.addAttribute("msg","회원탈퇴 실패");
			model.addAttribute("url","/b_unregister");
			return "alert";
		}
	}
	
	
	// 2-1) 메뉴 조회
	@RequestMapping(value = "selectMenu", method = RequestMethod.GET)
	public ModelAndView selectmenu() throws Exception {
	   ModelAndView mav = new ModelAndView();
	   List<businessMenuDTO> selectmenu = service.selectmenu();
	   mav.addObject("selectmenu", selectmenu);
	   mav.setViewName("selectMenu");	   
       return mav;
      }
	
	// 2-2-1) 메뉴 수정 폼
	@RequestMapping(value="menudetail", method=RequestMethod.GET)
	public ModelAndView updatemenu(@RequestParam Map<String, Object> demap) throws Exception {
		ModelAndView detailmav = new ModelAndView();
		Map detailmap = service.menudetail(demap);		
		detailmav.addObject("detailmap", detailmap);
		detailmav.setViewName("menudetail");		
		return detailmav;				
	}	
	
	// 2-2-2) 메뉴 수정 저장 
	@RequestMapping(value="menudetail", method=RequestMethod.POST)
	public String menudetail(@RequestParam Map<String, Object> upmap, RedirectAttributes rttr) throws Exception {	
		int r = service.updatemenu(upmap);
		if (r>0) {
			rttr.addFlashAttribute("msg", "수정 완료");
			return "redirect:selectMenu";
		}
				
		rttr.addFlashAttribute("msg", "수정 실패");
		return "redirect:selectMenu";
		
	}
		   
	// 2-3) 메뉴 삭제 
	@ResponseBody
	@RequestMapping(value="menudelete", method= RequestMethod.POST)
	    public int menudelete(@RequestParam String u_s_id, @RequestParam int m_id) throws Exception {
		Map<String, Object> deleteMenumap = new HashMap<String, Object>();
		deleteMenumap.put("u_s_id", u_s_id);
		deleteMenumap.put("m_id", m_id);
	    return service.menudelete(deleteMenumap);		   	 
	  }
	
	// 2-5) 메뉴 추가
		// 2-4) 메뉴 추가 폼 보여 주기
	@RequestMapping(value="insertmenu", method=RequestMethod.GET)
	public ModelAndView insertmenu(@RequestParam Map<String, Object> inmap) throws Exception {
		ModelAndView insertmav = new ModelAndView();
		insertmav.addObject("inmap", inmap);
		insertmav.setViewName("insertmenu");		
		return insertmav;				
	}	
		
		// 2-5-1) 메뉴 추가 저장
	@RequestMapping(value="insertmenu", method=RequestMethod.POST)
	public String insertmenu(@RequestParam Map<String, Object> inmap, RedirectAttributes rttr) throws Exception {		
				
		int r = service.insertmenu(inmap);
		
		if (r>0) {
			rttr.addFlashAttribute("msg", "추가 완료");
			return "redirect:selectMenu";
		}
				
		rttr.addFlashAttribute("msg", "추가 실패");
		return "redirect:selectMenu";
		
	}	 
	
	// 3-1) 가게 정보 조회
	@RequestMapping(value = "storeList", method = RequestMethod.GET)
	public ModelAndView storeList(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		String u_b_id = (String)session.getAttribute("user_id");
		businessStoreDTO storeList = service.storeList(u_b_id);
		mav.addObject("storeList", storeList);
		mav.setViewName("storeList");	
		return mav;
	}
	
	
	// 3-2) 가게 정보 수정
	@RequestMapping(value="storeList", method=RequestMethod.POST)
	public String storeList(@RequestParam Map<String, Object> stupmap, RedirectAttributes rttr) throws Exception {
		int r = service.storeNameUpdate(stupmap);
		if (r>0) {
			rttr.addFlashAttribute("msg", "수정 완료");
			return "redirect:storeList";
		}
		rttr.addFlashAttribute("msg", "수정 실패");
		return "redirect:storeList";
	}	

     
	
	// 4-1) 주문 확인 페이지
	@RequestMapping(value = "b_Order", method = RequestMethod.GET)
	public ModelAndView b_Order() throws Exception {
	    ModelAndView mav = new ModelAndView();
	    List<businessOrderDTO> orderCheck = service.orderCheck();
	    mav.addObject("orderCheck", orderCheck);
	    mav.setViewName("b_Order");  
		return mav;
	}
	
	// 4-2) 주문 상세 페이지
	@ResponseBody
	@RequestMapping(value="b_Order2", method = RequestMethod.POST)
	public List<businessOrderDTO> orderdetail (@RequestParam("o_number") String o_number) throws Exception {
		System.out.println(o_number);
		List<businessOrderDTO> result = service.orderdetail(o_number);
		return result;
	}
	
	// 4-3) 주문 확인-고객 메모 확인
	@RequestMapping(value="orderMemo", method=RequestMethod.GET)
	public ModelAndView p_memoview(@RequestParam Map<String, Object> memap) throws Exception {
		ModelAndView memoMav = new ModelAndView();
		Map memoViewmap = service.orderMemo(memap);
		memoMav.addObject("memoViewmap", memoViewmap);
		memoMav.setViewName("p_memo");
		return memoMav;		
	}
	
	
	// 4-4) 주문 확인-고객 메모 수정
	@RequestMapping(value="orderMemo", method=RequestMethod.POST)
	public String p_memoview(@RequestParam Map<String, Object> upmemap, RedirectAttributes rttr) throws Exception {
		int r = service.updateMemo(upmemap);
		if (r>0) {
			rttr.addFlashAttribute("msg", "수정 완료");
			return "redirect:b_Order";
		}
				
		rttr.addFlashAttribute("msg", "수정 실패");
		return "redirect:b_Order";
		
	}
	
	
	
		
}
