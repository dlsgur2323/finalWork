package com.spring.AtoZ.member.service;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.AtoZ.common.dto.SearchMap;
import com.spring.AtoZ.vo.ClientVO;

public interface MemberService {
	Map<String, Object> getClientList(SearchMap sm) throws SQLException;
	
	ClientVO getClient(String cl_id) throws SQLException;
}
