package com.erp.app.service;

import com.erp.app.dto.MemberDTO;

public interface HomeService {

	MemberDTO SelectMember(MemberDTO member);
	MemberDTO RegisterMember(MemberDTO member);
}
