package com.spring.AtoZ.attendance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

	@RequestMapping("commuteList")
	public String commuteList() {
		String url = "attendance/commuteList.frame";		
		
		
		
		return url;
	}
	
	@RequestMapping("attendanceList")
	public String attendanceList() {
		String url = "attendance/attendanceList.frame";				
		
		return url;
	}
	
	@RequestMapping("regist")
	public String regist() {
		String url = "attendance/regist.index";				
		
		return url;
	}
	
}
