package com.directbus.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SearchController {
	
	@GetMapping("/searchPage")
	public String searchPage(String andata, String ritorno, String dataAndata, String dataRitorno) {
		
		
		
		return "searchPage";
	}
}
