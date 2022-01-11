package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.User;

public interface ClientUserDao {

	public List<User> findAll();
	public User findByPrimaryKey(String pIva);
	public boolean save(User user);
	public boolean update(User user);
	public boolean delete(User user);
	
	public boolean checkUser(User user);
}
