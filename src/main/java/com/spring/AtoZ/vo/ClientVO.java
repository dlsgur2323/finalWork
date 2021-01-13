package com.spring.AtoZ.vo;

public class ClientVO {
	private String cl_code;
	private String cl_id;
	private String cl_pwd;
	private String cl_name;
	private String cl_ceo;
	private String cl_regno;
	private String cl_tel;
	private String cl_email;
	private String cl_addr;
	private String cre_ymd;
	private int act_yn;
	private String type_code;
	private int wh_area;
	private String wh_tcode;
	
	public String getCl_email() {
		return cl_email;
	}
	public void setCl_email(String cl_email) {
		this.cl_email = cl_email;
	}
	public String getCl_code() {
		return cl_code;
	}
	public void setCl_code(String cl_code) {
		this.cl_code = cl_code;
	}
	public String getCl_id() {
		return cl_id;
	}
	public void setCl_id(String cl_id) {
		this.cl_id = cl_id;
	}
	public String getCl_pwd() {
		return cl_pwd;
	}
	public void setCl_pwd(String cl_pwd) {
		this.cl_pwd = cl_pwd;
	}
	public String getCl_name() {
		return cl_name;
	}
	public void setCl_name(String cl_name) {
		this.cl_name = cl_name;
	}
	public String getCl_ceo() {
		return cl_ceo;
	}
	public void setCl_ceo(String cl_ceo) {
		this.cl_ceo = cl_ceo;
	}
	public String getCl_regno() {
		return cl_regno;
	}
	public void setCl_regno(String cl_regno) {
		this.cl_regno = cl_regno;
	}
	public String getCl_tel() {
		return cl_tel;
	}
	public void setCl_tel(String cl_tel) {
		this.cl_tel = cl_tel;
	}
	public String getCl_addr() {
		return cl_addr;
	}
	public void setCl_addr(String cl_addr) {
		this.cl_addr = cl_addr;
	}
	public String getCre_ymd() {
		return cre_ymd;
	}
	public void setCre_ymd(String cre_ymd) {
		this.cre_ymd = cre_ymd;
	}
	public int getAct_yn() {
		return act_yn;
	}
	public void setAct_yn(int act_yn) {
		this.act_yn = act_yn;
	}
	public String getType_code() {
		return type_code;
	}
	public void setType_code(String type_code) {
		this.type_code = type_code;
	}
	public int getWh_area() {
		return wh_area;
	}
	public void setWh_area(int wh_area) {
		this.wh_area = wh_area;
	}
	public String getWh_tcode() {
		return wh_tcode;
	}
	public void setWh_tcode(String wh_tcode) {
		this.wh_tcode = wh_tcode;
	}
	@Override
	public String toString() {
		return "ClientVO [cl_code=" + cl_code + ", cl_id=" + cl_id + ", cl_pwd=" + cl_pwd + ", cl_name=" + cl_name
				+ ", cl_ceo=" + cl_ceo + ", cl_regno=" + cl_regno + ", cl_tel=" + cl_tel + ", cl_email=" + cl_email
				+ ", cl_addr=" + cl_addr + ", cre_ymd=" + cre_ymd + ", act_yn=" + act_yn + ", type_code=" + type_code
				+ ", wh_area=" + wh_area + ", wh_tcode=" + wh_tcode + "]";
	}
	
	
}
