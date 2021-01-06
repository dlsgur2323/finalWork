package com.spring.AtoZ.picking.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PickingController {

	@RequestMapping(value="picking/pickingList")
	public ModelAndView receiveList(ModelAndView mnv){
		String url = "picking/pickingModify.frame";
		
		mnv.setViewName(url);
		
		return mnv;
	} 
}
