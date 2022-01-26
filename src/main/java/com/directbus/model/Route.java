package com.directbus.model;

public class Route {

	private long cod;
	private String agency;
	private String data;
	private String departureTime;
	private String destinationS;
	private String startS;
	private Integer nBiglietti;
	private String time;
	private Float price;
	
	public Route() {
		this.data = null;
		this.agency = null;
		this.destinationS = null;
		this.startS = null;
		this.nBiglietti = null;
		this.time = null;
		this.price = null;
		this.departureTime = null;
	}
	
	public Route(long cod, String agency,String data, String destinationS, String startS, int nBiglietti, String time, Float price) {
		super();
		this.cod = cod;
		this.agency = agency;
		
		String[] parts = data.split("T");
		this.data = parts[0];
		this.departureTime = parts[1];
		
		this.destinationS = destinationS;
		this.startS = startS;
		this.nBiglietti = nBiglietti;
		this.time = time;
		this.price = price;
	}
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
	public Integer getnBiglietti() {
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
	
	public String getTime() {
		return time;
	}
	
	public void setTime(String time) {
		this.time = time;
	}
	
	public Float getPrice() {
		return price;
	}
	
	public void setPrice(Float price) {
		this.price = price;
	}

	public String getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(String departureTime) {
		this.departureTime = departureTime;
	}
}