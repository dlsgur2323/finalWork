package com.spring.AtoZ.mobile.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.AtoZ.mobile.service.MobileService;

@Controller
public class MobileController {
	
	@Autowired
	MobileService mobileService;

	@RequestMapping("m.loginForm")
	public String loginForm() {
		String url = "mobile/loginForm.pop";
		return url;
	}
	
	@RequestMapping("m.login")
	public String login(String id, String pwd, HttpSession session) throws Exception{
		String url = "mobile/main.mob";
		System.out.println(id);
		System.out.println(pwd);
		mobileService.login(id, pwd, session);
		return url;
	}
	
	@RequestMapping("m.logout")
	public String logout(HttpSession session) throws Exception{
		String url = "mobile/loginForm.pop";
		session.invalidate();
		return url;
	}
	
	@RequestMapping("m.main")
	public String main() {
		String url = "mobile/main.mob";
		return url;
	}
	
	@RequestMapping("m.work")
	public String work() {
//		String url = "mobile/work.mob";
		String url = "mobile/test.mob";
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
