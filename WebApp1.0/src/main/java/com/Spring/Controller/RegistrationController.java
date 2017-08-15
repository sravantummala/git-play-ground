package com.Spring.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Spring.Service.Registrationservice;
import com.Spring.domain.Users;

@Controller
@RequestMapping("/register")
public class RegistrationController {

	@Autowired
	private Registrationservice registrationservice;

	@RequestMapping(method = RequestMethod.GET)
	public String getRegistrationPage(Model model) {
		Users users = new Users();
		model.addAttribute("users", users);
		//System.out.println(users);
		
		return "Registration";
	}

	
	@RequestMapping(method = RequestMethod.POST)

	public String outRegistration(@Valid Users users,BindingResult bindingresult) {
		
		if(bindingresult.hasErrors()){
			return "Registration";
		}
		
		boolean result=registrationservice.register(users);
		System.out.println("registration boolean : "+result);
	//	System.out.println(users);
		return "out";

	}
}
