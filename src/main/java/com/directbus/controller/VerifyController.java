package com.directbus.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.directbus.model.User;
import com.directbus.persistence.DatabaseHandler;

@Controller
public class VerifyController {
	
	@GetMapping("/notVerified")
	public String notVerified() {
		return "/notVerified";
	}
	
	@GetMapping("/verifyEmail")
	public String verifyEmail(HttpSession session, String token) {
		
		if(token.equals(session.getAttribute("tokenEmail"))) {
			DatabaseHandler.getInstance().getClientUserDao().setVerifiedEmail((User)session.getAttribute("user"), true);
			session.removeAttribute("tokenEmail");
			return "/index";
		}
		else
			return "/notVerified";
	}
}