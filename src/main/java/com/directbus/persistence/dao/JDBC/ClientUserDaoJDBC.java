package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCrypt;

import com.directbus.model.User;
import com.directbus.persistence.dao.ClientUserDao;

public class ClientUserDaoJDBC implements ClientUserDao{
	
	Connection conn;
	
	public ClientUserDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<User> findAll() {
		List<User> allUsers = new ArrayList<User>();
		String query = "SELECT * FROM utenticlienti";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				User user = new User();
				user.setEmail(rs.getString("email"));
				user.setFirstName(rs.getString("nome"));
				user.setLastName(rs.getString("cognome"));
				user.setPassword(rs.getString("psw"));
				allUsers.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return allUsers;
	}

	@Override
	public User findByPrimaryKey(String email) {
		User cdl = null;
		String query = "select * from utenticlienti where email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				cdl = new User();
				
				cdl.setEmail(rs.getString("email"));
				cdl.setFirstName(rs.getString("nome"));
				cdl.setLastName(rs.getString("cognome"));
				cdl.setPassword(rs.getString("psw"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cdl;
	}

	@Override
	public boolean saveOrUpdate(User user) {
		System.out.println(user.toString());
		if (!existUser(user)) {
			//INSERT
			try {
				String query = "INSERT INTO utenticlienti VALUES (?, ?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				String passwordCriptata = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
				st.setString(1, user.getEmail());
				st.setString(2, user.getFirstName());
				st.setString(3, user.getLastName());
				st.setString(4, passwordCriptata);
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
				String query = "UPDATE utenticlienti "
<<<<<<< Updated upstream
						+ "set email = ? , nome = ?, indirizzo = ?, psw = ?"
						+ "where p_iva = ?";
=======
						+ "SET nome = ?, cognome = ?, psw = ?"
						+ "where email = ?";
>>>>>>> Stashed changes
				PreparedStatement st = conn.prepareStatement(query);
				String passwordCriptata = BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12));
				st.setString(4, user.getEmail());
				st.setString(1, user.getFirstName());
				st.setString(2, user.getLastName());
				st.setString(3, passwordCriptata);
				st.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
	
	private boolean existUser(User user) {
		String query = "SELECT * FROM utenticlienti WHERE email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
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
	public boolean delete(User user) {
		if (existUser(user)) {
			String query = "DELETE FORM utenticlienti WHERE email = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, user.getEmail());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

}
