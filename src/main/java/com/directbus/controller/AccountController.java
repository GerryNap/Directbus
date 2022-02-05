package com.directbus.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

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
    
    @PostMapping(value = "/changeEmail", consumes = {"application/json"})
    @ResponseBody
    public ResponseEntity<String> changeEmail(HttpSession session, @RequestBody JSONObject content){
    	String password = content.getAsString("password");
    	String newEmail = content.getAsString("newEmail");
    	if(password == null || newEmail == null) {
    		return new ResponseEntity<String>("Error 500", HttpStatus.INTERNAL_SERVER_ERROR);
    	}
    	
    	boolean changed;
    	if(((String)session.getAttribute("userType")).equals("Client")){
    		changed = DatabaseHandler.getInstance().getClientUserDao().changeEmail(session, password, newEmail);
    	} else {
    		changed = DatabaseHandler.getInstance().getAgencyUserDao().changeEmail(session, password, newEmail);
    	}

    	if(changed) {
    		return new ResponseEntity<String>("Email cambiata con successo", HttpStatus.OK);
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
    	
    	for(int i=0; i<activeRoutes.size(); ++i) {
    		System.out.println(activeRoutes.get(i));
    	}
    	
    	return new ResponseEntity<ArrayList<Route>>(HttpStatus.OK);
    }
}