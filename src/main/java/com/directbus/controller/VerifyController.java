package com.directbus.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class VerifyController {
	
	@GetMapping("/notVerified")
	public String notVerified() {
		return "/notVerified";
	}
	
	@GetMapping("/verifyEmail")
	public String verifyEmail(HttpSession session, String token) {
		
		if(token.equals(session.getAttribute("tokenEmail"))) {
			session.removeAttribute("tokenEmail");
			return "/";
		}
		else
			return "/notVerified";
	}
}