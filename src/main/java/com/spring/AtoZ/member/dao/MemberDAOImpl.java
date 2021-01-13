package com.spring.AtoZ.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;

import com.spring.AtoZ.common.dto.SearchMap;
import com.spring.AtoZ.vo.ClientVO;

public class MemberDAOImpl implements MemberDAO{
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) { 
		this.sqlSession = sqlSession;
	}
	
	@Override
	public List<ClientVO> selectSearchClientList(SearchMap sm) throws SQLException {
		int offset = sm.getPageStartRowNum();
		int limit = sm.getPerPage();
		RowBounds rowBounds = new RowBounds(offset, limit);
		List<ClientVO> clientlist = sqlSession.selectList("Member-Mapper.selectSearchClientList",sm.getSearch(),rowBounds);
		return clientlist;
	}

	@Override
	public int selectClientListCount(SearchMap sm) throws SQLException {
		int cnt = 0;
		cnt = sqlSession.selectOne("Member-Mapper.selectSearchClientListCount", sm.getSearch());
		return cnt;
	}

	@Override
	public ClientVO selectClientBycl_id(String cl_id) throws SQLException {
		ClientVO client = sqlSession.selectOne("Member-Mapper.selectClientBycl_id", cl_id);
		return client;
	}
}
