package com.spring.AtoZ.item.dao;

import org.apache.ibatis.session.SqlSession;

public class ItemDAOImple implements ItemDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
