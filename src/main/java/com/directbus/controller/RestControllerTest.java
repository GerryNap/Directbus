package com.directbus.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.directbus.model.UserClient;
import com.directbus.persistence.DatabaseHandler;
import com.directbus.service.EmailSenderService;

@RestController
public class RestControllerTest {
	@Autowired
	EmailSenderService sender;
	
	@PostMapping(value = "/doRegistration", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doRegistration(HttpSession session, @RequestBody @Valid UserClient user) {
		
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		
		if(DatabaseHandler.getInstance().getClientUserDao().save(user)) {
			status = HttpStatus.ACCEPTED;
			response = "success";
			session.setAttribute("user", DatabaseHandler.getInstance().getClientUserDao().getUserData(user.getEmail()));
			session.setAttribute("userType", "Client");
			sender.registrationClientEmail(user);
		} else {
			response = "existing user";
		}
			
		return new ResponseEntity<String>(response, status);
	}
}
