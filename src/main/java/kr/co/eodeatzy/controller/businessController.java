package kr.co.eodeatzy.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.eodeatzy.business.AttachImageVO;
import kr.co.eodeatzy.business.businessMenuDTO;
import kr.co.eodeatzy.business.businessOrderDTO;
import kr.co.eodeatzy.business.businessService;
import kr.co.eodeatzy.business.businessStoreDTO;
import kr.co.eodeatzy.business.businessUserDTO;
import net.coobird.thumbnailator.Thumbnails;


@Controller
public class businessController {
	
	private static final Logger logger = LoggerFactory.getLogger(businessController.class);
	
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

	
	// 3-0) 가게 선택
	@RequestMapping(value = "selectStore", method=RequestMethod.GET)
	public ModelAndView selectStore(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		String u_b_id = (String)session.getAttribute("user_id");
		
		List<businessStoreDTO> selectStore = service.selectStore(u_b_id);
		mav.addObject("selectStore", selectStore);
		mav.setViewName("selectStore");
		
		return mav;
	}
	
	
	// 3-1) 가게 상세 정보 조회
	@RequestMapping(value = "storeList", method = RequestMethod.GET)
	public ModelAndView storeList(@RequestParam Map<String, Object> storemap) throws Exception {
		ModelAndView storemav = new ModelAndView();
		
		Map storeMap = service.storeList(storemap);
		storemav.addObject("storeMap", storeMap);
		storemav.setViewName("storeList");
		return storemav;

	}
	
	// 3-2) 가게 정보 수정
	@RequestMapping(value="storeList", method=RequestMethod.POST)
	public String storeList(@RequestParam Map<String, Object> stupmap, RedirectAttributes rttr) throws Exception {
		int r = service.storeNameUpdate(stupmap);
		if (r>0) {
			rttr.addFlashAttribute("msg", "수정 완료");
			return "redirect:selectStore";
		}
		rttr.addFlashAttribute("msg", "수정 실패");
		return "redirect:selectStore";
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
	
	// 이미지 업로드
	@PostMapping(value="businessController/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {

		// 이미지 유효성 검사(2)
		for(MultipartFile multipartFile: uploadFile) {
			
			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;
			
			try {
				type = Files.probeContentType(checkfile.toPath());
				logger.info("타입 확인 : " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			if(!type.startsWith("image")) {
				
				List<AttachImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
				
			}
			
		}// for
		
		String uploadFolder = "D:\\upload";
		
		// 날짜 폴더 경로
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();		
		String str = sdf.format(date);
		String datePath = str.replace("-", File.separator);
		
		// 업로드 폴더 생성		
		File uploadPath = new File(uploadFolder, datePath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}
		
		// 이미지 정보 담기용 객체
		List<AttachImageVO> list = new ArrayList();

		for(MultipartFile multipartFile : uploadFile) {
			
			// 이미지 정보 객체
			AttachImageVO vo = new AttachImageVO();
			
			// 파일 이름 지정
			String uploadFileName = multipartFile.getOriginalFilename();	
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);
			
			// 이름 중복을 없애기 위한 UUID 지정
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);
			
			uploadFileName = uuid + "_" + uploadFileName;
			
			// 파일 위치, 파일 이름을 합친 File 객체 생성
			File saveFile = new File(uploadPath, uploadFileName);
			
			// 파일 저장
			try {
				multipartFile.transferTo(saveFile);
				
				// 썸네일 저장
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);	
				
				BufferedImage bo_image = ImageIO.read(saveFile);

					//비율 
					double ratio = 3;
					//넓이 높이
					int width = (int) (bo_image.getWidth() / ratio);
					int height = (int) (bo_image.getHeight() / ratio);					
				
				
				Thumbnails.of(saveFile)
		        .size(width, height)
		        .toFile(thumbnailFile);
				
				
				} catch (Exception e) {
					e.printStackTrace();
				}
			
			list.add(vo);
		} // for 끝
		
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);
		logger.info(result + " ★저장이 되긴 함");
		return result;
		
		
	}
	
	// 업로드 이미지 출력
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
		File file = new File("D:\\upload\\" + fileName);
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
	
	
	
		
}
