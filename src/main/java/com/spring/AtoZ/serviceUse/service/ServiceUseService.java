package com.spring.AtoZ.serviceUse.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.spring.AtoZ.vo.ClientVO;

public interface ServiceUseService {
	// 로그인
	void login(String cl_id, String cl_pwd, HttpSession session) throws SQLException;
	
	//회원정보
	ClientVO getClient(String cl_id) throws SQLException;
	
	//회원등록
	void registCOClient(ClientVO client) throws SQLException;
}
