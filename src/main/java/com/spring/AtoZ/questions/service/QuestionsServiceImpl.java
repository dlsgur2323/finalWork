package com.spring.AtoZ.questions.service;

import com.spring.AtoZ.questions.dao.QuestionsDAO;

public class QuestionsServiceImpl implements QuestionsService {
	private QuestionsDAO questionsDAO;
	public void setQuestionsDAO(QuestionsDAO questionsDAO) {
		this.questionsDAO = questionsDAO;
	}
}
