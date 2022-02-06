package com.directbus.service.pdf;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import org.springframework.stereotype.Service;

import com.directbus.model.EmailTicket;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

@Service
public class PdfGenerator {
	
	private static PdfGenerator instance = null;
	
	private PdfGenerator() {}
	
	public static PdfGenerator getInstance() {
		if(instance == null)
			instance = new PdfGenerator();
		return instance;
	}
	
	public Document getTicket() throws FileNotFoundException, DocumentException {
	
		Document document = new Document();
		PdfWriter.getInstance(document, new FileOutputStream("ticket.pdf"));
	
		document.open();
		
		Font font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
		
		
		Paragraph p;
		
		p = new Paragraph("sdaiku gsdklh ", font);
		document.add(p);
		
		p = new Paragraph("nto prosu", font);
		document.add(p);
		
		document.close();
		
		return document;
	}

	public void sendTicket(EmailTicket et) {
		Document document = new Document();
		try {
			PdfWriter.getInstance(document, new FileOutputStream("ticket.pdf"));
			document.open();
			Font font = FontFactory.getFont(FontFactory.COURIER, 22, BaseColor.BLACK);
			Paragraph p;
			
			p = new Paragraph("Partenza: " + et.getStartS() + "    >>>    " + "Arrivo: " + et.getDestinationS(), font);
			document.add(p);
			
			font = FontFactory.getFont(FontFactory.COURIER, 12, BaseColor.BLACK);
			p = new Paragraph("Tirolare: " + et.getLastName() + " " + et.getFirstName(), font);
			document.add(p);
			
			font = FontFactory.getFont(FontFactory.COURIER, 16, BaseColor.BLACK);
			p = new Paragraph("Informazioni tratta: ", font);
			document.add(p);
			
			font = FontFactory.getFont(FontFactory.COURIER, 12, BaseColor.BLACK);
			p = new Paragraph("Partenza: " + et.getDataPartenza() + " " + et.getDepartureTime(), font);
			document.add(p);
			
			font = FontFactory.getFont(FontFactory.COURIER, 12, BaseColor.BLACK);
			p = new Paragraph("Arrivo: " + et.getDataArrivo() + " " + et.getArrivalTime(), font);
			document.add(p);
			
			document.close();
						
		} catch (FileNotFoundException | DocumentException e) {
			e.printStackTrace();
		}		
	}

}
