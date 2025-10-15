package com.example.Civic_Citizen_Help_Desk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.Civic_Citizen_Help_Desk.entity.Civic_HelpDeskEntity;
import com.example.Civic_Citizen_Help_Desk.service.Civic_Citizen_HelpDesk_Service;

@RequestMapping("/CivicCitizen")
@RestController
public class Civic_Citizen_HelpDesk_Controller {

	@Autowired
	Civic_Citizen_HelpDesk_Service service;

	@PostMapping("/register")
	public String register_user(@RequestBody Civic_HelpDeskEntity register) {
		
		service.insert_data(register);
		return "data added successfully";
	}
	
	//get
	@GetMapping("/get")
	public List<Civic_HelpDeskEntity> getdata() {
		return service.getall();
		
	}
	
	
	  //login
	@PostMapping("/login")
	public ResponseEntity<Boolean> login(@RequestBody Civic_HelpDeskEntity user) {
	    boolean isValid = service.login_user(user); 
	    return ResponseEntity.ok(isValid); 
	}

	/*
	 * @PostMapping("/login") public ResponseEntity<Boolean> login(@RequestBody
	 * Civic_HelpDeskEntity civic_helpdeskentity) { boolean isValid =
	 * service.login_user(civic_helpdeskentity); return ResponseEntity.ok(isValid);
	 * }
	 */
	
    @PostMapping("/checkEmail")
	public boolean findbyemail(@PathVariable String email) {
		return service.findbyemail(email);
	}
     @PostMapping("/checkMobile")
	public boolean findbymobile(@PathVariable String mobile) {
		return service.findbymobile(mobile);
	}
     @PostMapping("/checkAadhar")
	public boolean findbyaadhar(@PathVariable String aadhar) {
		return service.findbyaadhar(aadhar);
	}
}
