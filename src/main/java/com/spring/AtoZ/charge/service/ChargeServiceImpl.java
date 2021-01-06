package com.spring.AtoZ.charge.service;

import com.spring.AtoZ.charge.dao.ChargeDAO;

public class ChargeServiceImpl implements ChargeService{
	private ChargeDAO chargeDAO;
	public void setChargeDAO(ChargeDAO chargeDAO) {
		this.chargeDAO = chargeDAO;
	}
}
