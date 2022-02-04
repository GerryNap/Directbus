package com.directbus.service;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;

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

}
