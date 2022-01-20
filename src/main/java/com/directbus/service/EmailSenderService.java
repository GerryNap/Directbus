package com.directbus.service;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.directbus.model.AgencyUser;
import com.directbus.model.UserClient;

@Service 
public class EmailSenderService {
	
	@Autowired
	private JavaMailSender mailSender; 
	
	private void sendSimpleEmail(String toEmail, String body, String subject) {
		SimpleMailMessage message = new SimpleMailMessage();
		
		message.setFrom("info.directbus@gmail.com");
		message.setTo(toEmail);
		message.setText(body);
		message.setSubject(subject);
		
		mailSender.send(message);
	}
	
	
	@SuppressWarnings("unused")
	private void sendEmailWithAttachment(String toEmail, String body, String subject, String attachment) throws MessagingException {
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
		
		mimeMessageHelper.setFrom("info.directbus@gmail.com");
		mimeMessageHelper.setTo(toEmail);
		mimeMessageHelper.setText(body);
		mimeMessageHelper.setSubject(subject);
		
		FileSystemResource fileSystem = new FileSystemResource(new File(attachment));
		
		mimeMessageHelper.addAttachment(fileSystem.getFilename(), fileSystem);
		
		mailSender.send(mimeMessage);
		System.out.println("Mail send...");
	}

	public void registrationClientEmail(UserClient user) {
		String body = "Benvenuto " + user.getFirstName() + " " + user.getLastName();
		sendSimpleEmail(user.getEmail(), body, "DirectBus Registration");
	}
	
	public void registrationBusinessEmail(AgencyUser user) {
		String body = user.getName() + "\nLa ringraziamo per averci scelto per la vendita dei suoi biglietti";
		sendSimpleEmail(user.getEmail(), body, "DirectBus Registration");
	}
	
	public String confirmEmail(UserClient user) {
		String token = TokenGenerator.getInstance().getToken();
		String link = "localhost:8443/verifyEmail?token=" + token;
		String body = "Ciao " + user.getFirstName() + " " + user.getLastName() + ",\n" +
					  "Verifica la tua email: " + link;
		sendSimpleEmail(user.getEmail(), body, "Verifica la tua email");
		return token;
	}
	
	public void forgotPassword(String email) {
		
	}
	
	public void sendTicket(String email) {
		
	}
}