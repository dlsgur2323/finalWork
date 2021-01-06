package com.spring.AtoZ.contract.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="contract")
public class ContractController {
	
	@RequestMapping(value="/list")
	public String getWhsList() {
		String url = "/contract/wh_list.frame";
		return url;
	}

	@RequestMapping(value="/whs")
	public String getWhsContractList() {
		String url = "/contract/wh_contractList.frame";
		return url;
	}
	@RequestMapping(value="/com")
	public String getComContractList() {
		String url = "/contract/com_contractList.frame";
		return url;
	}
	@RequestMapping(value="/c2c")
	public String getC2cContractList() {
		String url = "/contract/c2c_contractList.frame";
		return url;
	}
}
