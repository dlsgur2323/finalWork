package com.spring.AtoZ.item.service;

import com.spring.AtoZ.item.dao.ItemDAO;

public class ItemServiceImpl implements ItemService {
	private ItemDAO itemDAO;
	public void setItemDAO(ItemDAO itemDAO) {
		this.itemDAO = itemDAO;
	}
}
