package com.spring.AtoZ.dashboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.AtoZ.dashboard.service.DashBoardService;

@Controller
@RequestMapping("/dashBoard")
public class DashBoardController {


	@Autowired
	private DashBoardService dashboardService;
	
	@RequestMapping("/adminDashBoard")
	public String adminDashBoard() {
		String url = "dashboard/adminDashBoard";
		
		
		return url;
	}
	
	@RequestMapping("/company")
	public String companyMain() {
		String url = "dashBoard/company.index";
		return url;
	}
	
	@RequestMapping(value="/whs")
	public String warehouse() {
		String url = "/dashBoard/wms.frame";
		
		return url;
	}
}
