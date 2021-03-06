package com.directbus.persistence.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.directbus.model.AgencyUser;
import com.directbus.model.User;

public interface AgencyUserDao {
	
	public List<AgencyUser> findAll();
	public AgencyUser findByPrimaryKey(String pIva);
	public boolean save(AgencyUser user);
	public boolean update(AgencyUser user);
	public boolean delete(AgencyUser user);
	boolean checkUser(User user);
	public User getUserData(String email);
	
	public boolean existUser(String User, boolean p);
	public boolean changePassword(HttpSession session, String oldPassword, String newPassword);
}