package com.directbus.persistence.dao;

import java.util.List;

import com.directbus.model.Review;
import com.directbus.model.UserClient;

public interface ReviewDao {
	
	public List<Review> findAll();
	public Review findByPrimaryKey(long id);
	public boolean save(Review review);
	public boolean delete(Review review);
}