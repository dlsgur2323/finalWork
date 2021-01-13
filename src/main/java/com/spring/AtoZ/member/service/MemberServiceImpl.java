package com.spring.AtoZ.member.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.AtoZ.common.dto.PageMaker;
import com.spring.AtoZ.common.dto.SearchMap;
import com.spring.AtoZ.member.dao.MemberDAO;
import com.spring.AtoZ.vo.ClientVO;

public class MemberServiceImpl implements MemberService {
	private MemberDAO memberDAO;
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@Override
	public Map<String, Object> getClientList(SearchMap sm) throws SQLException {
		List<ClientVO> clientlist = memberDAO.selectSearchClientList(sm);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(sm);
		pageMaker.setTotalCount(memberDAO.selectClientListCount(sm));
		
		Map<String, Object> dataMap = new HashMap<String, Object>();
		dataMap.put("clientlist", clientlist);
		dataMap.put("pageMaker", pageMaker);
		return dataMap;
	}

	@Override
	public ClientVO getClient(String cl_id) throws SQLException {
		ClientVO client = memberDAO.selectClientBycl_id(cl_id);
		return client;
	}
	
}
