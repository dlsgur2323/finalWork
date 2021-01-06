package com.spring.AtoZ.strategy.dao;

import org.apache.ibatis.session.SqlSession;

public class StrategyDAOImpl implements StrategyDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
