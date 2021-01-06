package com.spring.AtoZ.stock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="stock")
public class StockController {
	@RequestMapping(value="/wh_list")
	public String getWhStockList() {
		String url = "/stock/wh_stock_list.frame";
		return url;
	}
	@RequestMapping(value="/com_list")
	public String getComStockList() {
		String url = "/stock/com_stock_list.frame";
		return url;
	}
	@RequestMapping(value="/com_check")
	public String getComStockCheckList() {
		String url = "/stock/check_stock.frame";
		return url;
	}
	@RequestMapping(value="/wh_stock_his")
	public String getWhStockHistory() {
		String url = "/stock/wh_stock_history.frame";
		return url;
	}
}
