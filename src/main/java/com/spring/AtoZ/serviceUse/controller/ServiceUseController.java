package com.spring.AtoZ.serviceUse.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("serviceUse/")
public class ServiceUseController {

	@RequestMapping("loginForm")
	public String login() {
		String url = "serviceUse/login.frame";

		return url;
	}
	
	@RequestMapping("/registForm")
	public String serviceRegistForm() {
		String url = "serviceUse/regist.home";

		return url;
	}
	
	@RequestMapping(value="regist", method=RequestMethod.POST)
	public void serviceRegist(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException {
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('회원등록이 정상적으로 되었습니다.");
		out.println("window.opener.location.href='"+request.getContextPath()+"/common/indexPage.do';");
		out.println("window.close()");
		out.println("</script>");

	}
	
	@RequestMapping("/useList")
	public String useList() {
		String url = "serviceUse/useList.frame";

		return url;
	}
	
	@RequestMapping("/EDetail")
	public String EDetail() {
		String url = "serviceUse/EDetail.pop";

		return url;
	}
	
	@RequestMapping("/WDetail")
	public String WDetail() {
		String url = "serviceUse/WDetail.pop";

		return url;
	}
	

}
