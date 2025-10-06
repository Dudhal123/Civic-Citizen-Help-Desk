package com.example.Civic_Citizen_Help_Desk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Civic_Citizen_Help_Desk.repository.Civic_Citizen_HelpDesk_Repository;

@Service
public class Civic_Citizen_HelpDesk_Service {

	@Autowired
	Civic_Citizen_HelpDesk_Repository repository;
	
	
}
