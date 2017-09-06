package com.Spring.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Component;

import com.Spring.domain.Users;

@Component
public class RegistrationdaoImp implements Registrationdao {

	@Autowired
	private JdbcTemplate jdbctemplate;

	public int save(Users users) {
		// System.out.println(users);
		
		int maxid = jdbctemplate.queryForObject("select max(user_id) from users", Integer.class);
		int i = jdbctemplate.update("insert into users values(?,?,?,?,?)",maxid+1, users.getFirstname(), users.getLastname(),
				users.getEmail(), users.getMobile());
		int j = jdbctemplate.update("insert into user_credentials values(?,?,?)", maxid+1,users.getEmail(), users.getPassword());

		System.out.println("No of rows inserted : " + i);

		return i;

	}

}
