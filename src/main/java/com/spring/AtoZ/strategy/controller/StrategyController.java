package com.spring.AtoZ.strategy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StrategyController {

	@RequestMapping(value="strategy/strategy")
	public ModelAndView receiveList(ModelAndView mnv){
		String url = "strategy/searchItem.pop";
		
		mnv.setViewName(url);
		
		return mnv;
	} 
	
}
