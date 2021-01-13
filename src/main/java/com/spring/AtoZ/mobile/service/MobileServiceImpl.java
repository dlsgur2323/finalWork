package com.spring.AtoZ.mobile.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.spring.AtoZ.exception.MissingPasswordException;
import com.spring.AtoZ.exception.NotFoundIdException;
import com.spring.AtoZ.mobile.dao.MobileDAO;
import com.spring.AtoZ.vo.EmployeeVO;

public class MobileServiceImpl implements MobileService {
	private MobileDAO mobileDAO;
	public void setMobileDAO(MobileDAO mobileDAO) {
		this.mobileDAO = mobileDAO;
	}
	
	@Override
	public void login(String id, String pwd, HttpSession session) throws NotFoundIdException, MissingPasswordException, SQLException {
		//로그인 시도에 대한 로그기록?
		EmployeeVO employee = mobileDAO.selectEmployee(id);
		
		if (employee.getEmp_id() == null) {
			throw new NotFoundIdException();
		} else if (!employee.getEmp_pwd().equals(pwd)) {
			throw new MissingPasswordException();
		}
		
		session.setAttribute("loginUser", employee);
		session.setMaxInactiveInterval(60*20);
	}
}
