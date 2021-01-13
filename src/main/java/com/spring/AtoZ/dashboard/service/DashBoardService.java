package com.spring.AtoZ.dashboard.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.AtoZ.dashboard.dto.OrderScheduleCommand;
import com.spring.AtoZ.dashboard.dto.ReleaseScheduleCommand;

public interface DashBoardService {
	
	Map<String, Object> forWhsDash() throws SQLException;
	// 대쉬보드 상단 위젯 4개의 건수 숫자들 
	Map<String, Object> getWidgetNumbers() throws SQLException;
	
	Map<String, Object> getDashboardData(String cl_code) throws SQLException;
	
	List<OrderScheduleCommand> getOrderSchedule(String cl_code) throws SQLException;
	
	List<ReleaseScheduleCommand> getReleaseSchedule(String cl_code) throws SQLException;
}

