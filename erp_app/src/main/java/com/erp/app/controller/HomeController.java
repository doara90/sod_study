package com.erp.app.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
	
	@RequestMapping("/SelectMember")
	public @ResponseBody Map<Object, Object> SelectMember(MemberDTO member) throws Exception {
		
		MemberDTO result = homeService.SelectMember(member); 

		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("result", result);

		return map;
	}

}
