package com.directbus.model;

import javax.validation.constraints.Email;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

public class User {
	private Integer id;

	private String first_name;
	private String last_name;
	@Email
	private String email;
	private String password;
}