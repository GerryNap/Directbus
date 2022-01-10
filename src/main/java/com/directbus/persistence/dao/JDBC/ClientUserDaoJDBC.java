package com.directbus.persistence.dao.JDBC;

import java.util.List;

import com.directbus.model.AgencyUser;
import com.directbus.persistence.dao.ClientUserDao;

public class ClientUserDaoJDBC implements ClientUserDao{

	@Override
	public List<AgencyUser> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public AgencyUser findByPrimaryKey(String pIva) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean saveOrUpdate(AgencyUser user) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(AgencyUser user) {
		// TODO Auto-generated method stub
		return false;
	}

}
