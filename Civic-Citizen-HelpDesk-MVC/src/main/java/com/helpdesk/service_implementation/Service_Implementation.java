package com.helpdesk.service_implementation;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.entity.Taluka;
import com.helpdesk.entity.village;
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
	

	 public List<village> findByTalukaId(Long talukaId) {
	        try {
	            ResponseEntity<village[]> response = restTemplate.getForEntity(
	                baseUrl + "/getVillageByTaluka/{talukaId}",
	                village[].class,
	                talukaId
	            );
	            return response.getBody() != null ? Arrays.asList(response.getBody()) : List.of();
	        } catch (Exception e) {
	            System.err.println("Error fetching villages: " + e.getMessage());
	            return List.of();
	        }
	    }

	    public List<Taluka> findAll() {
	        ResponseEntity<Taluka[]> response = restTemplate.getForEntity(
	            baseUrl + "/getTaluka",
	            Taluka[].class
	        );
	        return response.getBody() != null ? Arrays.asList(response.getBody()) : List.of();
	    }

		@Override
		public String getUserByEmail(String email) {
			
			return restTemplate.postForObject(baseUrl + "/UserByEmail", email, String.class);
			
		}

}
