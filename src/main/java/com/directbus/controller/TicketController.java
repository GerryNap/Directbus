package com.directbus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TicketController {
	
	@GetMapping("/buyTicket")
	public String buyTicket() {
		return "buyTicket";
	}
	
	@GetMapping("/buyTicketProva")
	public String buyTicketProva() {
		return "buyTicketProva";
	}
	
	@GetMapping("/shoppingCart")
	public String shoppingCart() {
		return "shoppingCart";
	}
}