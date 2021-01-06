package com.spring.AtoZ.order.service;

import com.spring.AtoZ.order.dao.OrderDAO;

public class OrderServiceImpl implements OrderService {
	private OrderDAO orderDAO;
	public void setOrderDAO(OrderDAO orderDAO) {
		this.orderDAO = orderDAO;
	}
}
