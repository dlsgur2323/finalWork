package com.spring.AtoZ.mobile.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.AtoZ.vo.EmployeeVO;

public class MobileDAOImpl implements MobileDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
	
	@Override
	public EmployeeVO selectEmployee(String id) throws SQLException {
		EmployeeVO employee = null;
		employee = sqlSession.selectOne("Mobile-Mapper.selectEmployee", id);
		return employee;
	}
}
