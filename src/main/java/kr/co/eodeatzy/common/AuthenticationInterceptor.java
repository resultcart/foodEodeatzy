package kr.co.eodeatzy.common;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class AuthenticationInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//지정한 컨트롤러에 들어가기전에 세션이 없으면 로그인화면으로
		
		HttpSession session = request.getSession();
		response.setCharacterEncoding("UTF-8");
		
		if (session.getAttribute("user_id")==null) {
			PrintWriter prtw = response.getWriter();
			
			response.setContentType("text/html; charset=UTF-8");
			
			prtw.print("<script>alert('로그인해주세요.');"
					+ " location.href='"
					+ request.getContextPath() + "/login"
					+ "'; </script>");
			prtw.flush();
			prtw.close();

			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
