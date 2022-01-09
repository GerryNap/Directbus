package com.directbus.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@PostMapping("/doRegistration")
	public String doRegistration() {
		return "/";
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