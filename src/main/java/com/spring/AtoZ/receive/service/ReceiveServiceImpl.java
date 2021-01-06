package com.spring.AtoZ.receive.service;

import com.spring.AtoZ.receive.dao.ReceiveDAO;

public class ReceiveServiceImpl implements ReceiveService {
	private ReceiveDAO receiveDAO;
	public void setReceiveDAO(ReceiveDAO receiveDAO) {
		this.receiveDAO = receiveDAO;
	}
}
