package kr.co.eodeatzy.emp;

import java.lang.System.Logger;

import javax.inject.Inject;

import org.mybatis.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class empController {
	//private static final logger logger = LoggerFactory.getLogger(empController.class);
	
	@Inject
	private empService service;
	
	@RequestMapping(value = "empcount", method = RequestMethod.GET)
	public String empcount(Model model) throws Exception {
		
		int ncount = service.empcount();
		model.addAttribute("count", ncount);
		return "home";
	}

}
