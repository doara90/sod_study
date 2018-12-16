package com.erp.app.service;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.app.dao.SignUpDao;
import com.erp.app.dto.MemberDTO;

@Service
public class SignUpService {

	@Autowired
	private SignUpDao signUpDao;
	@Autowired
	private CommonService commService;

	public int IdCheck(String userId) {
		return signUpDao.IdCheck(userId);		
	}
	
	public boolean RegisterMember(MemberDTO member) {

		boolean emailResult = false; // 전송 결과
		int insertResult = signUpDao.RegisterMember(member);

		// 회원가입 성공일 때, 이메일 전송
		if(insertResult == 1)
		{
			try {
				commService.mailSender(member);
			} catch (MessagingException e) {
				emailResult = false;
				e.printStackTrace();
			}
			
			emailResult = true;
		}
		
		return emailResult;	
	}
}
