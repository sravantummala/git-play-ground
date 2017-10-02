package com.Spring.Service;

import org.springframework.stereotype.Service;

@Service
public interface Loginservice {
	

	public boolean checklogin(String email, String password);
}
