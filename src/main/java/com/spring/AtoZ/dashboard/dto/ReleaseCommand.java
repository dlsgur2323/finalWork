package com.spring.AtoZ.dashboard.dto;

public class ReleaseCommand {
	private String cl_name;
	private String dst_name;
	private String emp_name;
	private String rls_ymd;
	
	public String getCl_name() {
		return cl_name;
	}
	public void setCl_name(String cl_name) {
		this.cl_name = cl_name;
	}
	public String getDst_name() {
		return dst_name;
	}
	public void setDst_name(String dst_name) {
		this.dst_name = dst_name;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getRls_ymd() {
		return rls_ymd;
	}
	public void setRls_ymd(String rls_ymd) {
		this.rls_ymd = rls_ymd;
	}
	
	@Override
	public String toString() {
		return "ReleaseCommand [cl_name=" + cl_name + ", dst_name=" + dst_name + ", emp_name=" + emp_name + ", rls_ymd="
				+ rls_ymd + "]";
	}
	
}
