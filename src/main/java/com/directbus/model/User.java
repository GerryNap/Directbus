package com.directbus.model;

import javax.validation.constraints.Email;


public class User {
	private String firstName;
	private String lastName;
	@Email
	private String email;
	private String password;
	
	public String getFirstName() { return this.firstName; }
	public void setFirstName(String first_name) { this.firstName = first_name; }
	
	public String getLastName() { return this.lastName; }
	public void setLastName(String last_name) { this.lastName = last_name; }
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getPassword() { return this.password; }
	public void setPassword(String password) { this.password = password; }
}