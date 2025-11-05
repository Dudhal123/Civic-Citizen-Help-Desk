package com.helpdesk.service_implementation;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
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
	            village[] villages = restTemplate.getForObject(baseUrl + "/getVillageByTaluka/{talukaId}", village[].class, talukaId);

	            return Arrays.asList(villages);
	        } catch (Exception e) {
	            System.err.println("Error fetching villages for Taluka ID " + talukaId + ": " + e.getMessage());
	            return List.of();
	        }
		
	}

	public List<Taluka> findAll() {
		Taluka[] talukas = restTemplate.getForObject(baseUrl + "/getTaluka", Taluka[].class);
        return Arrays.asList(talukas);
	}
}
