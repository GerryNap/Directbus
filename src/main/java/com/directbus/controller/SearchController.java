package com.directbus.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.directbus.model.Route;
import com.directbus.persistence.DatabaseHandler;

@Controller
public class SearchController {
	
	@GetMapping("/searchPage")
	public String searchPage(String andata, String ritorno, String dataAndata, String dataRitorno) {
		
		ArrayList<Route> allRoute = (ArrayList<Route>) DatabaseHandler.getInstance().getRouteDao().findAll();
		
		for(Route r: allRoute) {
			System.out.println(r.getDestinationS());
		}
		
		return "searchPage";
	}
}
