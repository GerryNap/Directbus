package com.directbus.model;

public class Route {

	private long cod;
	private String agency;
	private String dataPartenza;
	private String departureTime;
	private String destinationS;
	private String startS;
	private Integer nBiglietti;
	private String dataArrivo;
	private Float price;
	private String arrivalTime;
	
	public Route() {
		this.dataPartenza = null;
		this.agency = null;
		this.destinationS = null;
		this.startS = null;
		this.nBiglietti = null;
		this.dataArrivo = null;
		this.price = null;
		this.departureTime = null;
		this.arrivalTime = null;
	}
	
	public Route(long cod, String agency,String data, String destinationS, String startS, int nBiglietti, String time, Float price) {
		super();
		this.cod = cod;
		this.agency = agency;
		
		String[] parts = data.split("T");
		this.dataPartenza = parts[0];
		this.departureTime = parts[1];
		
		this.destinationS = destinationS;
		this.startS = startS;
		this.nBiglietti = nBiglietti;
		this.dataArrivo = time;
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
	public String getDataPartenza() {
		return dataPartenza;
	}
	public void setDataPartenza(String data) {
		this.dataPartenza = data;
	}
	
	public String getDataArrivo() {
		return dataArrivo;
	}
	
	public void setDataArrivo(String time) {
		this.dataArrivo = time;
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
	
	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}
	
	public String getArrivalTime() {
		return arrivalTime;
	}
}