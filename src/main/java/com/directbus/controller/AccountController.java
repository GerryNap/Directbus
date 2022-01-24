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
    	if(oldPassword != null && newPassword != null
    			&& DatabaseHandler.getInstance().getClientUserDao().changePassword(session, oldPassword, newPassword)) {
    		return new ResponseEntity<String>("success", HttpStatus.OK);
    	}
    	return new ResponseEntity<String>("error", HttpStatus.INTERNAL_SERVER_ERROR);
    }
}