package com.directbus.controller;

import javax.servlet.http.HttpServletRequest;
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
	@GetMapping("/discover")
	public String discover() {
		return "discover";
	}
	@PostMapping(value = "/doRoute", consumes = {"application/json"})
	@ResponseBody
	public ResponseEntity<String> doRoute(HttpServletRequest req, @RequestBody @Valid Route route) {
		String response = "error";
		HttpStatus status = HttpStatus.CONFLICT;
		

		if (DatabaseHandler.getInstance().getRouteDao().saveOrUpdate(route)) {
			status = HttpStatus.ACCEPTED;
			response = "success";
		} else
			response = "Cannot create route";
		return new ResponseEntity<String>(response, status);
	}
}