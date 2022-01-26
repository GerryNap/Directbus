package com.directbus.persistence.dao;

import java.util.ArrayList;
import java.util.List;

import com.directbus.model.Station;

public interface StationDao {

	public List<Station> findAll();
	public Station findByPrimaryKey(String pIva);
	public boolean saveOrUpdate(Station user);
	public boolean delete(Station user);
	public ArrayList<String> getStationsList(String text);
}
