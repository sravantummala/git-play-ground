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

	/*
	 * public void validate(Object target, Errors errors) { // TODO
	 * Auto-generated method stub
	 * 
	 * Users users= (Users)target;
	 * ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmpassword",
	 * null, "Confirm password should not be empty");
	 * if(!(users.getPassword()).equals(users.getConfirmpassword())){
	 * 
	 * //errors.reject("confirmpassword", "passwords do not match");
	 * ValidationUtils.rejectIfEmpty(errors, "confirmpassword", null,
	 * "password and confirm password are not matching");
	 * 
	 * 
	 * }
	 * 
	 * 
	 * }
	 */
	public void validate(Object target, Errors errors) {

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required.password", "Field name is required.");

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmpassword", "required.passwordConfirm",
				"Field name is required.");

		Users user = (Users) target;

		if (!(user.getPassword().equals(user.getConfirmpassword()))) {
			errors.rejectValue("password", "notmatch.password");
		}

	}

}
