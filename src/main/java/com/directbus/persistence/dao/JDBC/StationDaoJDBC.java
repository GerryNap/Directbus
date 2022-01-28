package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.directbus.model.Station;
import com.directbus.persistence.dao.StationDao;

public class StationDaoJDBC implements StationDao{
	
	Connection conn;
	
	public StationDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Station> findAll() {
		List<Station> allStation = new ArrayList<Station>();
		String query = "SELECT * FROM stazioni";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				Station station = new Station();
				station.setId(rs.getString(1));
				station.setName(rs.getString(2));
				station.setCity(rs.getString(3));
				station.setRegion(rs.getString(4));
				station.setProvince(rs.getString(5));
				allStation.add(station);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return allStation;
	}

	@Override
	public Station findByPrimaryKey(String id) {
		Station cdl = null;
		String query = "select * from stazioni where identificatore = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, id);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				cdl = new Station();
				
				cdl.setName(rs.getString(2));
				cdl.setCity(rs.getString(3));
				cdl.setRegion(rs.getString(4));
				cdl.setProvince(rs.getString(5));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cdl;
	}

	@Override
	public boolean saveOrUpdate(Station station) {
		station.setName(station.getName().toLowerCase());
		if (!existStation(station)) {
			//INSERT
			try {
				String query = "INSERT INTO stazioni "
						+ "VALUES (?, ?, ?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, station.getId());
				st.setString(2, station.getName());
				st.setString(3, station.getCity());
				st.setString(4, station.getRegion());
				st.setString(5, station.getProvince());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		} else {
			station.setName(station.getName().toLowerCase());
			//UPDATE
			try {
				String query = "UPDATE stazioni "
						+ "set nome = ?, comune = ?, regione = ?, provincia = ?"
						+ "where identificatore = ?";
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, station.getId());
				st.setString(2, station.getName());
				st.setString(3, station.getCity());
				st.setString(4, station.getRegion());
				st.setString(5, station.getProvince());
				st.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}

	@Override
	public boolean delete(Station station) {
		if (existStation(station)) {
			String query = "DELETE FORM stazioni WHERE identificatore = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, station.getId());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	
	private boolean existStation(Station station) {
		String query = "SELECT * FROM stazioni WHERE identificatore = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, station.getId());
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public ArrayList<String> getStationsList(String text) {
		ArrayList<String> stations = new ArrayList<String>();
		text.toLowerCase();
		
		String query = "SELECT nome FROM stazioni WHERE nome LIKE '"+ text +"%'";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) 
				stations.add(rs.getString("nome"));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return stations;
	}

}
