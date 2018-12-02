package com.erp.app.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.erp.app.dto.MemberDTO;

@Repository
public class HomeDaoImpl implements HomeDao {

	@Autowired
	private SqlSessionTemplate session;

	public MemberDTO SelectMember(MemberDTO member) {
		return session.selectOne("home.SelectMember", member);
	}
	
	public MemberDTO RegisterMember(MemberDTO member) {
		return session.selectOne("home.RegisterMember", member);
	}	
}
