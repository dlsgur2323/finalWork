package com.spring.AtoZ.dashboard.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.AtoZ.dashboard.dto.EmpCommand;
import com.spring.AtoZ.dashboard.dto.OrderScheduleCommand;
import com.spring.AtoZ.dashboard.dto.ReleaseScheduleCommand;
import com.spring.AtoZ.dashboard.service.DashBoardService;
import com.spring.AtoZ.vo.CalendarVO;

@Controller
public class DashBoardController {


	@Autowired
	private DashBoardService dashboardService;
	
	@RequestMapping("/SY/dashBoard/adminDashBoard")
	public String adminDashBoard(ModelAndView mav) throws SQLException{
		String url = "dashBoard/adminDashBoard";
		
		Map<String, Object> dataMap = dashboardService.getWidgetNumbers();		
		mav.addAllObjects(dataMap);
		mav.setViewName(url);
		
		return url;
	}
	
	@RequestMapping("/CO/dashBoard/company")
	public ModelAndView companyMain(ModelAndView mnv,String cl_code) throws Exception{
		String url = "dashBoard/company.frame";
		if(cl_code==null) {
			cl_code="";
		}
		Map<String, Object> dataMap = dashboardService.getDashboardData(cl_code);
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/orderSchedule")
	@ResponseBody
	public ResponseEntity<List<CalendarVO>> orderSchedule(String cl_code) throws Exception {
		List<OrderScheduleCommand> ordercommand = dashboardService.getOrderSchedule(cl_code);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		List<CalendarVO> orderschedule = new ArrayList<CalendarVO>();
		for(OrderScheduleCommand order : ordercommand) {
			CalendarVO cal = new CalendarVO();
			cal.setTitle(order.getSender());
			Date start = sdf.parse(order.getDeli_ymd());
			cal.setStart(start);
			orderschedule.add(cal);
		}
		return new ResponseEntity<List<CalendarVO>>(orderschedule, HttpStatus.OK);
	}
	
	@RequestMapping("/releaseSchedule")
	@ResponseBody
	public ResponseEntity<List<CalendarVO>> releaseSchedule(String cl_code) throws Exception {
		List<ReleaseScheduleCommand> releasecommand = dashboardService.getReleaseSchedule(cl_code);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<CalendarVO> releaseschedule = new ArrayList<CalendarVO>();
		for(ReleaseScheduleCommand release : releasecommand) {
			CalendarVO cal = new CalendarVO();
			cal.setTitle(release.getCl_name() + " -> " + release.getDst_name());
			String starttime = release.getRls_ymd() + " " + release.getStart_date();
			String endtime = release.getRls_ymd() + " " + release.getEnd_date();
			Date start = sdf.parse(starttime);
			Date end = sdf.parse(endtime);
			cal.setStart(start);
			cal.setEnd(end);
			releaseschedule.add(cal);
		}
		return new ResponseEntity<List<CalendarVO>>(releaseschedule, HttpStatus.OK);
	}
	
	@RequestMapping(value="WH/dashboard/whs")
	public ModelAndView warehouse(ModelAndView mnv) throws SQLException{
		String url = "/dashBoard/wms.frame";
		Map<String, Object> dataMap = dashboardService.forWhsDash();
		List<EmpCommand> test= (List<EmpCommand>)dataMap.get("empList");		
		mnv.addObject("dataMap",dataMap);
		mnv.setViewName(url);
		return mnv;
	}
}
