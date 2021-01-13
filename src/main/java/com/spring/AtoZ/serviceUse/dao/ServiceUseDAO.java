package com.spring.AtoZ.serviceUse.dao;

import java.sql.SQLException;

import com.spring.AtoZ.vo.ClientVO;

public interface ServiceUseDAO {
	
	// 회원정보 조회
	ClientVO selectClientById(String cl_id) throws SQLException;
	
	// 회원등록
	void insertCOClient(ClientVO client) throws SQLException;
}
