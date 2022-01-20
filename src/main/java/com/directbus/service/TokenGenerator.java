package com.directbus.service;

import java.util.Random;

public class TokenGenerator {
	private static TokenGenerator instance = null;
	public static TokenGenerator getInstance() {
		if(instance == null)
			instance = new TokenGenerator();
		return instance;
	}

	private String token;
	private Random random;
	private TokenGenerator() {
		token = "";
		random = new Random();
	}
	
	public String getToken() {
		for(int i = 0; i < 10; ++i)
			token += (char) (random.nextInt(10) + 48);
		return token;
	}
}