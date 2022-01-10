package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.User;

public interface ClientUserDao {

	public List<User> findAll();
	public User findByPrimaryKey(String pIva);
	public boolean saveOrUpdate(User user);
	public boolean delete(User user);
}
