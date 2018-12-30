package com.erp.app.controller;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.erp.app.dto.MemberDTO;
import com.erp.app.service.HomeService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private HomeService homeService;
	
	@RequestMapping("/")
	public String home() {

		return "home";
	}
	
	@RequestMapping("/login")
	public @ResponseBody Map<Object, Object> login(MemberDTO member, HttpServletRequest request) {

		String checkLogin = "";
		
		MemberDTO result = homeService.SelectMember(member); 
		
		// 일치하는 계정이 없을 시 null로 return
		if(result == null) {
			checkLogin = "User ID 또는 Password를 다시 확인하세요.";
		}
		// 이메일 인증을 거치지 않은 사용자
		else if(result.getApproval().equals("F")) {
			checkLogin = "인증이 필요한 User ID 입니다.";
		}
		// 로그인 성공
		else {
			request.getSession().setAttribute("LoginInfo", result);
		}
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("result", checkLogin);

		return map;
	}

	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {

		request.getSession().invalidate();
		
		return "home";
	}
}
