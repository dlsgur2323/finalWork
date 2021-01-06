package com.spring.AtoZ.release.service;

import com.spring.AtoZ.release.dao.ReleaseDAO;

public class ReleaseServiceImpl implements ReleaseService {
	private ReleaseDAO releaseDAO;
	public void setReleaseDAO(ReleaseDAO releaseDAO) {
		this.releaseDAO = releaseDAO;
	}
}
