package com.spring.AtoZ.notice.service;

import com.spring.AtoZ.notice.dao.NoticeDAO;

public class NoticeServiceImpl implements NoticeService{
	private NoticeDAO noticeDAO;
	public void setNoticeDAO(NoticeDAO noticeDAO) {
		this.noticeDAO = noticeDAO;
	}
}
