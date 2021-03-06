package com.erp.app.controller;

import java.util.ArrayList;
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
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping("/")
	public String home() {

		return "home";
	}
	
	@RequestMapping("/login")
	public @ResponseBody Map<Object, Object> login(MemberDTO member) {

		Map<Object, Object> result = homeService.SelectMember(member); 
		
		return result;
	}

	@RequestMapping("/logout")
	public String logout() {
		
		request.getSession().invalidate();
		
		return "redirect:/";
	}
	
	@RequestMapping("/ex/findUserInfo")
	public @ResponseBody Map<Object, Object> findUserInfo(MemberDTO member) {

		Map<Object, Object> result = homeService.findUserInfo(member); 
		
		return result;
	}
}
