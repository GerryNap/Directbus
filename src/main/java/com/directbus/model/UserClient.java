package com.directbus.model;

public class UserClient extends User {
	private String firstName;
	private String lastName;
	
	public UserClient() {
		super();
		this.firstName = null;
		this.lastName = null;
	}
	
	//SESSION
	public UserClient(String email, String firstName, String lastName, boolean verified) {
		super(email, verified);
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
	public UserClient(String firstName, String lastName, String email, String password) {
		super(email, password);
		this.firstName = firstName;
		this.lastName = lastName;
	}
	
	public String getFirstName() { return this.firstName; }
	public void setFirstName(String firstName) { this.firstName = firstName; }
	
	public String getLastName() { return this.lastName; }
	public void setLastName(String lastName) { this.lastName = lastName; }
}