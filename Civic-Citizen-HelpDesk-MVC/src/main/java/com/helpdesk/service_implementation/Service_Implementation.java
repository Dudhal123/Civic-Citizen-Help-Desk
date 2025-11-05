package com.helpdesk.service_implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.service.Login_Service;

@Service
public class Service_Implementation implements Login_Service {

    @Autowired
    private RestTemplate restTemplate;

    private final String baseUrl = "http://localhost:8282/api";

    @Override
    public void register_user(Register_Entity register_entity) {
        restTemplate.postForObject(baseUrl + "/register", register_entity, String.class);
    }

    @Override
    public boolean login(Register_Entity register_entity) {
        Boolean result = restTemplate.postForObject(baseUrl + "/login", register_entity, Boolean.class);
        return result != null && result;
    }

    @Override
    public Boolean emailValidator(String email) {
       return restTemplate.postForObject(baseUrl + "/emailValidator", email, Boolean.class);
    }

	@Override
	public Boolean mobileValidator(String mobile) {
		
		return restTemplate.postForObject(baseUrl + "/mobileValidator", mobile, Boolean.class);
	}

	@Override
	public Boolean aadharValidator(String aadhar) {
		return restTemplate.postForObject(baseUrl + "/aadharValidator", aadhar, Boolean.class);
	}
}
