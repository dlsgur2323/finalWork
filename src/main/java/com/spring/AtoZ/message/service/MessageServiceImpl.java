package com.spring.AtoZ.message.service;

import com.spring.AtoZ.message.dao.MessageDAO;

public class MessageServiceImpl implements MessageService {
	private MessageDAO messageDAO;
	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}
}
