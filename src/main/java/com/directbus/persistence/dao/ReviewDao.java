package com.directbus.persistence.dao;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import com.directbus.model.Review;

public interface ReviewDao {
	
	public List<Review> findAll();
	public Review findByPrimaryKey(long id);
	public boolean save(Review review);
	public boolean delete(Review review);
	public ArrayList<Review> getPartnerReviews(@Valid String email);
}
