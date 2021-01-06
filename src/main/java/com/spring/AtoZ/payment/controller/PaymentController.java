package com.spring.AtoZ.payment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/payment")
public class PaymentController {
	
	@RequestMapping("list")
	public String list() {
		String url = "payment/list.frame";				
		
		return url;
	}
	
	@RequestMapping("payment")
	public String payment() {
		String url = "payment/payment.frame";				
		
		return url;
	}

	@RequestMapping(value="/wh_pay")
	public String getWhPayList() {
		String url = "/payment/wh_pay.frame";
		return url;
	}
	@RequestMapping(value="/com_pay")
	public String getComPayList() {
		String url = "/payment/com_pay.frame";
		return url;
	}
	
}
