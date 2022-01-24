package com.directbus.persistence.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.directbus.model.User;
import com.directbus.model.UserClient;

public interface ClientUserDao {

	public List<UserClient> findAll();
	public UserClient findByPrimaryKey(String pIva);
	public boolean save(UserClient user);
	public boolean update(UserClient user);
	public boolean delete(UserClient user);
	public boolean checkUser(User user);
	public User getUserData(String email);
	public boolean setVerifiedEmail(User user, boolean verified);
	
	public boolean existUser(String user, boolean p);
	public boolean changePassword(HttpSession session, String oldPassword, String newPassword);
}