package com.spring.AtoZ.payment.dao;

import org.apache.ibatis.session.SqlSession;

public class PaymentDAOImpl implements PaymentDAO {
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
}	
