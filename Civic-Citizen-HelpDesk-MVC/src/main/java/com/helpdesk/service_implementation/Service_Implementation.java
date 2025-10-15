package com.helpdesk.service_implementation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.service.Login_Service;

@Service
public class Service_Implementation implements Login_Service {
	
	@Autowired
    private RestTemplate restTemplate;

    private final String baseUrl = "http://localhost:8181/CivicCitizen";
    
   
    public void register_user(Register_Entity register_entity) {
        restTemplate.postForObject(baseUrl + "/register", register_entity, String.class);
    }

 
    public boolean login(Register_Entity register_entity) {
        Boolean result = restTemplate.postForObject(baseUrl + "/login", register_entity, Boolean.class);
        return result != null && result; 
    }

    @Override
    public boolean checkEmailExists(String email) {
        try {
            ResponseEntity<Boolean> response = restTemplate.postForEntity(
                baseUrl + "/checkEmail", 
                email, 
                Boolean.class
            );
            return response.getBody() != null && response.getBody();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkMobileExists(String mobile) {
        try {
            ResponseEntity<Boolean> response = restTemplate.postForEntity(
                baseUrl + "/checkMobile", 
                mobile, 
                Boolean.class
            );
            return response.getBody() != null && response.getBody();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean checkAadharExists(String aadhar) {
        try {
            ResponseEntity<Boolean> response = restTemplate.postForEntity(
                baseUrl + "/checkAadhar", 
                aadhar, 
                Boolean.class
            );
            return response.getBody() != null && response.getBody();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}