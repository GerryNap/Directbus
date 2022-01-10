package com.directbus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Ticket {

	private long id;
	private long routeCod;
	private String clientEmail;
	
	
	//getters & setters
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getRouteCod() {
		return routeCod;
	}
	public void setRouteCod(long routeCod) {
		this.routeCod = routeCod;
	}
	public String getClientEmail() {
		return clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	
	
}