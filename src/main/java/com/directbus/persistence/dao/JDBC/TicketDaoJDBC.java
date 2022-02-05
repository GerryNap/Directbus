package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.joda.time.LocalDate;

import com.directbus.model.Route;
import com.directbus.model.Ticket;
import com.directbus.model.User;
import com.directbus.persistence.dao.TicketDao;

public class TicketDaoJDBC implements TicketDao{
	
	Connection conn;
	
	public TicketDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Ticket> findAll() {
		List<Ticket> allTickets = new ArrayList<Ticket>();
		String query = "SELECT * FROM biglietti";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				Ticket ticket = new Ticket();
				ticket.setId(rs.getLong(1));
				ticket.setRouteCod(rs.getLong(2));
				ticket.setClientEmail(rs.getString(3));
				allTickets.add(ticket);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return allTickets;
	}

	@Override
	public Ticket findByPrimaryKey(long id) {
		Ticket cdl = null;
		String query = "select * from biglietti where id = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, id);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				cdl = new Ticket();
				cdl.setRouteCod(rs.getLong(2));
				cdl.setClientEmail(rs.getString(3));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cdl;
	}

	@Override
	public boolean saveOrUpdate(Ticket ticket) {
		if (!existTicket(ticket)) {
			//INSERT
			try {
				String query = "INSERT INTO biglietti "
						+ "VALUES (?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, ticket.getId());
				st.setLong(2, ticket.getRouteCod());
				st.setString(3, ticket.getClientEmail());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		} else {
			//UPDATE
			try {
				String query = "UPDATE biglietti "
						+ "set tratta = ?, cliente = ?"
						+ "where id = ?";
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, ticket.getId());
				st.setLong(2, ticket.getRouteCod());
				st.setString(3, ticket.getClientEmail());
				st.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}

	@Override
	public boolean delete(Ticket ticket) {
		if (existTicket(ticket)) {
			String query = "DELETE FORM biglietti WHERE id = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, ticket.getId());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
	private boolean existTicket(Ticket ticket) {
		String query = "SELECT * FROM biglietti WHERE id = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, ticket.getId());
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public ArrayList<Route> getReservaetion(User user) {
		
		LocalDate now = new LocalDate();
		System.out.println(now);
		
		String query = "SELECT * FROM biglietti b, tratte t where b.tratta = t.cod AND b.cliente = ?";
		ArrayList<Route> rts = new ArrayList<Route>();
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Route r = new Route();
				r.setDestinationS(rs.getString("s_partenza"));
				r.setStartS(rs.getString("s_arrivo"));
				System.out.println(r.getDestinationS());
				rts.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rts;
	}
	
	

}
