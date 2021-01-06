package com.spring.AtoZ.notice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("notice/")
public class NoticeController {
	
	@RequestMapping("list")
	public String noticeList() {
		String url = "notice/list.frame";

		return url;
	}
	
	@RequestMapping("listAdmin")
	public String noticeListAdmin() {
		String url = "notice/listAdmin.frame";

		return url;
	}
	
	@RequestMapping("registForm")
	public String registForm() {
		String url = "notice/regist.pop";

		return url;
	}
	
	@RequestMapping("detail")
	public String detail() {
		String url = "notice/detail.pop";

		return url;
	}
	
	@RequestMapping("modifyForm")
	public String modify() {
		String url = "notice/modify.pop";

		return url;
	}
}
