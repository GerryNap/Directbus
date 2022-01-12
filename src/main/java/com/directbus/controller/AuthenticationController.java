package com.directbus.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.User;
import com.directbus.model.UserClient;
import com.directbus.persistence.DatabaseHandler;

@Controller
public class AuthenticationController {
	@GetMapping({"/", "index"})
	public String index() {
		return "index";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/registration")
	public String registration() {
		return "registration";
	}
	@GetMapping("/businessRegistration")
	public String businessRegistration() {
		return "businessRegistration";
	}
	
	@GetMapping("/chooseRegistrationType")
	public String chooseRegistrationType() {
		return "chooseRegistrationType";
	}
	
	@GetMapping("/publicRoute")
	public String publicRoute() {
		return "publicRoute";
	}
	
	@PostMapping(value = "/doRegistration", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doRegistration(HttpSession session, @RequestBody @Valid UserClient UserClient) {
		
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		
		if(DatabaseHandler.getInstance().getClientUserDao().save(UserClient)) {
			status = HttpStatus.ACCEPTED;
			response = "success";
		} else {
			response = "existing user";
		}
			
		return new ResponseEntity<String>(response, status);
	}
	
	@PostMapping(value = "/doLogin", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doLogin(HttpSession session, @RequestBody @Valid User user) {
		
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		
		if(DatabaseHandler.getInstance().getClientUserDao().checkUser(user)) {
			status = HttpStatus.ACCEPTED;
			response = "success";
		}
		else {
			response = "loggin error";
		}
		
		return new ResponseEntity<String>(response, status);
	}
}