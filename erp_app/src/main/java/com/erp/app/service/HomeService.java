package com.erp.app.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.erp.app.dao.HomeDao;
import com.erp.app.dto.MemberDTO;

@Service
public class HomeService {

	@Autowired
	private HomeDao homeDao;

	public MemberDTO SelectMember(MemberDTO member) {
		
		MemberDTO result = homeDao.SelectMember(member);	
		
		
		return result;		
	}
}
