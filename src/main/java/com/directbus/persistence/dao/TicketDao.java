package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.AgencyUser;
import com.directbus.model.Ticket;

public interface TicketDao {

	public List<Ticket> findAll();
	public Ticket findByPrimaryKey(String pIva);
	public boolean saveOrUpdate(Ticket user);
	public boolean delete(Ticket user);
	
}
