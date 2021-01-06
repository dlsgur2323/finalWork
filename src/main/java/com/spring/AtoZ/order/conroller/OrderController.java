package com.spring.AtoZ.order.conroller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@RequestMapping("list")
	public String list() {
		String url = "order/list.frame";				
		
		return url;
	}
	
	@RequestMapping("regist")
	public String regist() {
		String url = "order/regist.frame";				
		
		return url;
	}
	
	@RequestMapping("itemSearch")
	public String itemSearch() {
		String url = "order/item_Search.pop";				
		
		return url;
	}
	
	@RequestMapping("comSearch")
	public String comSearch() {
		String url = "order/com_Search.pop";				
		
		return url;
	}

}
