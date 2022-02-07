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
import com.directbus.model.EmailTicket;
import com.directbus.model.UserClient;
import com.directbus.service.pdf.PdfGenerator;

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
	
	
	public void sendEmailWithAttachment(EmailTicket et) throws MessagingException {
		PdfGenerator.getInstance().sendTicket(et);
		MimeMessage mimeMessage = mailSender.createMimeMessage();
		MimeMessageHelper mimeMessageHelper = new MimeMessageHelper(mimeMessage, true);
		
		mimeMessageHelper.setFrom("info.directbus@gmail.com");
		mimeMessageHelper.setTo(et.getEmail());
		mimeMessageHelper.setText("Ciao da Direct Bus, ecco il tuo biglietto:");
		mimeMessageHelper.setSubject("Biglietto-Direct Bus");
		
		FileSystemResource fileSystem = new FileSystemResource(new File("ticket.pdf"));
		
		mimeMessageHelper.addAttachment(fileSystem.getFilename(), fileSystem);
		
		mailSender.send(mimeMessage);
	}
	
	public String confirmEmail(UserClient user) {
		String token = TokenGenerator.getInstance().getToken();
		String link = "localhost:8443/verifyEmail?token=" + token;
		String body = "Ciao " + user.getFirstName() + " " + user.getLastName() + ",\n" +
					  "Verifica la tua email: " + link;
		sendSimpleEmail(user.getEmail(), body, "Verifica la tua email");
		return token;
	}
	
	public String confirmEmail(AgencyUser user) {
		String token = TokenGenerator.getInstance().getToken();
		String link = "localhost:8443/verifyEmail?token=" + token;
		String body = "Ciao " + user.getName() + ",\n" +
					  "Verifica la tua email: " + link;
		sendSimpleEmail(user.getEmail(), body, "Verifica la tua email");
		return token;
	}
}