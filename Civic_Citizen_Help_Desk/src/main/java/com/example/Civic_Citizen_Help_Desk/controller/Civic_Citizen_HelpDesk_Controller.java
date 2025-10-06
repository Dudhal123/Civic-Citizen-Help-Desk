package com.example.Civic_Citizen_Help_Desk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.Civic_Citizen_Help_Desk.entity.Civic_HelpDeskEntity;
import com.example.Civic_Citizen_Help_Desk.service.Civic_Citizen_HelpDesk_Service;

@RestController
public class Civic_Citizen_HelpDesk_Controller {

	@Autowired
	Civic_Citizen_HelpDesk_Service service;
	
	@PostMapping("/insert")
	public String insertData(@RequestBody Civic_HelpDeskEntity register) {
		
		service.insert_data(register);
		return "data added successfully";
	}
	
}
