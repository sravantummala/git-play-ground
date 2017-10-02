package com.Spring.Service;

import org.springframework.stereotype.Service;

import com.Spring.domain.Users;
@Service
public interface Registrationservice {

	public boolean register(Users user);
	
}
