package com.spring.AtoZ.contract.dao;

import org.apache.ibatis.session.SqlSession;

public class ContractDAOImpl implements ContractDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}
