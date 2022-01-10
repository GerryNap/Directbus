package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.AgencyUser;

public interface ClientUserDao {

	public List<AgencyUser> findAll();
	public AgencyUser findByPrimaryKey(String pIva);
	public boolean saveOrUpdate(AgencyUser user);
	public boolean delete(AgencyUser user);
}
