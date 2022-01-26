package com.directbus.model;


public class Ticket {

	private long id;
	private long routeCod;
	private String clientEmail;
	
	public Ticket() {
		this.clientEmail = null;
	}
	
	public Ticket(long id, long routeCode, String clientEmail) {
		this.id = id;
		this.routeCod = routeCode;
		this.clientEmail = clientEmail;
	}
	
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