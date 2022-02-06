package com.directbus.controller;

import javax.mail.MessagingException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.EmailTicket;
import com.directbus.model.Ticket;
import com.directbus.persistence.DatabaseHandler;
import com.directbus.service.EmailSenderService;

@Controller
public class TicketController {
	
	@Autowired
	EmailSenderService emailSender;
	
	@GetMapping("/buyTicket")
	public String buyTicket() {
		return "buyTicket";
	}
	
	@PostMapping(value = "/addTicket", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> addTicket(@RequestBody @Valid Ticket ticket){
		
		DatabaseHandler.getInstance().getTicketDao().saveOrUpdate(ticket);
		
		EmailTicket et = DatabaseHandler.getInstance().getTicketDao().getEmailTicket(ticket);
		
		if(et != null)
			try {
				emailSender.sendEmailWithAttachment(et);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return new ResponseEntity<String>("Ciao", HttpStatus.OK);
	}
}