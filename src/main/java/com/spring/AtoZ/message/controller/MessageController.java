package com.spring.AtoZ.message.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/message")
public class MessageController {

	@RequestMapping("/messageList")
	public String messageList() {
		String url = "/message/messageList.pop";
		return url;
	}
	
	@RequestMapping("/messageDetail")
	public String messageDetail() {
		String url = "/message/messageDetail.pop";
		return url;
	}
	
	@RequestMapping("/messageSend")
	public String messageSend() {
		String url = "/message/messageSend.pop";
		return url;
	}
}
