package com.directbus.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.AgencyUser;
import com.directbus.model.User;
import com.directbus.model.UserClient;
import com.directbus.persistence.DatabaseHandler;
import com.directbus.service.EmailSenderService;

@Controller
public class AuthenticationController {
	@Autowired
	EmailSenderService sender;
	
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
			session.setAttribute("tokenEmail", sender.confirmEmail(user));
			
			
		} else {
			response = "existing user";
		}
			
		return new ResponseEntity<String>(response, status);
	}
	
	
	@PostMapping(value = "/doBusinessRegistration", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doBusinessRegistration(HttpSession session, @RequestBody @Valid AgencyUser user) {
		
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		
		if(DatabaseHandler.getInstance().getAgencyUserDao().save(user)) {
			status = HttpStatus.ACCEPTED;
			response = "success";
			session.setAttribute("user", DatabaseHandler.getInstance().getAgencyUserDao().getUserData(user.getEmail()));
			session.setAttribute("userType", "Agency");
			session.setAttribute("tokenEmail", sender.confirmEmail(user));
		} else {
			response = "existing user";
		}
			
		return new ResponseEntity<String>(response, status);
	}
	
	@PostMapping(value = "/doLogin", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doLogin(HttpServletRequest req, @RequestBody @Valid User user) {
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		
		HttpSession session = req.getSession(true);
		if(DatabaseHandler.getInstance().getClientUserDao().checkUser(user)) {
			status = HttpStatus.ACCEPTED;
			response = "client";
			session.setAttribute("user", DatabaseHandler.getInstance().getClientUserDao().getUserData(user.getEmail()));
			session.setAttribute("userType", "Client");
			
		}
		else if(DatabaseHandler.getInstance().getAgencyUserDao().checkUser(user)){
			status = HttpStatus.ACCEPTED;
			response = "business";
			session.setAttribute("user", DatabaseHandler.getInstance().getAgencyUserDao().getUserData(user.getEmail()));
			session.setAttribute("userType", "Agency");
		}
		else {
			response = "user not found";
		}
		
		return new ResponseEntity<String>(response, status);
	}
	
	@GetMapping("logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) throws IOException {
		HttpSession session = req.getSession();
		if(session != null)
			session.invalidate();
		
		res.sendRedirect("/");
		
		return null;
	}
}