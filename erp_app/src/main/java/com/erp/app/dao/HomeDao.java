package com.erp.app.dao;

import java.util.List;

import com.erp.app.dto.HomeDTO;
import com.erp.app.dto.MemberDTO;

public interface HomeDao {

	MemberDTO SelectMember(MemberDTO member);
}
