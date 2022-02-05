package com.directbus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NavbarController {

	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "aboutUs";
	}
	@GetMapping("/discover")
	public String discover() {
		return "discover";
	}
}
