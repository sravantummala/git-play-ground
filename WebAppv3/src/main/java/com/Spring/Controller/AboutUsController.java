package com.Spring.Controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class AboutUsController {
	
	@RequestMapping("/aboutus")
	public String getWelcomepage() {
		
		
		
		return "aboutus";
	}

}
