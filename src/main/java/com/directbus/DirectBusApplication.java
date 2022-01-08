package com.directbus;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.directbus.database.DataBaseHandler;

@SpringBootApplication
public class DirectBusApplication {

	public static void main(String[] args) {
		SpringApplication.run(DirectBusApplication.class, args);
	}

}
