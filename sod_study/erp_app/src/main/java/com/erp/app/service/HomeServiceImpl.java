package com.erp.app.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.erp.app.dao.HomeDao;
import com.erp.app.dto.HomeDTO;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeDao homeDao;

	public List<HomeDTO> select() {
		return homeDao.select();		
	}
}
