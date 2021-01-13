package com.spring.AtoZ.mobile.dao;

import java.sql.SQLException;

import com.spring.AtoZ.vo.EmployeeVO;

public interface MobileDAO {
	EmployeeVO selectEmployee(String id) throws SQLException;
}
