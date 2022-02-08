package com.directbus.persistence.dao.JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.directbus.model.Review;
import com.directbus.persistence.dao.ReviewDao;

public class ReviewDaoJDBC implements ReviewDao{
	Connection conn;
	
	public ReviewDaoJDBC(Connection conn) {
		this.conn = conn;
	}

	@Override
	public List<Review> findAll() {
		List<Review> allReview = new ArrayList<Review>();
		String query = "SELECT * FROM recensioni";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				Review r = new Review();
				r.setId(rs.getLong("id"));
				r.setStarNumber(rs.getInt("numero_stelle"));
				r.setText(rs.getString("commento"));
				r.setTratta(rs.getLong("tratta"));
				r.setCliente(rs.getString("cliente"));
				allReview.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return allReview;
	}

	@Override
	public Review findByPrimaryKey(long id) {
		Review r = null;
		String query = "select * from recensioni where id = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, id);
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				r = new Review();
				r.setId(rs.getLong("id"));
				r.setStarNumber(rs.getInt("numero_stelle"));
				r.setText(rs.getString("commento"));
				r.setTratta(rs.getLong("tratta"));
				r.setCliente(rs.getString("cliente"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return r;
	}

	@Override
	public boolean save(Review review) {
		if (!existReview(review)) {
			//INSERT
			try {
				String query = "INSERT INTO recensioni (numero_stelle, commento, tratta, cliente) VALUES (?, ?, ?, ?)";
				PreparedStatement st = conn.prepareStatement(query);
				st.setInt(1, review.getStarNumber());
				st.setString(2, review.getText());
				st.setLong(3, review.getTratta());
				st.setString(4, review.getCliente());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return false;
	}

	private boolean existReview(Review review) {
		String query = "SELECT * FROM recensioni WHERE id = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setLong(1, review.getId());
			ResultSet rs = st.executeQuery();
			if (rs.next())
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean delete(Review review) {
		if (existReview(review)) {
			String query = "DELETE FORM recensioni WHERE id = ?";
			try {
				PreparedStatement st = conn.prepareStatement(query);
				st.setLong(1, review.getId());
				st.executeUpdate();
				return true;
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public ArrayList<Review> getPartnerReviews(String email) {
		ArrayList<Review> reviews = new ArrayList<Review>();
		String query = "SELECT * FROM recensioni r, tratte t, utentiaziende u where t.azienda = u.email AND r.tratta = t.cod AND u.email = ?";
		try {
			PreparedStatement st = conn.prepareStatement(query);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				Review r = new Review();
				r.setStarNumber(rs.getInt("numero_stelle"));
				r.setText(rs.getString("commento"));
				r.setTratta(rs.getLong("tratta"));
				r.setCliente(rs.getString("cliente"));
				reviews.add(r);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return reviews;
	}

}
