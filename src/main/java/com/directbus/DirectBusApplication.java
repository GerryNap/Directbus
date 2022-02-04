package com.directbus;

import java.io.FileNotFoundException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.directbus.service.PdfGenerator;
import com.itextpdf.text.DocumentException;


@SpringBootApplication
public class DirectBusApplication {

	public static void main(String[] args) {
		SpringApplication.run(DirectBusApplication.class, args);
		try {
			PdfGenerator.getInstance().getTicket();
		} catch (FileNotFoundException | DocumentException e) {
			e.printStackTrace();
		}
	}
}