package com.spring.AtoZ.dashboard.dao;

import org.apache.ibatis.session.SqlSession;

public class DashBoardDAOImpl implements DashBoardDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
