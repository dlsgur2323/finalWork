package com.spring.AtoZ.serviceUse.service;

import com.spring.AtoZ.serviceUse.dao.ServiceUseDAO;

public class ServiceUseServiceImpl implements ServiceUseService {
	private ServiceUseDAO serviceUseDAO;
	public void setServiceUseDAO(ServiceUseDAO serviceUseDAO) {
		this.serviceUseDAO = serviceUseDAO;
	}
}
