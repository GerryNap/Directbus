package com.directbus.model;

import javax.validation.constraints.Email;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class AgencyUser {

	private String pIva;
	private String name;
	@Email
	private String email;
	private String password;
	private String address;
	private String sRagion;
	
	public AgencyUser() {
		pIva = null;
	}
	
	//getters & setters
	public String getpIva() {
		return pIva;
	}
	
	public void setpIva(String pIva) {
		this.pIva = pIva;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getsRagion() {
		return sRagion;
	}
	public void setsRagion(String sRagion) {
		this.sRagion = sRagion;
	}
}