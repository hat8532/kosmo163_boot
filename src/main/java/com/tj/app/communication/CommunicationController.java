package com.tj.app.communication;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/communication/*")
public class CommunicationController {
	
	@RequestMapping("list")
	public String list() {
		return "communication/list";
	}
	
	@RequestMapping("detail")
	public String detail() {
		return "communication/detail";
	}
	
	@RequestMapping("update")
	public String update() {
		return "communication/update";
	}
}
