package com.tj.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String home() throws Exception {
		
		int a=0;
		if(a%2==0) {
			throw new Exception();
		}
		
		return "/WEB-INF/views/index.jsp";
	}
}
