package com.example.Civic_Citizen_Help_Desk.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.Civic_Citizen_Help_Desk.entity.Taluka;
import com.example.Civic_Citizen_Help_Desk.entity.village;
import com.example.Civic_Citizen_Help_Desk.service.LocationService;

@RequestMapping("/api")
@RestController
public class LocationController {
	@Autowired
	LocationService service;
	
	@GetMapping("/getTaluka")
	List<Taluka> gettaluka() {
		
		return service.gettaluka();
	}

	
	@GetMapping("/getVillageByTaluka/{talukaId}")
	List<village> getVillage(@PathVariable("talukaId") Long talukaId) {
		
		return service.getdata(talukaId);
	
	}
	
}
