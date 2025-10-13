package com.helpdesk.service_implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;
import com.helpdesk.entity.Register_Entity;

@Service
public class Service_Implementation {
	
	@Autowired
    private RestTemplate restTemplate;

    // Correct base URL
    private final String baseUrl = "http://localhost:8181/CivicCitizen";
    
    // For Register User
    public String register_user(Register_Entity register_entity) {
        return restTemplate.postForObject(baseUrl + "/register", register_entity, String.class);
    }

 // Service_Implementation.java
    public boolean login(Register_Entity register_entity) {
        Boolean result = restTemplate.postForObject(baseUrl + "/login", register_entity, Boolean.class);
        return result != null && result; // safely convert Boolean to primitive
    }

}
