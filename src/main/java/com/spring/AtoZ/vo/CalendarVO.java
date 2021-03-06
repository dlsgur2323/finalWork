package com.spring.AtoZ.vo;

import java.util.Date;

public class CalendarVO {
	private String title;
	private Date start;
	private Date end;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	
	@Override
	public String toString() {
		return "CalendarVO [title=" + title + ", start=" + start + ", end=" + end + "]";
	}
	
}
