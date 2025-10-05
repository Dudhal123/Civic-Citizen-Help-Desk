package com.helpdesk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.service_implementation.Service_Implementation;

@Service
public class Login_Service {

	@Autowired
	Service_Implementation service_implementation;
	
	public void register_user(Register_Entity register_entity) {
		
		service_implementation.register_user(register_entity);
		
		
	}

	public boolean login(Register_Entity register_entity) {
		
		boolean isValidate=service_implementation.login(register_entity);
		
		return isValidate;
	}	
	
}
