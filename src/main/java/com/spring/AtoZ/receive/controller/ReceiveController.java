package com.spring.AtoZ.receive.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.AtoZ.receive.service.ReceiveService;

@Controller
@RequestMapping(value="receive")
public class ReceiveController {
	
	@RequestMapping(value="inwhs")
	public String registAfterReceive() {
		String url = "/receive/in_warehouse.frame";
		return url;
	}

	@Autowired
	private ReceiveService receiveService;
	
	@RequestMapping(value="receive/receiveList")
	public ModelAndView receiveList(ModelAndView mnv){
		String url = "receive/receivedItemList.pop";
		
		mnv.setViewName(url);
		
		return mnv;
	} 
	
}

