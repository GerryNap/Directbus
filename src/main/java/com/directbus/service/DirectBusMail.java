package com.directbus.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.directbus.model.AgencyUser;
import com.directbus.model.UserClient;

public class DirectBusMail {
	@Autowired
	private static EmailSenderService emailService;

	public static void registrationClientEmail(UserClient user) {
		String body = "Benvenuto " + user.getFirstName() + " " + user.getLastName();
		emailService.sendSimpleEmail(user.getEmail(), body, "DirectBus Registration");
	}
	
	public static void registrationBusinessEmail(AgencyUser user) {
		String body = user.getName() + "\nLa ringraziamo per averci scelto per la vendita dei suoi biglietti";
		emailService.sendSimpleEmail(user.getEmail(), body, "DirectBus Registration");
	}
	
	public static void confirmEmail(String email) {
		
	}
	
	public static void forgotPassword(String email) {
		
	}
	
	public static void sendTicket(String email) {
		
	}
}