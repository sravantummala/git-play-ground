package com.Spring.Controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class ContactUscontroller {
	
	@RequestMapping("/contactus")
	public String getWelcomepage() {
		
		
		
		return "contactus";
	}

}
