package com.directbus.controller;

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
public class RouteController {
	
	@GetMapping("/publicRoute")
	public String publicRoute() {
		return "publicRoute";
	}
	
	@PostMapping(value = "/doRoute", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doRoute(@RequestBody @Valid Route route) {
		if (DatabaseHandler.getInstance().getRouteDao().saveOrUpdate(route))
			return new ResponseEntity<String>(HttpStatus.OK);
		else
			return new ResponseEntity<String>(HttpStatus.CONFLICT);
	}
}