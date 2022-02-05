package com.directbus.controller;

import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.Ticket;

@Controller
public class TicketController {
	
	@GetMapping("/buyTicket")
	public String buyTicket() {
		return "buyTicket";
	}
	
	@PostMapping(value = "/addTicket", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> addTicket(@RequestBody @Valid Ticket ticket){
		System.out.println(ticket.getClientEmail());
		System.out.println(ticket.getRouteCod());
		
		return new ResponseEntity<String>("Ciao", HttpStatus.OK);
	}
}