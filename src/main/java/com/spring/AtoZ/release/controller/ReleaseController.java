package com.spring.AtoZ.release.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("release/")
public class ReleaseController {
	//기업 출고 예정
	@RequestMapping("expectedList")
	public String releaseEList() {
		String url = "release/expectedList.frame";

		return url;
	}
	

	
	@RequestMapping("WRegist")
	public String WRegist() {
		String url = "release/WRegist.pop";

		return url;
	}
	
	@RequestMapping("ERegist")
	public String ERegist() {
		String url = "release/ERegist.pop";

		return url;
	}
	@RequestMapping("ESearch")
	public String ESearch() {
		String url = "release/ESearch.pop";

		return url;
	}
	@RequestMapping("preItem")
	public String preItem() {
		String url = "release/preItem.pop";

		return url;
	}
	@RequestMapping("releaseList")
	public String releaseList() {
		String url = "release/releaseList.frame";

		return url;
	}
	@RequestMapping("employeeSearch")
	public String employeeSearch() {
		String url = "release/employeeSearch.pop";

		return url;
	}
	@RequestMapping("typeSearch")
	public String typeSearch() {
		String url = "release/typeSearch.pop";

		return url;
	}	

}
