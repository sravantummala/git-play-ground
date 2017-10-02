package com.Spring.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.Spring.domain.Users;
@Component
public class LogindaoImp implements Logindao {

	@Autowired
	private JdbcTemplate jdbctemplate;
	/*
	 * private NamedParameterJdbcTemplate jdbc;
	 * 
	 * public void setDataSource(DataSource jdbc) { this.jdbc = new
	 * NamedParameterJdbcTemplate(jdbc); }
	 */

	public void checklogin(String email, String password) {

		Users users = new Users();
		int i = jdbctemplate.update("select count(*) from login " + " where uname = ? and password = ?",
				users.getEmail(), users.getPassword());

		/*
		 * jdbc.query("select * from users where email=? and password=?", new
		 * RowMapper<Users>() {
		 * 
		 * public Users mapRow(ResultSet rs, int rowNum) throws SQLException {
		 * // TODO Auto-generated method stub Users usr = new Users();
		 * 
		 * usr.getEmail(); usr.getPassword(); return usr; }
		 */

	}
}

/*
 * class UserMapper implements RowMapper { public Users mapRow(ResultSet rs, int
 * arg1) throws SQLException { Users user = new Users();
 * 
 * user.setPassword(rs.getString("password"));
 * user.setFirstname(rs.getString("firstname"));
 * user.setLastname(rs.getString("lastname"));
 * user.setEmail(rs.getString("email")); user.setMobile(rs.getString("mobile"));
 * return user; }
 * 
 */
