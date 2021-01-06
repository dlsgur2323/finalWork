package com.spring.AtoZ.commoncode.dao;

import org.apache.ibatis.session.SqlSession;

public class CommonCodeDAOImpl implements CommonCodeDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
