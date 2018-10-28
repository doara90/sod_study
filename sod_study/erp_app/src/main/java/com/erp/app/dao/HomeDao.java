package com.erp.app.dao;

import java.util.List;

import com.erp.app.dto.HomeDTO;

public interface HomeDao {

	List<HomeDTO> select();
}
