package com.Spring.Dao;

import org.springframework.stereotype.Component;

import com.Spring.domain.Users;

@Component
public interface Registrationdao {

	public int save(Users users);
}
