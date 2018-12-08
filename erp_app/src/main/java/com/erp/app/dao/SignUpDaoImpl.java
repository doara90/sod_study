package com.erp.app.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.erp.app.dto.MemberDTO;

@Repository
public class SignUpDaoImpl implements SignUpDao {

	@Autowired
	private SqlSessionTemplate session;

	public int IdCheck(String userId) {
		return session.selectOne("signUp.IdCheck", userId);
	}

	public MemberDTO RegisterMember(MemberDTO member) {
		return session.selectOne("signUp.RegisterMember", member);
	}	
}
