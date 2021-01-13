package com.spring.AtoZ.dashboard.dto;

public class OrderScheduleCommand {
	private String sender;
	private String deli_ymd;
	private String co_code;
	
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getDeli_ymd() {
		return deli_ymd;
	}
	public void setDeli_ymd(String deli_ymd) {
		this.deli_ymd = deli_ymd;
	}
	public String getCo_code() {
		return co_code;
	}
	public void setCo_code(String co_code) {
		this.co_code = co_code;
	}
	
	@Override
	public String toString() {
		return "OrderScheduleCommand [sender=" + sender + ", deli_ymd=" + deli_ymd + ", co_code=" + co_code + "]";
	}
	
}
