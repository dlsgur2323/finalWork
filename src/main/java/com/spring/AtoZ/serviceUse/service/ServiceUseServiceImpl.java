package com.spring.AtoZ.serviceUse.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.spring.AtoZ.serviceUse.dao.ServiceUseDAO;
import com.spring.AtoZ.vo.ClientVO;

public class ServiceUseServiceImpl implements ServiceUseService {
	private ServiceUseDAO serviceUseDAO;
	public void setServiceUseDAO(ServiceUseDAO serviceUseDAO) {
		this.serviceUseDAO = serviceUseDAO;
	}
	@Override
	public void login(String cl_id, String cl_pwd, HttpSession session) throws SQLException {
		
		ClientVO client = serviceUseDAO.selectClientById(cl_id);
//		if(client == null) throw new NotFoundIDException();
//		if(!pwd.equals(client.getPwd())) throw new InvalidPasswordException();
		
		session.setAttribute("loginUser", client);
		session.setMaxInactiveInterval(20*60);
	}
	@Override
	public ClientVO getClient(String cl_id) throws SQLException {
		ClientVO client = serviceUseDAO.selectClientById(cl_id);
		return client;
	}
	@Override
	public void registCOClient(ClientVO client) throws SQLException {
		serviceUseDAO.insertCOClient(client);
		
	}
}
