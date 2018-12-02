package com.erp.app.controller;

import java.util.HashMap;

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
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/")
	public String home() {
		
		return "home";
	}
	
	@RequestMapping("/signUp")
	public String signUp() {
		
		return "signUp";
	}
	
	
	@RequestMapping("/SelectMember")
	public @ResponseBody HashMap<String, Object> SelectMember(MemberDTO member) throws Exception {
		
		MemberDTO result = homeService.SelectMember(member); 
		
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
	    hashmap.put("result", result);
	    hashmap.put("status", result == null ? false : true);

		return hashmap;
	}
	
	@RequestMapping("/RegisterMember")
	public @ResponseBody HashMap<String, Object> RegisterMember(MemberDTO member) throws Exception {
		
		MemberDTO result = homeService.RegisterMember(member); 
		
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
	    hashmap.put("result", result);
	    hashmap.put("status", result == null ? false : true);

		return hashmap;
	}
	
}
