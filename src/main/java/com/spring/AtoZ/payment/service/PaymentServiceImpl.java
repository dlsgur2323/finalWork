package com.spring.AtoZ.payment.service;

import com.spring.AtoZ.payment.dao.PaymentDAO;

public class PaymentServiceImpl implements PaymentService {
	private PaymentDAO paymentDAO;
	public void setPaymentDAO(PaymentDAO paymentDAO) {
		this.paymentDAO = paymentDAO;
	}
}
