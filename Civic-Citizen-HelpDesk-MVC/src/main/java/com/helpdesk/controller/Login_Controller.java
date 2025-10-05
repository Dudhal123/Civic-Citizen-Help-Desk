package com.helpdesk.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.service.Login_Service;

import org.springframework.ui.Model;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class Login_Controller {
	
	@Autowired
	Login_Service login_service;
	
	@RequestMapping("/register")
	public String new_register(@ModelAttribute Register_Entity register_entity, HttpSession session) {
	    
	    Boolean isOtpVerified = (Boolean) session.getAttribute("isOtpVerified");
	    if (isOtpVerified == null || !isOtpVerified) {
	        // redirect or show error
	        return "redirect:/register_page?error=otpNotVerified";
	    }

	    String fullname = register_entity.getFirstname()+" "+register_entity.getMiddlename()+" "+register_entity.getLastname();
	    register_entity.setFullname(fullname);
	    login_service.register_user(register_entity);
	    
	    // Clear OTP verified flag
	    session.removeAttribute("isOtpVerified");

	    return "Register";
	}

	
	 @RequestMapping("/login")
	    public String loginUser(
	            @RequestParam("username") String username,
	            @RequestParam("password") String password,
	            @RequestParam("captchaEntered") String captchaEntered,
	            @RequestParam("captchaGenerated") String captchaGenerated,
	            Model model) {

		 	// Captcha Verification
	        if (!captchaEntered.equals(captchaGenerated)) {
	            model.addAttribute("error", "Invalid Captcha. Please try again.");
	            return "Login"; 
	        }

            // User Login
	        Register_Entity register_entity = new Register_Entity(username, password);
	        
	        boolean isValid = login_service.login(register_entity);
	        if (!isValid) {
	            model.addAttribute("error", "Invalid username or password.");
	            return "Login"; 
	        }

	        // ✅ Step 3: If valid
	        return "redirect:/home_page";
	 }
	 }

	 

