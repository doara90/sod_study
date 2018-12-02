package com.erp.app.dao;

import com.erp.app.dto.MemberDTO;

public interface HomeDao {

	MemberDTO SelectMember(MemberDTO member);
	MemberDTO RegisterMember(MemberDTO member);

}
