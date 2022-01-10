package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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
		if (checkUser(user)) {
			//INSERT
			try {
				user.setId(IdBrokerScuola.getId(conn));
				String query = "insert into scuola "
						+ "values (?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, scuola.getId());
				st.setString(2, scuola.getCodiceMeccanografico());
				st.setString(3, scuola.getNome());
				st.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return false;
			}
		}else {
			//UPDATE
			try {
				String query = "update utentiaziende "
						+ "set codicemeccanografico = ?, nome = ? "
						+ "where id = ?";
				PreparedStatement st = conn.prepareStatement(query);
				st.setString(1, scuola.getCodiceMeccanografico());
				st.setString(2, scuola.getNome());
				st.setLong(3, scuola.getId());
				
				st.executeUpdate();
				
			} catch (SQLException e) {
				
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}

	@Override
	public boolean delete(AgencyUser user) {
		return false;
	}

}
