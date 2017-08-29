package com.Spring.validators;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.Spring.domain.Users;
@Component
public class Passwordvalidator implements Validator {

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return true;
	}

	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		
		Users users= (Users)target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmpassword", null, "Confirm password should not be empty");
		if(!users.getPassword().equals(users.getConfirmpassword())){
			
			ValidationUtils.rejectIfEmpty(errors, "confirmpassord", null, "password and confirm password are not matching");
		}
		
		
	}

	
	
}
