package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.AgencyUser;
<<<<<<< HEAD

public interface ClientUserDao {

	public List<AgencyUser> findAll();
	public AgencyUser findByPrimaryKey(String pIva);
	public boolean saveOrUpdate(AgencyUser user);
	public boolean delete(AgencyUser user);
=======
import com.directbus.model.User;

public interface ClientUserDao {

	public List<User> findAll();
	public User findByPrimaryKey(String pIva);
	public boolean saveOrUpdate(User user);
	public boolean delete(User user);
	
>>>>>>> f2e0c3ba30c49d345f6ef4cfdb797da328e0a0d9
}
