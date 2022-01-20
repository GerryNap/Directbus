package com.directbus.model;

import javax.validation.constraints.Email;


public class User {
	@Email
	private String email;
	private String password;
	@Email
	private String paypalMail;
	private boolean verified;
	
	public User() {
		this.email = null;
		this.password = null;
		this.paypalMail = null;
	}
	
	public User(String email) {
		this.email = email;
		this.password = null;
		this.paypalMail = null;
	}
	
	public User(String email, String password) {
		this.email = email;
		this.password = password;
		this.paypalMail = null;
	}
	
	public User(String email, String password, String paypalMail) {
		this.email = email;
		this.password = password;
		this.paypalMail = paypalMail;
	}
	
	public String getEmail() { return this.email; }
	public void setEmail(String email) { this.email = email; }
	
	public String getPassword() { return this.password; }
	public void setPassword(String password) { this.password = password; }
	
	public String getPaypalMail() { return this.paypalMail; }
	public void setPaypalMail(String paypalMail) { this.paypalMail = paypalMail; }
	
	public boolean isVerified() { return this.verified; }
}