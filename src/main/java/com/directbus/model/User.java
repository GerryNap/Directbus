package com.directbus.model;

import javax.validation.constraints.Email;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class User {
	private Integer id;

	private String first_name;
	private String last_name;
	@Email
	private String email;
	private String password;
	
	public Integer getID() { return this.id; }
	
	public String getFirstName() { return this.first_name; }
	public void setFirstName(String first_name) { this.first_name = first_name; }
	
	public String getLastName() { return this.last_name; }
	public void setLastName(String last_name) { this.last_name = last_name; }
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getPassword() { return this.password; }
	public void setPasswotd(String password) { this.password = password; }
}