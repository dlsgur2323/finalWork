package com.spring.AtoZ.member.dao;

import java.sql.SQLException;
import java.util.List;

import com.spring.AtoZ.common.dto.SearchMap;
import com.spring.AtoZ.vo.ClientVO;

public interface MemberDAO {

	List<ClientVO> selectSearchClientList(SearchMap sm) throws SQLException;
	
	int selectClientListCount(SearchMap sm) throws SQLException;
	
	ClientVO selectClientBycl_id(String cl_id) throws SQLException;
}
