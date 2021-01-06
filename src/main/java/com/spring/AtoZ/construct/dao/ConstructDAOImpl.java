package com.spring.AtoZ.construct.dao;

import org.apache.ibatis.session.SqlSession;

public class ConstructDAOImpl implements ConstructDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}	
