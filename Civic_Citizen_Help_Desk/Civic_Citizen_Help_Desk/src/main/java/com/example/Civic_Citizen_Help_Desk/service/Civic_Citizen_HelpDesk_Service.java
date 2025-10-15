package com.example.Civic_Citizen_Help_Desk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Civic_Citizen_Help_Desk.entity.Civic_HelpDeskEntity;
import com.example.Civic_Citizen_Help_Desk.repository.Civic_Citizen_HelpDesk_Repository;

@Service
public class Civic_Citizen_HelpDesk_Service {

	@Autowired
	Civic_Citizen_HelpDesk_Repository repository;

	public void insert_data(Civic_HelpDeskEntity register) {
		
		repository.save(register);
		
	}

	public List<Civic_HelpDeskEntity> getall() {
		
		return repository.findAll();
	}

//	 public boolean login_user(Civic_HelpDeskEntity civic_helpdeskentity) {
//	        long count = repository.countByEmailAndPassword(
//	            civic_helpdeskentity.getEmail(),
//	            civic_helpdeskentity.getPassword()
//	        );
//	        return count > 0;
//	    }
	
	// Civic_Citizen_HelpDesk_Service.java
	public boolean login_user(Civic_HelpDeskEntity user) {
	    Civic_HelpDeskEntity dbUser = repository.findByEmail(user.getEmail());
	    return dbUser != null && dbUser.getPassword().equals(user.getPassword());
	}

	public boolean findbyemail(String email) {

		return repository.existsByEmail(email);
	}

	public boolean findbymobile(String mobile) {

		return repository.existsByEmail(mobile);
	}

	public boolean findbyaadhar(String aadhar) {

		return repository.existsByAadhar(aadhar);
	}
}
