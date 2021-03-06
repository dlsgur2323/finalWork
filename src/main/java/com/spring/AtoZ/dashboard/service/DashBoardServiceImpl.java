package com.spring.AtoZ.dashboard.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.AtoZ.dashboard.dao.DashBoardDAO;
import com.spring.AtoZ.dashboard.dto.EmpCommand;
import com.spring.AtoZ.dashboard.dto.OrderScheduleCommand;
import com.spring.AtoZ.dashboard.dto.ReleaseCommand;
import com.spring.AtoZ.dashboard.dto.ReleaseScheduleCommand;
import com.spring.AtoZ.vo.OrderVO;

public class DashBoardServiceImpl implements DashBoardService {
		
	private DashBoardDAO dashBoardDAO;
	public void setDashBoardDAO(DashBoardDAO dashBoardDAO) {
		this.dashBoardDAO = dashBoardDAO;
	}
	
	
	private Map<String, Integer> getWidgetNums() throws SQLException {
		Map<String, Integer> dataMap = new HashMap<String, Integer>();
		int rlsReqNum = dashBoardDAO.getRlsReqNum();
		int inReqNum = dashBoardDAO.getInReqNum();
		int inPlanNum = dashBoardDAO.getInPlanNum();
		int outPlanNum = dashBoardDAO.getOutPlanNum();
		
		dataMap.put("rlsReqNum", rlsReqNum);
		dataMap.put("inReqNum", inReqNum);
		dataMap.put("inPlanNum", inPlanNum);
		dataMap.put("outPlanNum", outPlanNum); 
		
		return dataMap;
	}

	@Override
	public Map<String, Object> forWhsDash() throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		List<EmpCommand> empList = dashBoardDAO.getEmpList();
		dataMap.put("widgetNums", getWidgetNums());
		dataMap.put("empList", empList);
		return dataMap;
	}
	
	@Override
	public Map<String, Object> getWidgetNumbers() throws SQLException {
		
		//입력 처리 
		int qnaCnt = dashBoardDAO.selectQnaCnt();
		int crReqCnt = dashBoardDAO.selectContractReqCnt();
		int crExpCnt = dashBoardDAO.selectContractExpCnt();
		int payHisCnt = dashBoardDAO.selectPaymentHisCnt();
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		
		//출력
		dataMap.put("qnaCnt", qnaCnt);
		dataMap.put("crReqCnt", crReqCnt);
		dataMap.put("crExpCnt", crExpCnt);
		dataMap.put("payHisCnt", payHisCnt);
		
		return dataMap;
	}
	
	@Override
	public List<OrderScheduleCommand> getOrderSchedule(String cl_code) throws SQLException {
		List<OrderScheduleCommand> orderschedulelist = dashBoardDAO.selectOrderSchedule(cl_code);
		return orderschedulelist;
	}
	@Override
	public List<ReleaseScheduleCommand> getReleaseSchedule(String cl_code) throws SQLException {
		List<ReleaseScheduleCommand> releaseschedulelist = dashBoardDAO.selectReleaseSchedule(cl_code);
		return releaseschedulelist;
	}
	@Override
	public Map<String, Object> getDashboardData(String cl_code) throws SQLException {
		Map<String, Object> dataMap = new HashMap<String, Object>();
		int cot = dashBoardDAO.selectCountinOrderByToday(cl_code);
		int crt = dashBoardDAO.selectCountreleaseByToday(cl_code);
		int ctc = dashBoardDAO.selectCountc2cContract(cl_code);
		int cmn = dashBoardDAO.selectCountmsgByreadYn(cl_code);
		List<OrderVO> receivelist = dashBoardDAO.selectReceiveListByToday(cl_code);
		List<ReleaseCommand> releaselist = dashBoardDAO.selectReleaseListByToday(cl_code);
		dataMap.put("cot", cot);
		dataMap.put("crt", crt);
		dataMap.put("ctc", ctc);
		dataMap.put("cmn", cmn);
		dataMap.put("receivelist", receivelist);
		dataMap.put("releaselist", releaselist);
		return dataMap;
	}
}
