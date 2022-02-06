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
		if(routes.isEmpty()) {
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		} else {
			session.setAttribute("routes", routes);
			return new ResponseEntity<String>(HttpStatus.OK);
		}
	}
	
	@PostMapping("/sortByPrice")
	@ResponseBody
	public ResponseEntity<String> sortByPrice(HttpSession session){
		@SuppressWarnings("unchecked")
		ArrayList<Route> routes = (ArrayList<Route>) session.getAttribute("routes");
		
		if(routes.isEmpty())
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		
		routes.sort(new Comparator<Route>() {
			@Override
			public int compare(Route r1, Route r2) {
				if(r1.getPrice() == r2.getPrice())
					return 0;
				if(r1.getPrice() > r2.getPrice())
					return 1;
				return -1;
			}
		});
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@PostMapping("/sortByDate")
	@ResponseBody
	public ResponseEntity<String> sortByDate(HttpSession session){
		@SuppressWarnings("unchecked")
		ArrayList<Route> routes = (ArrayList<Route>) session.getAttribute("routes");
		
		if(routes.isEmpty())
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		
		routes.sort(new Comparator<Route>() {
			@Override
			public int compare(Route r1, Route r2) {
				return r1.getDataPartenza().compareTo(r2.getDataPartenza());
			}
		});
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@PostMapping("/sortByDuration")
	@ResponseBody
	public ResponseEntity<String> sortByDuration(HttpSession session){
		@SuppressWarnings("unchecked")
		ArrayList<Route> routes = (ArrayList<Route>) session.getAttribute("routes");
		
		if(routes.isEmpty())
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		
		routes.sort(new Comparator<Route>() {
			@Override
			public int compare(Route r1, Route r2) {
				String[] splitted = r1.getDepartureTime().split(":");
				int minutes1 = (Integer.parseInt(splitted[0])*60) + Integer.parseInt(splitted[1]);
				splitted = r1.getArrivalTime().split(":");
				int minutes2 = (Integer.parseInt(splitted[0])*60) + Integer.parseInt(splitted[1]);
				if(minutes1 > minutes2)
					minutes2 += 1440;
				int diff1 = minutes2 - minutes1;
				
				splitted = r2.getDepartureTime().split(":");
				minutes1 = (Integer.parseInt(splitted[0])*60) + Integer.parseInt(splitted[1]);
				splitted = r2.getArrivalTime().split(":");
				minutes2 = (Integer.parseInt(splitted[0])*60) + Integer.parseInt(splitted[1]);
				if(minutes1 > minutes2)
					minutes2 += 1440;
				
				int diff2 = minutes2 - minutes1;
				
				return diff1 - diff2;
			}
		});
		
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@PostMapping("/sortByTime")
	@ResponseBody
	public ResponseEntity<String> sortByTime(HttpSession session){
		@SuppressWarnings("unchecked")
		ArrayList<Route> routes = (ArrayList<Route>) session.getAttribute("routes");
		
		if(routes.isEmpty())
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
		
		routes.sort(new Comparator<Route>() {
			@Override
			public int compare(Route r1, Route r2) {
				return r1.getDepartureTime().compareTo(r2.getDepartureTime());
			}
			
		});
		return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@GetMapping("/getStation")
	public ResponseEntity<ArrayList<String>> getStation(String text) {
		
		ArrayList<String> stations = null;
		if(text.length()>0)
			stations = DatabaseHandler.getInstance().getStationDao().getStationsList(text);	
		
		return new ResponseEntity<ArrayList<String>>(stations, HttpStatus.OK);
	}
}
