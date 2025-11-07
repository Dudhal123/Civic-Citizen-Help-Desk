package com.helpdesk.service;

import com.helpdesk.entity.Register_Entity;

public interface Login_Service {
    void register_user(Register_Entity register_entity);
    
    boolean login(Register_Entity register_entity);
    
	Boolean emailValidator(String email);

	Boolean mobileValidator(String mobile);

	Boolean aadharValidator(String aadhar);

	String getUserByEmail(String email);
}