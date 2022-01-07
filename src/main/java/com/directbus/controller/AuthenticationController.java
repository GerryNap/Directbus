package com.directbus.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AuthenticationController {
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/doLogin")
	public String doLogin(HttpServletRequest req, HttpServletResponse res, String email, String pass) {
		if (email.equalsIgnoreCase("prova123@gmail.com") && pass.equalsIgnoreCase("succhiamelo")) {
			try {
				res.sendRedirect("/");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else
			return "Autenticazione fallita";
		return null;
	}
}