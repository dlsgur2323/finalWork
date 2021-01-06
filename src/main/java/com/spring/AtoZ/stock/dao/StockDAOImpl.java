package com.spring.AtoZ.stock.dao;

import org.apache.ibatis.session.SqlSession;

public class StockDAOImpl implements StockDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
