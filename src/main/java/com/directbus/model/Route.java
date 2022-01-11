package com.directbus.model;

import java.sql.Date;

public class Route {

	private long cod;
	private String startS;
	private String destinationS;
	private String agency;
	private int nBiglietti;
	private Date data;
	
	
	//getters & setters
	public long getCod() {
		return cod;
	}
	public void setCod(long cod) {
		this.cod = cod;
	}
	public String getStartS() {
		return startS;
	}
	public void setStartS(String startS) {
		this.startS = startS;
	}
	public String getDestinationS() {
		return destinationS;
	}
	public void setDestinationS(String destinationS) {
		this.destinationS = destinationS;
	}
	public String getAgency() {
		return agency;
	}
	public void setAgency(String agency) {
		this.agency = agency;
	}
	public int getnBiglietti() {
		return nBiglietti;
	}
	public void setnBiglietti(int nBiglietti) {
		this.nBiglietti = nBiglietti;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}	
}