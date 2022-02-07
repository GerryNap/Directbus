package com.directbus.model;

public class Review {
	
	String text;
	int starNumber;
	long id;
	long tratta;
	String cliente;
	
	
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public int getStarNumber() {
		return starNumber;
	}
	public void setStarNumber(int starNumber) {
		this.starNumber = starNumber;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getTratta() {
		return tratta;
	}
	public void setTratta(long tratta) {
		this.tratta = tratta;
	}
	public String getCliente() {
		return cliente;
	}
	public void setCliente(String cliente) {
		this.cliente = cliente;
	}
}
