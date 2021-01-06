package com.spring.AtoZ.charge.dao;

import org.apache.ibatis.session.SqlSession;

public class ChargeDAOImpl implements ChargeDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}

}
