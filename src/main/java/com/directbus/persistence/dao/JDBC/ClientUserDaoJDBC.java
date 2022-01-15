package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.directbus.model.User;
import com.directbus.model.UserClient;
import com.directbus.persistence.dao.ClientUserDao;

public class ClientUserDaoJDBC implements ClientUserDao{
	
	Connection conn;
	
	public ClientUserDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<UserClient> findAll() {
		List<UserClient> allUsers = new ArrayList<UserClient>();
		String query = "SELECT * FROM utenticlienti";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				UserClient user = new UserClient();
				user.setEmail(rs.getString("email"));
				user.setFirstName(rs.getString("nome"));
				user.setLastName(rs.getString("cognome"));
				user.setPassword(rs.getString("psw"));
				user.setPassword(rs.getString("paypal_email"));
				allUsers.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allUsers;
	}

	@Override
	public UserClient findByPrimaryKey(String email) {
		UserClient usr = null;
		String query = "select * from utenticlienti where email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				usr = new UserClient();
				
				usr.setEmail(rs.getString("email"));
				usr.setFirstName(rs.getString("nome"));
				usr.setLastName(rs.getString("cognome"));
				usr.setPassword(rs.getString("psw"));
				usr.setPaypalMail(rs.getString("paypal_email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return usr;
	}

	@Override
	public boolean save(UserClient user) {
		if (existUser(user))
			return false;
			
		try {
			String query = "INSERT INTO utenticlienti VALUES (?, ?, ?, ?)";
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			st.setString(2, user.getFirstName());
			st.setString(3, user.getLastName());
			st.setString(4, user.getPassword());
			st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	@Override
	public boolean update(UserClient user) {
		if(!existUser(user))
			return false;
		try {
			String query = "UPDATE utenticlienti "
					+ "SET nome = ?, cognome = ?, psw = ?"
					+ "where email = ?";
			PreparedStatement st = conn.prepareStatement(query);
			String passwordCriptata = user.getPassword();
			st.setString(4, user.getEmail());
			st.setString(1, user.getFirstName());
			st.setString(2, user.getLastName());
			st.setString(3, passwordCriptata);
			st.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	private boolean existUser(UserClient user) {
		String query = "SELECT * FROM utenticlienti WHERE email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public boolean delete(UserClient user) {
		if (existUser(user)) {
			String query = "DELETE FORM utenticlienti WHERE email = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, user.getEmail());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}
	
	@Override
	public boolean checkUser(User user) {
		
		String query = "SELECT * FROM utenticlienti WHERE email=?;";
		
		try {
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, user.getEmail());
			ResultSet rs = p.executeQuery();
			boolean result = false;
			if(rs.next()) {
				String password = rs.getString("psw");
				result = password.equals(user.getPassword());
			}
			p.close();
			return result;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	@Override
	public UserClient getUserData(String email) {
		String query = "SELECT nome, cognome FROM utenticlienti WHERE email=?;";
		UserClient user = null;
		try {
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, email);
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				user = new UserClient(email, rs.getString("nome"), rs.getString("cognome"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
}
