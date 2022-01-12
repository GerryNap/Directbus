package com.directbus.model;


public class AgencyUser extends User{

	private String name;
	private String pIva;
	private String address;
	
	public AgencyUser() {
		super();
		this.name = null;
		this.pIva = null;
		this.address = null;
	}
	
	public AgencyUser(String name, String pIva, String address, String email, String password) {
		super(email, password);
		this.name = name;
		this.pIva = pIva;
		this.address = address;
	}

	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	
	public String getpIva() { return pIva; }
	public void setpIva(String pIva) { this.pIva = pIva; }
	
	public String getAddress() { return address; }
	public void setAddress(String address) { this.address = address; }
}