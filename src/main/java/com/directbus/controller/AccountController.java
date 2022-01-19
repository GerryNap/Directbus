package com.directbus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AccountController {
	
	@GetMapping("/myProfile")
	public String myProfile() {
		return "myProfile";
	}
	
	@GetMapping("/accountManagement")
	public String accountManagement() {
		return "accountManagement";
	}
	
	@GetMapping("/paymentData")
	public String paymentData() {
		return "paymentData";
	}	
}