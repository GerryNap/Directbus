package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.directbus.model.Route;
import com.directbus.persistence.dao.RouteDao;

public class RouteDaoJDBC implements RouteDao{
	
	Connection conn;
	
	public RouteDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Route> findAll() {
		List<Route> allRoutes = new ArrayList<Route>();
		String query = "SELECT * FROM tratte";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				Route route = new Route();
				route.setCod(rs.getLong("cod"));
				route.setAgency(rs.getString("azienda"));
				route.setData(rs.getString("data_"));
				route.setDestinationS(rs.getString("s_arrivo"));
				route.setStartS(rs.getString("s_partenza"));
				route.setnBiglietti(rs.getInt("n_nbiglietti"));
				route.setTime(rs.getString("durata_tratta"));
				route.setPrice(rs.getFloat("prezzo"));
				allRoutes.add(route);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allRoutes;
	}
	
	@Override
	public Route findByPrimaryKey(long cod) {
		Route rt = null;
		String query = "select * from tratte where cod = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, cod);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				rt = new Route();
				
				rt.setCod(rs.getLong("cod"));
				rt.setAgency(rs.getString("azienda"));
				rt.setData(rs.getString("data_"));
				rt.setDestinationS(rs.getString("s_arrivo"));
				rt.setStartS(rs.getString("s_partenza"));
				rt.setnBiglietti(rs.getInt("n_nbiglietti"));
				rt.setTime(rs.getString("durata_tratta"));
				rt.setPrice(rs.getFloat("prezzo"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rt;
	}

	@Override
	public boolean saveOrUpdate(Route route) {
		if (!existRoute(route)) {
			//INSERT
			try {
				String query = "INSERT INTO tratte (data_, s_arrivo, s_partenza, n_nbiglietti, azienda, durata_tratta, prezzo)"
						+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, route.getData());
				st.setString(2, route.getDestinationS());
				st.setString(3, route.getStartS());
				st.setInt(4, route.getnBiglietti());
				st.setString(5, route.getAgency());
				st.setString(6, route.getTime());
				st.setFloat(7, route.getPrice());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		} else {
			//UPDATE
			try {
				String query = "UPDATE tratte "
						+ "set azienda = ?, data_ = ?, s_arrivo = ?, s_partenza = ?, n_nbiglietti = ?"
						+ "where cod = ?";
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, route.getCod());
				st.setString(2, route.getAgency());
				st.setString(3, route.getData());
				st.setString(4, route.getDestinationS());
				st.setString(5, route.getStartS());
				st.setInt(6, route.getnBiglietti());
				st.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
	
	private boolean existRoute(Route route) {
		String query = "SELECT * FROM tratte WHERE data_ = ? AND s_arrivo = ? AND s_partenza = ? AND azienda = ? AND durata_tratta = ? AND prezzo = ?";
		try {
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, route.getData());
			p.setString(2, route.getDestinationS());
			p.setString(3, route.getStartS());
			p.setString(4, route.getAgency());
			p.setString(5, route.getTime());
			p.setFloat(6, route.getPrice());
			ResultSet rs = p.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public boolean delete(Route route) {
		if (existRoute(route)) {
			String query = "DELETE FORM utentiaziende WHERE cod = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, route.getCod());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
	@Override
	public boolean checkRoute(Route route) {
		
		String query = "SELECT * FROM tratte WHERE data_ = ? AND s_arrivo = ? AND s_partenza = ? AND azienda = ? AND durata_tratta = ? AND prezzo = ?";
		
		try {
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, route.getAgency());
			p.setString(2, route.getData());
			p.setString(3, route.getDestinationS());
			p.setString(4, route.getStartS());
			p.setString(5, route.getTime());
			p.setFloat(6, route.getPrice());
			ResultSet rs = p.executeQuery();
			boolean result = false;
			if(rs.next()) {
				long cod = rs.getLong("cod");
				if (cod == route.getCod())
					result = true;
			}
			p.close();
			return result;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

	@Override
	public ArrayList<Route> search(@Valid Route route) {
		
		ArrayList<Route> rts = new ArrayList<Route>();
		String query = "select * from tratte where s_partenza = ? AND s_arrivo = ? OR data_ = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			
				st.setString(1, route.getStartS());
				st.setString(2, route.getDestinationS());
				st.setString(3, route.getData());
				
				
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				Route rt = new Route();
				rt.setCod(rs.getLong("cod"));
				rt.setAgency(rs.getString("azienda"));
				rt.setData(rs.getString("data_"));
				rt.setDestinationS(rs.getString("s_arrivo"));
				rt.setStartS(rs.getString("s_partenza"));
				rt.setnBiglietti(rs.getInt("n_nbiglietti"));
				rt.setTime(rs.getString("durata_tratta"));
				rt.setPrice(rs.getFloat("prezzo"));
				rts.add(rt);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return rts;
	}

}
