package com.directbus.model;


public class Ticket {

	private long id;
	private long routeCod;
	private String clientEmail;
	private long numBig;
	
	public Ticket() {
		this.clientEmail = null;
	}
	
	public Ticket(long routeCode, String clientEmail, long numBig) {
		this.routeCod = routeCode;
		this.clientEmail = clientEmail;
		this.numBig = numBig;
	}
	
	//getters & setters
	public long getId() {
		return this.id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getRouteCod() {
		return this.routeCod;
	}
	public void setRouteCod(long routeCod) {
		this.routeCod = routeCod;
	}
	public String getClientEmail() {
		return this.clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	public long getNumBiglietti() {
		return this.numBig;
	}
	public void setNumBiglietti(long numBig) {
		this.numBig = numBig;
	}
}