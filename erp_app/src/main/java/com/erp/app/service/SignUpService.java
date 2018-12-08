package com.erp.app.service;

import com.erp.app.dto.MemberDTO;

public interface SignUpService {

	int IdCheck(String id);
	MemberDTO RegisterMember(MemberDTO member);
}
