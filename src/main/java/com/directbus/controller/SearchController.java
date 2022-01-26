package com.directbus.controller;

import java.util.ArrayList;

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
	public ResponseEntity<ArrayList<Route>> searchRoutes(@RequestBody @Valid Route route) {
		HttpStatus status = HttpStatus.ACCEPTED;
		
		ArrayList<Route> routes = DatabaseHandler.getInstance().getRouteDao().search(route);
		
		//ArrayList<Route> allRoute = (ArrayList<Route>) DatabaseHandler.getInstance().getRouteDao().findAll();
		return new ResponseEntity<ArrayList<Route>>(routes, status);
	}
	
	@GetMapping("/getStation")
	public ResponseEntity<ArrayList<String>> getStation(String text) {
		
		ArrayList<String> stations = null;
		if(text.length()>0)
			stations = DatabaseHandler.getInstance().getStationDao().getStationsList(text);
	
		
		return new ResponseEntity<ArrayList<String>>(stations, HttpStatus.OK);
	}
}
