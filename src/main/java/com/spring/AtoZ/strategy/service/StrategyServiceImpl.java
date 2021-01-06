package com.spring.AtoZ.strategy.service;

import com.spring.AtoZ.strategy.dao.StrategyDAO;

public class StrategyServiceImpl implements StrategyService {
	private StrategyDAO strategyDAO;
	public void setStrategyDAO(StrategyDAO strategyDAO) {
		this.strategyDAO = strategyDAO;
	}
}
