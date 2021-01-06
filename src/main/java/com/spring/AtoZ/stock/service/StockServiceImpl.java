package com.spring.AtoZ.stock.service;

import com.spring.AtoZ.stock.dao.StockDAO;

public class StockServiceImpl {
	private StockDAO stockDAO;
	public void setStockDAO(StockDAO stockDAO) {
		this.stockDAO = stockDAO;
	}
}
