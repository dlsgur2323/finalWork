package com.spring.AtoZ.contract.service;

import com.spring.AtoZ.contract.dao.ContractDAO;

public class ContractServiceImpl implements ContractService{
	private ContractDAO contractDAO;
	public void setContractDAO(ContractDAO contractDAO) {
		this.contractDAO = contractDAO;
	}
}
