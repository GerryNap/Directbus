package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.Route;

public interface RouteDao {

	public List<Route> findAll();
	public Route findByPrimaryKey(long cod);
	public boolean saveOrUpdate(Route user);
	public boolean delete(Route user);
	
}
