package com.Spring.Dao;

import org.springframework.stereotype.Repository;

import com.Spring.domain.Users;

@Repository
public interface Registrationdao {

	
	public int save(Users users);
}
