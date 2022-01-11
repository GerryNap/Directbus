package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.AgencyUser;

public interface AgencyUserDao {
	
	public List<AgencyUser> findAll();
	public AgencyUser findByPrimaryKey(String pIva);
	public boolean save(AgencyUser user);
	public boolean update(AgencyUser user);
	public boolean delete(AgencyUser user);

}
