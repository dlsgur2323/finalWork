package com.spring.AtoZ.item.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/item")
public class ItemContorller {

	@RequestMapping("/standardList")
	public String standardList() {
		String url = "/item/standardList.pop";
		return url;
	}
	
	@RequestMapping("/standardRegist")
	public String standardRegist() {
		String url = "/item/standardRegist.pop";
		return url;
	}
	
	@RequestMapping("/standardModify")
	public String standardModify() {
		String url = "/item/standardModify.pop";
		return url;
	}
	
	@RequestMapping("/itemList")
	public String itemList() {
		String url = "/item/itemList.index";
		return url;
	}
	
	@RequestMapping("/itemRegist")
	public String itemRegist() {
		String url = "/item/itemRegist.pop";
		return url;
	}
	
	@RequestMapping("/itemModify")
	public String itemModify() {
		String url = "/item/itemModify.pop";
		return url;
	}
}
