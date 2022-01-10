package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCrypt;

import com.directbus.model.AgencyUser;
import com.directbus.persistence.dao.AgencyUserDao;

public class AgencyUserDaoJDBC implements AgencyUserDao {
	
	Connection conn;
	
	public AgencyUserDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<AgencyUser> findAll() {
		return null;
	}

	@Override
	public AgencyUser findByPrimaryKey(String pIva) {
		AgencyUser cdl = null;
		String query = "select * from utentiaziende where p_iva = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, pIva);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				cdl = new AgencyUser();
				
				cdl.setpIva(rs.getString("p_iva"));
				cdl.setName(rs.getString("nome"));
				cdl.setAddress(rs.getString("indirizzo"));
				cdl.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cdl;
	}

	@Override
	public boolean saveOrUpdate(AgencyUser user) {
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

	private boolean existUser(AgencyUser user) {
		String query = "SELECT FROM utentiazienda WHERE p_iva = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
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
	public boolean delete(AgencyUser user) {
		if (existUser(user)) {
			String query = "DELETE FORM utentiaziende WHERE p_iva = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, user.getpIva());
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
