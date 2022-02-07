package com.directbus.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.Review;
import com.directbus.model.Route;
import com.directbus.model.User;
import com.directbus.persistence.DatabaseHandler;

import net.minidev.json.JSONObject;

@Controller
public class AccountController {
	
	@GetMapping("/myProfile")
	public String myProfile() {
		return "myProfile";
	}
	
    @PostMapping(value = "/changePassword", consumes = { "application/json" })
    @ResponseBody
    public ResponseEntity<String> changePassword(HttpSession session, @RequestBody JSONObject content) {
    	String oldPassword = content.getAsString("oldPassword");
    	String newPassword = content.getAsString("newPassword");
    	if(oldPassword == null || newPassword == null) {
        	return new ResponseEntity<String>("Error 500", HttpStatus.INTERNAL_SERVER_ERROR);
    	}
    	
    	boolean changed;
    	if(((String)session.getAttribute("userType")).equals("Client")) {
    		changed = DatabaseHandler.getInstance().getClientUserDao().changePassword(session, oldPassword, newPassword);
    	} else {
    		changed = DatabaseHandler.getInstance().getAgencyUserDao().changePassword(session, oldPassword, newPassword);
    	}

    	if(changed) {
    		return new ResponseEntity<String>("Password cambiata con successo", HttpStatus.OK);
    	} else {
        	return new ResponseEntity<String>("Password errata", HttpStatus.CONFLICT);
    	}
    }
    
    @PostMapping("/getReserveation")
    @ResponseBody
    public ResponseEntity<ArrayList<Route>> getReserveation(HttpSession session) {
    	ArrayList<Route> activeRoutes;
    	
    	activeRoutes = DatabaseHandler.getInstance().getTicketDao().getReservaetion((User)session.getAttribute("user"));
    	session.setAttribute("activeTicket", activeRoutes);
    	
    	return new ResponseEntity<ArrayList<Route>>(HttpStatus.OK);
    }
    
    @PostMapping("/getTravelHistory")
    @ResponseBody
    public ResponseEntity<ArrayList<Route>> getTravelHistory(HttpSession session) {
    	ArrayList<Route> th;
    	
    	th = DatabaseHandler.getInstance().getTicketDao().getTravelHistory((User)session.getAttribute("user"));
    	session.setAttribute("travelHistory", th);
    	
    	return new ResponseEntity<ArrayList<Route>>(HttpStatus.OK);
    }
    
    @PostMapping("/getActiveRoutes")
    @ResponseBody
    public ResponseEntity<ArrayList<Route>> getActiveRoutes(HttpSession session) {
    	ArrayList<Route> activeRoutes;
    	
    	activeRoutes = DatabaseHandler.getInstance().getTicketDao().getActiveRoutes((User)session.getAttribute("user"));
    	session.setAttribute("activeRoutes", activeRoutes);
    	
    	return new ResponseEntity<ArrayList<Route>>(HttpStatus.OK);
    }
    
    @PostMapping("/getOldRoutes")
    @ResponseBody
    public ResponseEntity<ArrayList<Route>> getOldRoutes(HttpSession session) {
    	ArrayList<Route> th;
    	
    	th = DatabaseHandler.getInstance().getTicketDao().getOldRoutes((User)session.getAttribute("user"));
    	session.setAttribute("oldRoutes", th);
    	
    	return new ResponseEntity<ArrayList<Route>>(HttpStatus.OK);
    }
    
    @PostMapping("/doReview")
    @ResponseBody
    public ResponseEntity<ArrayList<Route>> doReview(HttpSession session, @RequestBody @Valid Review review) { 
    	
    	if(!DatabaseHandler.getInstance().getReviewDao().save(review))
    		return new ResponseEntity<ArrayList<Route>>(HttpStatus.CONFLICT);
    	
    	return new ResponseEntity<ArrayList<Route>>(HttpStatus.OK);
    }
}