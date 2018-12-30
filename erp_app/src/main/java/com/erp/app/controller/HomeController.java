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
		
		// ��ġ�ϴ� ������ ���� �� null�� return
		if(result == null) {
			checkLogin = "User ID �Ǵ� Password�� �ٽ� Ȯ���ϼ���.";
		}
		// �̸��� ������ ��ġ�� ���� �����
		else if(result.getApproval().equals("F")) {
			checkLogin = "������ �ʿ��� User ID �Դϴ�.";
		}
		// �α��� ����
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
