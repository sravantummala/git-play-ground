package com.Spring.Dao;

import org.springframework.stereotype.Component;

@Component
public interface Logindao {

	public void checklogin(String email, String password);

}
