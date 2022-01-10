package com.directbus.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class Route {

	private String cod;
	private long startS;
	private long destinationS;
	private String agency;
	private int nBiglietti;
	private String data;
	
	
	//getters & setters
	public String getCod() {
		return cod;
	}
	public void setCod(String cod) {
		this.cod = cod;
	}
	public long getStartS() {
		return startS;
	}
	public void setStartS(long startS) {
		this.startS = startS;
	}
	public long getDestinationS() {
		return destinationS;
	}
	public void setDestinationS(long destinationS) {
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
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}	
}