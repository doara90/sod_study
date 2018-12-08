package com.erp.app.dao;

import com.erp.app.dto.MemberDTO;

public interface SignUpDao {
	int IdCheck(String userId);
	MemberDTO RegisterMember(MemberDTO member);
}
