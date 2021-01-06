package com.spring.AtoZ.receive.dao;

import org.apache.ibatis.session.SqlSession;

public class ReceiveDAOImpl implements ReceiveDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
