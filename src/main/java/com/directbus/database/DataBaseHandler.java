package com.directbus.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DataBaseHandler {
	
	private static DataBaseHandler instance = null;
	private Connection conn = null;
	
	private DataBaseHandler() {
		connection();
	}
	
	private void connection() {
		try {
			conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/directBus", "postgres", "postgres");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public boolean addUser(String email, String nome, String cognome, String password) {
		try {
			if(conn == null || conn.isClosed())
				return false;
			
			String sql =  "INSERT INTO utenticlienti(email, nome, cognome, psw) VALUES(?, ?, ?, ?)";
		
			PreparedStatement p = conn.prepareStatement(sql);
			p.setString(1, email);
			p.setString(2, nome);
			p.setString(3, cognome);
			p.setString(4, password);
			p.executeUpdate();
			p.close();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static DataBaseHandler getInstance() {
		if(instance == null)
			instance = new DataBaseHandler();
		return instance;
	}

}
