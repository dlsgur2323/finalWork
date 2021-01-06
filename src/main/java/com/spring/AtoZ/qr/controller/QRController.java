package com.spring.AtoZ.qr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QRController {

	@RequestMapping("qr/print")
	public String qrprint() {
		String url = "qr/qrprint.frame";
		return url;
	}
}
