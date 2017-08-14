package com.Spring.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.Spring.domain.Users;

@Repository
public class RegistrationdaoImp implements Registrationdao {

	@Autowired
	private JdbcTemplate jdbctemplate;

	public int save(Users users) {
		//System.out.println(users);
		int maxid = jdbctemplate.queryForObject("select max(id) from users", Integer.class);
		int i = jdbctemplate.update("insert into users values(?,?,?,?,?,?)", maxid + 1, users.getFirstname(),
				users.getLastname(), users.getEmail(), users.getMobile(), users.getPassword());
		System.out.println("No of rows inserted : " + i);

		return i;

	}

}
