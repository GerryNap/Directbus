package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCrypt;

import com.directbus.model.AgencyUser;
import com.directbus.model.User;
import com.directbus.persistence.DatabaseHandler;
import com.directbus.persistence.dao.AgencyUserDao;

public class AgencyUserDaoJDBC implements AgencyUserDao {
	
	Connection conn;
	
	public AgencyUserDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<AgencyUser> findAll() {
		List<AgencyUser> allUsers = new ArrayList<AgencyUser>();
		String query = "SELECT * FROM utentiaziende";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				AgencyUser user = new AgencyUser();
				user.setpIva(rs.getString("p_iva"));
				user.setEmail(rs.getString("email"));
				user.setName(rs.getString("nome"));
				user.setAddress(rs.getString("indirizzo"));
				user.setPassword(rs.getString("psw"));
				
				allUsers.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allUsers;
		
	}

	@Override
	public AgencyUser findByPrimaryKey(String email) {
		AgencyUser usr = null;
		String query = "select * from utentiaziende where email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				usr = new AgencyUser();
				
				usr.setpIva(rs.getString("p_iva"));
				usr.setName(rs.getString("nome"));
				usr.setAddress(rs.getString("indirizzo"));
				usr.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return usr;
	}

	@Override
	public boolean save(AgencyUser user) {
		if (existUser(user.getEmail()))
			return false;
		
		try {
			String query = "INSERT INTO utentiaziende "
					+ "VALUES (?, ?, ?, ?, ?)";
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user.getEmail());
			st.setString(2, user.getName());
			st.setString(3, user.getAddress());
			st.setString(4, BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
			st.setString(5, user.getpIva());
			st.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} 
	}
	
	@Override
	public boolean update(AgencyUser user) {
		if(!existUser(user.getEmail()))
			return false;
		try {
			String query = "UPDATE utentiaziende "
					+ "set p_iva = ? , nome = ?, indirizzo = ?, psw = ?"
					+ "where email = ?";
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(2, user.getEmail());
			st.setString(3, user.getName());
			st.setString(4, user.getAddress());
			st.setString(5, BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(12)));
			st.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	private boolean existUser(String user) {
		if(DatabaseHandler.getInstance().getClientUserDao().existUser(user, true))
			return true;
		
		String query = "SELECT * FROM utentiaziende WHERE email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user);
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}

	//questo existUser è duplicato serve per essere chiamato da AgencyUserDao senza creare loop
	public boolean existUser(String user, boolean p) {
		
		String query = "SELECT * FROM utentiaziende WHERE email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, user);
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public boolean delete(AgencyUser user) {
		if (existUser(user.getEmail())) {
			String query = "DELETE FORM utentiaziende WHERE email = ?";
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
		
		String query = "SELECT * FROM utentiaziende WHERE email=?;";
		
		try {
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, user.getEmail());
			ResultSet rs = p.executeQuery();
			boolean result = false;
			if(rs.next()) {
				String password = rs.getString("psw");
				result = BCrypt.checkpw(user.getPassword(), password);
			}
			p.close();
			return result;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	@Override
	public AgencyUser getUserData(String email) {
		String query = "SELECT nome, indirizzo, p_iva, verifiedemail FROM utentiaziende WHERE email=?;";
		AgencyUser user = null;
		try {
			PreparedStatement p = conn.prepareStatement(query);
			p.setString(1, email);
			ResultSet rs = p.executeQuery();
			if(rs.next()) {
				user = new AgencyUser(email, rs.getString("nome"), rs.getString("p_iva"), rs.getString("indirizzo"), rs.getBoolean("verifiedemail"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	
	@Override
	public boolean changePassword(HttpSession session, String oldPassword, String newPassword) {
		AgencyUser user = (AgencyUser) session.getAttribute("user");
		user.setPassword(oldPassword);
		if(user != null && checkUser(user)) {
			try {
				String query = "UPDATE utentiaziende "
						+ "SET psw = ? "
						+ "WHERE email = ?";
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, BCrypt.hashpw(newPassword, BCrypt.gensalt(12)));
				st.setString(2, user.getEmail());
				st.executeUpdate();
				return true;
			} catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return false;
	}

	@Override
	public boolean changeEmail(HttpSession session, String password, String newEmail) {
		AgencyUser user = (AgencyUser) session.getAttribute("user");
		user.setPassword(password);
		if(user != null && checkUser(user)) {
			String query = "UPDATE utentiaziende "
					+ "SET email = ? "
					+ "WHERE email = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, newEmail);
				st.setString(2, user.getEmail());
				st.executeUpdate();
				return true;
			}catch(SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return false;
	}
}