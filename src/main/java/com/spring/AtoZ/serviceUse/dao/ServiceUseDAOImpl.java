package com.spring.AtoZ.serviceUse.dao;

import java.sql.SQLException;

import org.apache.ibatis.session.SqlSession;

import com.spring.AtoZ.vo.ClientVO;

public class ServiceUseDAOImpl implements ServiceUseDAO {
	
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
	
	@Override
	public ClientVO selectClientById(String cl_id) throws SQLException {
		ClientVO client = sqlSession.selectOne("ServiceUse-Mapper.selectClientById", cl_id);
		return client;
	}

	@Override
	public void insertCOClient(ClientVO client) throws SQLException {
		sqlSession.update("ServiceUse-Mapper.insertCOClient", client);
		
	}
}
