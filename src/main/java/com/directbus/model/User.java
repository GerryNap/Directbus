package com.directbus.model;

import javax.validation.constraints.Email;


public class User {
	@Email
	private String email;
	private String password;
	
	public User() {
		this.email = null;
		this.password = null;
	}
	
	public User(String email) {
		this.email = email;
		this.password = null;
	}
	
	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getPassword() { return this.password; }
	public void setPassword(String password) { this.password = password; }
}