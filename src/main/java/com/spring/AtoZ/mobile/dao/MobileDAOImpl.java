package com.spring.AtoZ.mobile.dao;

import org.apache.ibatis.session.SqlSession;

public class MobileDAOImpl implements MobileDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
