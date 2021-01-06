package com.spring.AtoZ.release.dao;

import org.apache.ibatis.session.SqlSession;

public class ReleaseDAOImpl implements ReleaseDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
