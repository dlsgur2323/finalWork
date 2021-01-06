package com.spring.AtoZ.notice.dao;

import org.apache.ibatis.session.SqlSession;

public class NoticeDAOImpl implements NoticeDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
