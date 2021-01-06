package com.spring.AtoZ.commoncode.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.AtoZ.commoncode.service.CommonCodeService;

@Controller
@RequestMapping("/SY/coCode")
public class CommonCodeController {
	
	@Autowired
	private CommonCodeService commonCodeService;
	
	@RequestMapping(value="/coCodeList")
	public ModelAndView branchList(ModelAndView mnv, HttpServletRequest request){
		String url = "commonCode/codeList.frame";
		
		String ref = request.getHeader("REFERER");
		
		mnv.addObject("ref", ref);
		mnv.setViewName(url);
		
		return mnv;
	}
	public void registBranch(){
		// TODO Auto-generated method stub
		
	}
	public void modifyBranch(){
		// TODO Auto-generated method stub
		
	}
	public void removeBranch(){
		// TODO Auto-generated method stub
		
	}
	
}
