package com.spring.AtoZ.construct.service;

import com.spring.AtoZ.construct.dao.ConstructDAO;

public class ConstructServiceImpl implements ConstructService {
	private ConstructDAO constructDAO;
	public void setConstructDAO(ConstructDAO constructDAO) {
		this.constructDAO = constructDAO;
	}
}
