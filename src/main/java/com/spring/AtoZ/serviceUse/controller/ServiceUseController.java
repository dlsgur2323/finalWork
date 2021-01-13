package com.spring.AtoZ.serviceUse.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.AtoZ.serviceUse.service.ServiceUseService;
import com.spring.AtoZ.vo.ClientVO;

@Controller
public class ServiceUseController {

	@Autowired
	ServiceUseService serviceUseService;
	//로그인폼 이동
	@RequestMapping("/serviceUse/loginForm")
	public String loginForm(@RequestParam(defaultValue="") String error, HttpServletResponse response) throws Exception{
		String url = "serviceUse/login.home";
		
		return url;
	}
	
	// 이용신청
	@RequestMapping("/serviceUse/registForm")
	public String serviceRegistForm() {
		String url = "serviceUse/regist.home";

		return url;
	}
	
	
	@RequestMapping(value="/serviceUse/regist", method=RequestMethod.GET)
	public void serviceRegist(HttpServletRequest request, HttpServletResponse response) throws SQLException,IOException {
		
		ClientVO client = new ClientVO(); 
		serviceUseService.registCOClient(client);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('회원등록이 정상적으로 되었습니다.");
		out.println("window.opener.location.href='"+request.getContextPath()+"/serviceUse/loginForm';");
		out.println("window.close()");
		out.println("</script>");
		out.close();

	}
	
	@RequestMapping(value="/serviceUse/idCheck", method=RequestMethod.POST)
	@ResponseBody
	//REST방식이라 어드바이서가 필요없이 여기서 처리해야 한다.
	public ResponseEntity<String> idCheck(String cl_id, HttpServletRequest request) {
		ResponseEntity<String> entity = null;
		
		ClientVO client;
		try {
			client = serviceUseService.getClient(cl_id);
			entity = new ResponseEntity<String>(client == null ? cl_id : "", HttpStatus.OK);
		} catch (SQLException e) {
			entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}
	
	@RequestMapping("SY/serviceUse/useList")
	public String useList() {
		String url = "serviceUse/useList.frame";

		return url;
	}
	
	@RequestMapping("SY/serviceUse/EDetail")
	public String EDetail() {
		String url = "serviceUse/EDetail.pop";

		return url;
	}
	
	@RequestMapping("SY/serviceUse/WDetail")
	public String WDetail() {
		String url = "serviceUse/WDetail.pop";

		return url;
	}
	

}
