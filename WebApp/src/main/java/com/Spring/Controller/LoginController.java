package com.Spring.Controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Spring.Service.Loginservice;
import com.Spring.domain.Users;

@Controller
public class LoginController {
	
	@RequestMapping("/applogin")
	public String getLogin()
	{
		return "login";
	}
	
	
	@RequestMapping("/logout")
	public String getLogoutPage()
	{
		return "logout";
	}
	

	/*@Autowired
	private Loginservice loginservice;

	@RequestMapping(method = RequestMethod.GET)
	public String showForm(Map<String, Users> model) {
		Users users = new Users();
		model.put("users", users);
		return "login";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String processForm(@Valid Users users, BindingResult result, Map<String, Users> model) {

		if (result.hasErrors()) {
			return "login";
		}

		
		 * String userName = "UserName"; String password = "password"; loginForm
		 * = (LoginForm) model.get("loginForm"); if
		 * (!loginForm.getUserName().equals(userName) ||
		 * !loginForm.getPassword().equals(password)) { return "loginform"; }
		 
		boolean userExists = loginservice.checklogin(users.getEmail(), users.getPassword());
		if (userExists) {
			model.put("users", users);
			return "loginsuccess";
		} else {
			result.rejectValue("Email", "invaliduser");
			return "login";
		}

	}
*/
}
