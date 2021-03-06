package com.spring.AtoZ.dashboard.dto;

import java.util.Date;

public class ReleaseScheduleCommand {
	private String wh_code;
	private String dst_name;
	private String rls_ymd;
	private Date start_date;
	private Date end_date;
	private String co_code;
	private String cl_name;
	
	@Override
	public String toString() {
		return "ReleaseScheduleCommand [wh_code=" + wh_code + ", dst_name=" + dst_name + ", rls_ymd=" + rls_ymd
				+ ", start_date=" + start_date + ", end_date=" + end_date + ", co_code=" + co_code + ", cl_name="
				+ cl_name + "]";
	}
	public String getCl_name() {
		return cl_name;
	}
	public void setCl_name(String cl_name) {
		this.cl_name = cl_name;
	}
	public String getCo_code() {
		return co_code;
	}
	public void setCo_code(String co_code) {
		this.co_code = co_code;
	}
	public String getWh_code() {
		return wh_code;
	}
	public void setWh_code(String wh_code) {
		this.wh_code = wh_code;
	}
	public String getDst_name() {
		return dst_name;
	}
	public void setDst_name(String dst_name) {
		this.dst_name = dst_name;
	}
	public String getRls_ymd() {
		return rls_ymd;
	}
	public void setRls_ymd(String rls_ymd) {
		this.rls_ymd = rls_ymd;
	}
	public Date getStart_date() {
		return start_date;
	}
	public void setStart_date(Date start_date) {
		this.start_date = start_date;
	}
	public Date getEnd_date() {
		return end_date;
	}
	public void setEnd_date(Date end_date) {
		this.end_date = end_date;
	}
	
	
}
