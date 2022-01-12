package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.User;
import com.directbus.model.UserClient;

public interface ClientUserDao {

	public List<UserClient> findAll();
	public UserClient findByPrimaryKey(String pIva);
	public boolean save(UserClient user);
	public boolean update(UserClient user);
	public boolean delete(UserClient user);
	
	public boolean checkUser(User user);
}
