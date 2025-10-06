package com.example.Civic_Citizen_Help_Desk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.example.Civic_Citizen_Help_Desk.service.Civic_Citizen_HelpDesk_Service;

@RestController
public class Civic_Citizen_HelpDesk_Controller {

	@Autowired
	Civic_Citizen_HelpDesk_Service service;
	
}
