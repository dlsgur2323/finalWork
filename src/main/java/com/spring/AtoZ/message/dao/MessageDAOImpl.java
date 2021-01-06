package com.spring.AtoZ.message.dao;

import org.apache.ibatis.session.SqlSession;

public class MessageDAOImpl implements MessageDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}		
