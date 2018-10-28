package com.erp.app.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.erp.app.dto.HomeDTO;
@Repository
public class HomeDaoImpl implements HomeDao {

	@Autowired
	private SqlSessionTemplate session;

	public List<HomeDTO> select() {
		return session.selectList("home.select");
	}	
}
