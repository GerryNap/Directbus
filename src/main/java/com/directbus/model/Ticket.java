package com.directbus.model;

import javax.validation.constraints.Email;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Ticket {

	private long id;
	private String routeCod;
	private String clientEmail;
	
	
	//getters & setters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRouteCod() {
		return routeCod;
	}
	public void setRouteCod(String routeCod) {
		this.routeCod = routeCod;
	}
	public String getClientEmail() {
		return clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	
	
}