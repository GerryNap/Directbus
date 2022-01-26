package com.directbus.persistence.dao;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.directbus.model.Route;

public interface RouteDao {

	public List<Route> findAll();
	public Route findByPrimaryKey(long cod);
	public boolean saveOrUpdate(Route user);
	public boolean delete(Route user);
	public boolean checkRoute(Route route);
	public ArrayList<Route> search(@Valid Route route);
	
}
