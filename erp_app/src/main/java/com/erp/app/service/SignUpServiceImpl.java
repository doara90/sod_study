package com.erp.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.app.dao.SignUpDao;
import com.erp.app.dto.MemberDTO;

@Service
public class SignUpServiceImpl implements SignUpService {

	@Autowired
	private SignUpDao signUpDao;

	public int IdCheck(String userId) {
		return signUpDao.IdCheck(userId);		
	}
	
	public MemberDTO RegisterMember(MemberDTO member) {
		return signUpDao.RegisterMember(member);		
	}
}
