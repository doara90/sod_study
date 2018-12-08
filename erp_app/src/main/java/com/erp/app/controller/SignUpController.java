package com.erp.app.controller;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.erp.app.dto.MemberDTO;
import com.erp.app.service.SignUpService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SignUpController {
	
	@Autowired
	private SignUpService signUpService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/signUp")
	public String signUp() {
		
		return "signUp";
	}
	
	@RequestMapping("/idCheck")
	public @ResponseBody Map<Object, Object> IdCheck(@RequestBody String userId) throws Exception {

		String temp=userId;
		int cnt=0;
		Map<Object, Object> map = new HashMap<Object, Object>();

		cnt = signUpService.IdCheck(userId);
		map.put("cnt", cnt);
		/* if(ret>0) return true;
		 else return false;*/
		
		return map;
	}
	
	@RequestMapping("/RegisterMember")
	public @ResponseBody HashMap<String, Object> RegisterMember(MemberDTO member) throws Exception {
		
		MemberDTO result = signUpService.RegisterMember(member); 
		
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
	    hashmap.put("result", result);
	    hashmap.put("status", result == null ? false : true);

		return hashmap;
	}
	
}
