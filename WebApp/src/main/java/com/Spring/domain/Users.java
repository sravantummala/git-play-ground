package com.Spring.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Users {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int userid;
	
	@NotNull
	@NotEmpty
	@Size(min=3)
	private String firstname;
	@NotNull
	@NotEmpty
	@Size(min=3)
	private String lastname;
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
		this.userid = userid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.mobile = mobile;
		this.password = password;
	}
	public Users() {
		super();
	}
	@Override
	public String toString() {
		return "Users [userid=" + userid + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
				+ ", mobile=" + mobile + ", password=" + password + "]";
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
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



