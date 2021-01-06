package com.spring.AtoZ.questions.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/questions")
public class QuestionsController {
	
	@RequestMapping("list")
	public String list() {
		String url = "questions/list.frame";				
		
		return url;
	}
	
	@RequestMapping("regist")
	public String regist() {
		String url = "questions/regist.frame";				
		
		return url;
	}

}
