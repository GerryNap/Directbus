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
		ArrayList<Route> allRoute = (ArrayList<Route>) DatabaseHandler.getInstance().getRouteDao().findAll();
		return new ResponseEntity<ArrayList<Route>>(allRoute, status);
	}
}
