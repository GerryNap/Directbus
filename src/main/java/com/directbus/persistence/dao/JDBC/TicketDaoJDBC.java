package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.directbus.model.EmailTicket;
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
				String query = "INSERT INTO biglietti (tratta, cliente) VALUES (?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, ticket.getRouteCod());
				st.setString(2, ticket.getClientEmail());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return false;
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
		
		LocalDate now = LocalDate.now();
		String month = "" + now.getMonthValue();
		String day = "" + now.getMonthValue();
		
		if(now.getMonthValue()<10)
			month = "0" + now.getMonthValue();
		if(now.getDayOfMonth()<10)
			day = "0" + now.getDayOfMonth();
		
		String date = now.getYear() + "-" + month + "-" + day;
		
		
		String query = "SELECT * FROM biglietti b, tratte t, utentiaziende u where t.azienda = u.email AND b.tratta = t.cod AND b.cliente = ? AND t.data_arrivo >= ?";
		ArrayList<Route> rts = new ArrayList<Route>();
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			st.setString(2, date+"%");
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Route r = new Route();
				r.setDestinationS(rs.getString("s_arrivo"));
				r.setStartS(rs.getString("s_partenza"));
				String[] dataPartenza = rs.getString("data_partenza").split("T");
				r.setDataPartenza(dataPartenza[0]);
				r.setDepartureTime(dataPartenza[1]);
				String[] dataArrivo = rs.getString("data_arrivo").split("T");
				r.setDataArrivo(dataArrivo[0]);
				r.setArrivalTime(dataArrivo[1]);
				r.setAgency(rs.getString("nome"));
				rts.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rts;
	}
	
	@Override
	public ArrayList<Route> getTravelHistory(User user) {
		
		LocalDate now = LocalDate.now();
		String month = "" + now.getMonthValue();
		String day = "" + now.getMonthValue();
		
		if(now.getMonthValue()<10)
			month = "0" + now.getMonthValue();
		if(now.getDayOfMonth()<10)
			day = "0" + now.getDayOfMonth();
		
		String date = now.getYear() + "-" + month + "-" + day;
		
		
		String query = "SELECT * FROM biglietti b, tratte t, utentiaziende u where t.azienda = u.email AND b.tratta = t.cod AND b.cliente = ? AND t.data_arrivo < ?";
		ArrayList<Route> rts = new ArrayList<Route>();
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			st.setString(2, date+"%");
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Route r = new Route();
				r.setDestinationS(rs.getString("s_arrivo"));
				r.setStartS(rs.getString("s_partenza"));
				String[] dataPartenza = rs.getString("data_partenza").split("T");
				r.setDataPartenza(dataPartenza[0]);
				r.setDepartureTime(dataPartenza[1]);
				String[] dataArrivo = rs.getString("data_arrivo").split("T");
				r.setDataArrivo(dataArrivo[0]);
				r.setArrivalTime(dataArrivo[1]);
				r.setAgency(rs.getString("nome"));
				rts.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rts;
	}
	
	
	@Override
	public ArrayList<Route> getActiveRoutes(User user) {
		
		LocalDate now = LocalDate.now();
		String month = "" + now.getMonthValue();
		String day = "" + now.getMonthValue();
		
		if(now.getMonthValue()<10)
			month = "0" + now.getMonthValue();
		if(now.getDayOfMonth()<10)
			day = "0" + now.getDayOfMonth();
		
		String date = now.getYear() + "-" + month + "-" + day;
		
		
		String query = "SELECT * FROM tratte where azienda = ? AND data_arrivo >= ?";
		ArrayList<Route> rts = new ArrayList<Route>();
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			st.setString(2, date+"%");
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Route r = new Route();
				r.setDestinationS(rs.getString("s_arrivo"));
				r.setStartS(rs.getString("s_partenza"));
				String[] dataPartenza = rs.getString("data_partenza").split("T");
				r.setDataPartenza(dataPartenza[0]);
				r.setDepartureTime(dataPartenza[1]);
				String[] dataArrivo = rs.getString("data_arrivo").split("T");
				r.setDataArrivo(dataArrivo[0]);
				r.setArrivalTime(dataArrivo[1]);
				r.setAgency(rs.getString("azienda"));
				r.setCod(rs.getLong("cod"));
				rts.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rts;
	}
	
	@Override
	public ArrayList<Route> getOldRoutes(User user) {
		
		LocalDate now = LocalDate.now();
		String month = "" + now.getMonthValue();
		String day = "" + now.getMonthValue();
		
		if(now.getMonthValue()<10)
			month = "0" + now.getMonthValue();
		if(now.getDayOfMonth()<10)
			day = "0" + now.getDayOfMonth();
		
		String date = now.getYear() + "-" + month + "-" + day;
		
		
		String query = "SELECT * FROM tratte where azienda = ? AND data_arrivo < ?";
		ArrayList<Route> rts = new ArrayList<Route>();
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			st.setString(2, date+"%");
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Route r = new Route();
				r.setDestinationS(rs.getString("s_arrivo"));
				r.setStartS(rs.getString("s_partenza"));
				String[] dataPartenza = rs.getString("data_partenza").split("T");
				r.setDataPartenza(dataPartenza[0]);
				r.setDepartureTime(dataPartenza[1]);
				String[] dataArrivo = rs.getString("data_arrivo").split("T");
				r.setDataArrivo(dataArrivo[0]);
				r.setArrivalTime(dataArrivo[1]);
				r.setAgency(rs.getString("azienda"));
				r.setCod(rs.getLong("cod"));
				rts.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rts;
	}

	@Override
	public EmailTicket getEmailTicket(@Valid Ticket ticket) {
		EmailTicket et = null;
		
		String query = "SELECT * FROM tratte t, utenticlienti u, biglietti b where b.cliente = u.email AND b.tratta = t.cod AND b.tratta = ? AND b.cliente = ?";

		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, ticket.getRouteCod());
			st.setString(2, ticket.getClientEmail());
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				et = new EmailTicket();
				et.setDestinationS(rs.getString("s_partenza"));
				et.setStartS(rs.getString("s_arrivo"));
				String[] dataPartenza = rs.getString("data_partenza").split("T");
				et.setDataPartenza(dataPartenza[0]);
				et.setDepartureTime(dataPartenza[1]);
				String[] dataArrivo = rs.getString("data_arrivo").split("T");
				et.setDataArrivo(dataArrivo[0]);
				et.setArrivalTime(dataArrivo[1]);
				et.setAgency(rs.getString("azienda"));
				et.setCod(rs.getLong("cod"));
				et.setEmail(rs.getString("email"));
				et.setFirstName(rs.getString("nome"));
				et.setLastName(rs.getString("cognome"));
			}
			return et;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return et;
	}
}
