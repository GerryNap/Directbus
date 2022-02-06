package com.directbus.controller;

import java.util.ArrayList;
import java.util.Comparator;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.directbus.model.Route;
import com.directbus.persistence.DatabaseHandler;

@Controller
public class SearchController {
	
	@GetMapping({"/", "index"})
	public String index() {
		return "index";
	}
	
	@PostMapping(value = "/searchRoutes", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> searchRoutes(HttpSession session, @RequestBody @Valid Route route) {
		ArrayList<Route> routes = DatabaseHandler.getInstance().getRouteDao().search(route);
		if(routes.size() == 0) {
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		} else {
			session.setAttribute("routes", routes);
			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
	@PostMapping("/sortByPrice")
	public void sortByPrice(HttpSession session){
		@SuppressWarnings("unchecked")
		ArrayList<Route> routes = (ArrayList<Route>) session.getAttribute("routes");
		
		routes.sort(new Comparator<Route>() {
			@Override
			public int compare(Route r1, Route r2) {
				Float diff = r1.getPrice() - r2.getPrice();
				if(diff == 0)
					return 0;
				if(r1.getPrice() > r2.getPrice())
					return 1;
				return -1;
			}
		});
		
		session.setAttribute("routes", routes);
	}
	
	@GetMapping("/getStation")
	public ResponseEntity<ArrayList<String>> getStation(String text) {
		
		ArrayList<String> stations = null;
		if(text.length()>0)
			stations = DatabaseHandler.getInstance().getStationDao().getStationsList(text);	
		
		return new ResponseEntity<ArrayList<String>>(stations, HttpStatus.OK);
	}
}
