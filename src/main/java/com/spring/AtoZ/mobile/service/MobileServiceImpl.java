package com.spring.AtoZ.mobile.service;

import com.spring.AtoZ.mobile.dao.MobileDAO;

public class MobileServiceImpl implements MobileService {
	private MobileDAO mobileDAO;
	public void setMobileDAO(MobileDAO mobileDAO) {
		this.mobileDAO = mobileDAO;
	}
}
