package com.Spring.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
public class Users {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int user_id;
	
	@NotNull
	@NotEmpty
	@Size(min=3)
	private String first_name;
	@NotNull
	@NotEmpty
	@Size(min=3)
	private String last_name;
	@NotNull
	@NotEmpty
	@Email
	private String email;
	@NotNull
	@NotEmpty
	@Size(min=3)
	private String mobile;
	@NotNull
	@NotEmpty
	@Size(min=10)
	private String password;
	private String confirmpassword;

	
	public Users(int userid, String firstname, String lastname, String email, String mobile, String password) {
		super();
		this.user_id = userid;
		this.first_name = firstname;
		this.last_name = lastname;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
	}
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [userid=" + user_id + ", firstname=" + first_name + ", lastname=" + last_name + ", email=" + email
				+ ", mobile=" + mobile + ", password=" + password + "]";
	}
	public int getUserid() {
		return user_id;
	}
	public void setUserid(int userid) {
		this.user_id = userid;
	}
	public String getFirstname() {
		return first_name;
	}
	public void setFirstname(String firstname) {
		this.first_name = firstname;
	}
	public String getLastname() {
		return last_name;
	}
	public void setLastname(String lastname) {
		this.last_name = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	/**
	 * @return the confirmpassword
	 */
	public String getConfirmpassword() {
		return confirmpassword;
	}
	/**
	 * @param confirmpassword the confirmpassword to set
	 */
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	
	
}



