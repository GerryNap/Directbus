package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCrypt;

import com.directbus.model.AgencyUser;
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
				route.setData(rs.getDate("data_"));
				route.setDestinationS(rs.getString("s_arrivo"));
				route.setStartS(rs.getString("s_partenza"));
				route.setnBiglietti(rs.getInt("n_nbiglietti"));
				
				allRoutes.add(route);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return allRoutes;
	}
	
	@Override
	public Route findByPrimaryKey(long cod) {
		Route cdl = null;
		String query = "select * from tratte where cod = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, cod);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				cdl = new Route();
				
				cdl.setCod(rs.getLong("cod"));
				cdl.setAgency(rs.getString("azienda"));
				cdl.setData(rs.getDate("data_"));
				cdl.setDestinationS(rs.getString("s_arrivo"));
				cdl.setStartS(rs.getString("s_partenza"));
				cdl.setnBiglietti(rs.getInt("n_nbiglietti"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cdl;
	}

	@Override
	public boolean saveOrUpdate(Route user) {
		if (!existUser(user)) {
			//INSERT
			try {
				String query = "INSERT INTO utentiaziende "
						+ "VALUES (?, ?, ?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				String passwordCriptata = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
				st.setString(1, user.getpIva());
				st.setString(2, user.getEmail());
				st.setString(3, user.getName());
				st.setString(4, user.getAddress());
				st.setString(5, passwordCriptata);
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
				String query = "UPDATE utentiaziende "
						+ "set email = ? , nome = ?, indirizzo = ?, psw = ?"
						+ "where p_iva = ?";
				PreparedStatement st = conn.prepareStatement(query);
				String passwordCriptata = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
				st.setString(2, user.getEmail());
				st.setString(3, user.getName());
				st.setString(4, user.getAddress());
				st.setString(5, passwordCriptata);
				st.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
	
	private boolean existUser(Route route) {
		String query = "SELECT * FROM tratte WHERE cod = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, route.getCod());
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public boolean delete(Route user) {
		// TODO Auto-generated method stub
		return false;
	}

}
