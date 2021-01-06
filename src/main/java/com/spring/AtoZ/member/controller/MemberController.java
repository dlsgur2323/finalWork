package com.spring.AtoZ.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	@RequestMapping("/memberList")
	public String memberList() {
		String url = "member/memberList.index";
		return url;
	}
	
	@RequestMapping("/companyDetail")
	public String companyDetail() {
		String url = "member/companyDetail.pop";
		return url;
	}
	
	@RequestMapping("/warehouseDetail")
	public String warehouseDetail() {
		String url = "member/warehouseDetail.pop";
		return url;
	}
	
	@RequestMapping("/comwareDetail")
	public String comwareDetail() {
		String url = "member/comwareDetail.pop";
		return url;
	}
	
	@RequestMapping("/companyModify")
	public String companyModify() {
		String url = "member/companyModify.pop";
		return url;
	}
	
	@RequestMapping("/warehouseModify")
	public String warehouseModify() {
		String url = "member/warehouseModify.pop";
		return url;
	}
	
	@RequestMapping("/comwareModify")
	public String comwareModify() {
		String url = "member/comwareModify.pop";
		return url;
	}
	
	@RequestMapping("/findId")
	public String findId() {
		String url = "member/findId.pop";
		return url;
	}
	
	@RequestMapping("/findPwd")
	public String findPwd() {
		String url = "member/findPwd.pop";
		return url;
	}
	
	@RequestMapping("/newPwd")
	public String newPwd() {
		String url = "member/newPwd.pop";
		return url;
	}
	
}
