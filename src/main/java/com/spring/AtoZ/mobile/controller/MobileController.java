package com.spring.AtoZ.mobile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MobileController {

	@RequestMapping("m.main")
	public String main() {
		String url = "mobile/main.mob";
		return url;
	}
	
	@RequestMapping("m.work")
	public String work() {
		String url = "mobile/work.mob";
		return url;
	}
	
	@RequestMapping("m.stockcount")
	public String stock() {
		String url = "mobile/stockcount.mob";
		return url;
	}

	@RequestMapping("m.receiveAndRelease")
	public String receive() {
		String url = "mobile/receiveAndRelease.mob";
		return url;
	}
	
	@RequestMapping("m.receiveList")
	public String getReceiveList() {
		String url = "mobile/receiveList.mob";
		return url;
	}
	
	@RequestMapping("m.receiveDetail")
	public String getReceiveDetail() {
		String url = "mobile/receiveDetail.mob";
		return url;
	}
	
	@RequestMapping("m.releaseList")
	public String getReleaseList() {
		String url = "mobile/releaseList.mob";
		return url;
	}
	
	@RequestMapping("m.releaseDetail")
	public String getReleaseDetail() {
		String url = "mobile/releaseDetail.mob";
		return url;
	}
	
	@RequestMapping("m.stockList")
	public String getStockList() {
		String url = "mobile/stockList.mob";
		return url;
	}
}
