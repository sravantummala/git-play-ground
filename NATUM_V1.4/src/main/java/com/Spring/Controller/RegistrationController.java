package com.Spring.Controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Spring.Service.Registrationservice;
import com.Spring.domain.Users;
import com.Spring.validators.Passwordvalidator;

@Controller
@RequestMapping("/register")
public class RegistrationController {

	private static final Logger LOGGER=LoggerFactory.getLogger(RegistrationController.class);
	
	@Autowired
	private Registrationservice registrationservice;

	@Autowired
	private Passwordvalidator passwordvalidator;
	
	
	@RequestMapping(method = RequestMethod.GET)
	public String getRegistrationPage(Model model) {
		Users users = new Users();
		model.addAttribute("users", users);
		//System.out.println(users);
		
		return "Registration";
	}

	
	@RequestMapping(method = RequestMethod.POST)

	public String outRegistration(@Valid Users users,BindingResult bindingresult) {
		passwordvalidator.validate(users, bindingresult);
		if(bindingresult.hasErrors()){
			
			LOGGER.debug("-----Binding errors returning to input page------");
			
			return "Registration";
		}
		
		boolean result=registrationservice.register(users);
		LOGGER.info("registration boolean : "+result);
	//	System.out.println(users);
		return "out";

	}
}
