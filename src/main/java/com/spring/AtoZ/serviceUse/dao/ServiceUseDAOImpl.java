package com.spring.AtoZ.serviceUse.dao;

import org.apache.ibatis.session.SqlSession;

public class ServiceUseDAOImpl implements ServiceUseDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
