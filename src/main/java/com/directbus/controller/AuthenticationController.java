package com.directbus.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
	public ResponseEntity<String> doRegistration(HttpSession session, @RequestBody @Valid User user) {
		
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		
		if(DatabaseHandler.getInstance().getClientUserDao().save(user)) {
			status = HttpStatus.ACCEPTED;
			response = "success";
		} else {
			response = "existing user";
		}
			
		return new ResponseEntity<String>(response, status);
	}
	
	@PostMapping("/doLogin")
	public String doLogin(HttpServletRequest req, HttpServletResponse res, String email, String pass) {
		if (email.equalsIgnoreCase("prova123@gmail.com") && pass.equalsIgnoreCase("succhiamelo")) {
			try {
				res.sendRedirect("/");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else
			return "login";
		return null;
	}
}