package com.spring.AtoZ.commoncode.service;

import com.spring.AtoZ.commoncode.dao.CommonCodeDAO;

public class CommonCodeServiceImpl implements CommonCodeService{
	private CommonCodeDAO commonCodeDAO;
	public void setCommonCodeDAO(CommonCodeDAO commonCodeDAO) {
		this.commonCodeDAO = commonCodeDAO;
	}
}
