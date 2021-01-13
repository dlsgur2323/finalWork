package com.spring.AtoZ.mobile.service;

import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import com.spring.AtoZ.exception.MissingPasswordException;
import com.spring.AtoZ.exception.NotFoundIdException;

public interface MobileService {
	void login(String id, String pwd, HttpSession session) throws NotFoundIdException, MissingPasswordException, SQLException;
}
