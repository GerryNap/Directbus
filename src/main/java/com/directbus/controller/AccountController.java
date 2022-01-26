package com.directbus.controller;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

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
        	return new ResponseEntity<String>("Vecchia password errata", HttpStatus.CONFLICT);
    	}
    }
}