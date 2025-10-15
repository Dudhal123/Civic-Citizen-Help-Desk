package com.helpdesk.controller;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.service.Login_Service;

import jakarta.servlet.http.HttpSession;

@Controller
public class Login_Controller {

    @Autowired
    private Login_Service login_service;

    @Autowired
    private JavaMailSender mailSender;

    @RequestMapping("/register_page")
    public String showRegisterPage() {
        return "Register";
    }

    // New validation endpoints
    @PostMapping("/checkEmail")
    @ResponseBody
    public String checkEmailExists(@RequestParam("email") String email) {
        boolean exists = login_service.checkEmailExists(email);
        return exists ? "EXISTS" : "AVAILABLE";
    }

    @PostMapping("/checkMobile")
    @ResponseBody
    public String checkMobileExists(@RequestParam("mobile") String mobile) {
        boolean exists = login_service.checkMobileExists(mobile);
        return exists ? "EXISTS" : "AVAILABLE";
    }

    @PostMapping("/checkAadhar")
    @ResponseBody
    public String checkAadharExists(@RequestParam("aadhar") String aadhar) {
        boolean exists = login_service.checkAadharExists(aadhar);
        return exists ? "EXISTS" : "AVAILABLE";
    }

    @PostMapping("/sendotp")
    @ResponseBody
    public String sendOtp(@RequestParam("email") String email, HttpSession session) {
        if (email == null || email.isEmpty()) {
            return "Email is required!";
        }

        // Check if email already exists before sending OTP
        boolean emailExists = login_service.checkEmailExists(email);
        if (emailExists) {
            return "❌ This email is already registered. Please use a different email address.";
        }

        int otp = 100000 + new Random().nextInt(900000);

        session.setAttribute("otp", otp);
        session.setAttribute("otpEmail", email);
        session.setAttribute("isOtpVerified", false);

        try {
            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(email);
            message.setSubject("Your Civic Citizen HelpDesk OTP Code");
            message.setText("Dear User,\n\nYour OTP for registration is: " + otp +
                    "\n\nPlease do not share this code with anyone.\n\nThank you,\nCivic Citizen HelpDesk Team");

            mailSender.send(message);
            
            return "OTP sent successfully to your email!";
        } catch (Exception e) {
            e.printStackTrace();
            return "❌ Failed to send OTP. Please check your email address or SMTP configuration.";
        }
    }

    @PostMapping("/verifyotp")
    @ResponseBody
    public String verifyOtp(@RequestParam("otp") String enteredOtp, HttpSession session) {
        Object otpObj = session.getAttribute("otp");

        if (otpObj == null) {
            return "No OTP found. Please request a new one.";
        }

        String generatedOtp = otpObj.toString();
        if (enteredOtp.equals(generatedOtp)) {
            session.setAttribute("isOtpVerified", true);
            return "OTP verified successfully!";
        } else {
            return "Invalid OTP. Please try again.";
        }
    }

    @PostMapping("/register")
    public String newRegister(@ModelAttribute Register_Entity register_entity, HttpSession session, Model model) {

        Boolean isOtpVerified = (Boolean) session.getAttribute("isOtpVerified");
        if (isOtpVerified == null || !isOtpVerified) {
            return "redirect:/register_page?error=otpNotVerified";
        }

        // Final validation before registration
        boolean emailExists = login_service.checkEmailExists(register_entity.getEmail());
        boolean mobileExists = login_service.checkMobileExists(register_entity.getMobile());
        boolean aadharExists = login_service.checkAadharExists(register_entity.getAadhar());

        if (emailExists || mobileExists || aadharExists) {
            if (emailExists) {
                model.addAttribute("emailError", "Email is already registered.");
            }
            if (mobileExists) {
                model.addAttribute("mobileError", "Mobile number is already registered.");
            }
            if (aadharExists) {
                model.addAttribute("aadharError", "Aadhar number is already registered.");
            }
            
            // Keep form data for re-population
            model.addAttribute("register_entity", register_entity);
            return "Register";
        }

        String fullname = register_entity.getFirstname() + " " +
                (register_entity.getMiddlename() != null ? register_entity.getMiddlename() + " " : "") +
                register_entity.getLastname();
        register_entity.setFullname(fullname.trim());

        login_service.register_user(register_entity);
        session.removeAttribute("otp");
        session.removeAttribute("otpEmail");
        session.removeAttribute("isOtpVerified");

        return "redirect:/login_page?success=registered";
    }

    @PostMapping("/login")
    public String loginUser(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            @RequestParam("captchaEntered") String captchaEntered,
            @RequestParam("captchaGenerated") String captchaGenerated,
            Model model, HttpSession httpSession) {

        if (!captchaEntered.equals(captchaGenerated)) {
            model.addAttribute("error", "Invalid Captcha. Please try again.");
            return "Login";
        }

        Register_Entity register_entity = new Register_Entity(username, password);

        boolean isValid = login_service.login(register_entity);
        if (!isValid) {
            model.addAttribute("error", "Invalid username or password.");
            return "Login";
        }
        else {
        	httpSession.setAttribute("email", username);
        	String email = (String) httpSession.getAttribute("email");
        	model.addAttribute("username", email);
        	return "Dashboard";
        }
    }
    
    @RequestMapping("/logout")
    public String logout(HttpSession httpSession) {
    	httpSession.invalidate();
		return "Login";
    	
    }
}