package com.spring.AtoZ.dashboard.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.spring.AtoZ.dashboard.dto.EmpCommand;
import com.spring.AtoZ.dashboard.dto.OrderScheduleCommand;
import com.spring.AtoZ.dashboard.dto.ReleaseCommand;
import com.spring.AtoZ.dashboard.dto.ReleaseScheduleCommand;
import com.spring.AtoZ.vo.OrderVO;

public class DashBoardDAOImpl implements DashBoardDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
	@Override
	public int getRlsReqNum() throws SQLException {
		int result = sqlSession.selectOne("Dashboard-Mapper.getRlsReqNum");
		return result;
	}
	@Override
	public int getInReqNum() throws SQLException {
		int result = sqlSession.selectOne("Dashboard-Mapper.getInReqNum");
		return result;
	}
	@Override
	public int getInPlanNum() throws SQLException {
		int result = sqlSession.selectOne("Dashboard-Mapper.getInPlanNum");
		return result;
	}
	
	@Override
	public int getOutPlanNum() throws SQLException {
		int result = sqlSession.selectOne("Dashboard-Mapper.getOutPlanNum");
		return result;
	}

	@Override
	public List<EmpCommand> getEmpList() throws SQLException {
		List<EmpCommand> empList = sqlSession.selectList("Dashboard-Mapper.getEmpList");
		return empList;
	}
	
	@Override
	public int selectQnaCnt() throws SQLException {
		
		int qnaCnt = sqlSession.selectOne("DashBoard-Mapper.selectQnaCnt");
		
		return qnaCnt;
	}

	@Override
	public int selectContractReqCnt() throws SQLException {
		
		int crReqCnt = sqlSession.selectOne("DashBoard-Mapper.selectContractReqCnt");
		
		return crReqCnt;
	}

	@Override
	public int selectContractExpCnt() throws SQLException {
		
		int crExpCnt = sqlSession.selectOne("DashBoard-Mapper.selectContractExpCnt");
		
		return crExpCnt;
	}

	@Override
	public int selectPaymentHisCnt() throws SQLException {
		
		int payHisCnt = sqlSession.selectOne("DashBoard-Mapper.selectPaymentHisCnt");
		
		return payHisCnt;
	}
	
	@Override
	public int selectCountinOrderByToday(String cl_code) throws SQLException {
		int cnt = sqlSession.selectOne("Dashboard-Mapper.selectCountinOrderByToday", cl_code);
		return cnt;
	}
	@Override
	public int selectCountreleaseByToday(String cl_code) throws SQLException {
		int cnt = sqlSession.selectOne("Dashboard-Mapper.selectCountreleaseByToday", cl_code);
		return cnt;
	}
	@Override
	public int selectCountc2cContract(String cl_code) throws SQLException {
		int cnt = sqlSession.selectOne("Dashboard-Mapper.selectCountc2cContract", cl_code);
		return cnt;
	}
	@Override
	public int selectCountmsgByreadYn(String cl_code) throws SQLException {
		int cnt = sqlSession.selectOne("Dashboard-Mapper.selectCountmsgByreadYn", cl_code);
		return cnt;
	}
	@Override
	public List<OrderVO> selectReceiveListByToday(String cl_code) throws SQLException {
		List<OrderVO> orderlist = sqlSession.selectList("Dashboard-Mapper.selectReceiveListByToday", cl_code);
		return orderlist;
	}
	@Override
	public List<ReleaseCommand> selectReleaseListByToday(String cl_code) throws SQLException {
		List<ReleaseCommand> releaselist = sqlSession.selectList("Dashboard-Mapper.selectReleaseListByToday", cl_code);
		return releaselist;
	}

	@Override
	public List<OrderScheduleCommand> selectOrderSchedule(String cl_code) throws SQLException {
		List<OrderScheduleCommand> orderschedulelist = sqlSession.selectList("Dashboard-Mapper.selectOrderSchedule", cl_code);
		return orderschedulelist;
	}

	@Override
	public List<ReleaseScheduleCommand> selectReleaseSchedule(String cl_Code) throws SQLException {
		List<ReleaseScheduleCommand> releaseschedulelist = sqlSession.selectList("Dashboard-Mapper.selectReleaseSchedule", cl_Code);
		return releaseschedulelist;
	}

}

