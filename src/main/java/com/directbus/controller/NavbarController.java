package com.directbus.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.AgencyUser;
import com.directbus.model.Review;
import com.directbus.persistence.DatabaseHandler;

@Controller
public class NavbarController {

	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "aboutUs";
	}
	@GetMapping("/discover")
	public String discover() {
		return "discover";
	}
	@GetMapping("/partner")
	public String partner(HttpSession session) {
		
		ArrayList<AgencyUser> agency = (ArrayList<AgencyUser>) DatabaseHandler.getInstance().getAgencyUserDao().findAll();
		session.setAttribute("agency", agency);
		
		return "partner";
	}
	
	@PostMapping("/getPartnerReviews")
	@ResponseBody
	public ResponseEntity<ArrayList<Review>> doRegistration(HttpSession session, String email) {
		HttpStatus status = HttpStatus.OK;		
		
		System.out.println(email);
		ArrayList<Review> reviews = DatabaseHandler.getInstance().getReviewDao().getPartnerReviews(email);
		session.setAttribute("reviews", reviews);
			
		return new ResponseEntity<ArrayList<Review>>(reviews, status);
	}
}
