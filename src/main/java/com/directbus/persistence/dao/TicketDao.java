package com.directbus.persistence.dao;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.directbus.model.EmailTicket;
import com.directbus.model.Route;
import com.directbus.model.Ticket;
import com.directbus.model.User;

public interface TicketDao {

	public List<Ticket> findAll();
	public Ticket findByPrimaryKey(long id);
	public boolean saveOrUpdate(Ticket user);
	public boolean delete(Ticket user);
	public ArrayList<Route> getReservaetion(User attribute);
	ArrayList<Route> getTravelHistory(User user);
	public ArrayList<Route> getActiveRoutes(User attribute);
	public ArrayList<Route> getOldRoutes(User attribute);
	public EmailTicket getEmailTicket(@Valid Ticket ticket);
	
}
