package com.spring.AtoZ.dashboard.service;

import com.spring.AtoZ.dashboard.dao.DashBoardDAO;

public class DashBoardServiceImpl implements DashBoardService {
	private DashBoardDAO dashBoardDAO;
	public void setDashBoardDAO(DashBoardDAO dashBoardDAO) {
		this.dashBoardDAO = dashBoardDAO;
	}
}
