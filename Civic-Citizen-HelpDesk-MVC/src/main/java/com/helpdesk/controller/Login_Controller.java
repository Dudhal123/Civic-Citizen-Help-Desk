package com.helpdesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.helpdesk.entity.Register_Entity;
import com.helpdesk.service.Login_Service;

import jakarta.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class Login_Controller {

    @Autowired
    private Login_Service login_service;

    @PostMapping("/checkEmail")
    @ResponseBody
    public Map<String, Boolean> checkEmail(@RequestParam("email") String email) {
        Map<String, Boolean> response = new HashMap<>();
        Boolean emailExists = login_service.emailValidator(email);
        response.put("exists", emailExists);
        return response;
    }

    @PostMapping("/checkMobile")
    @ResponseBody
    public Map<String, Boolean> checkMobile(@RequestParam("mobile") String mobile) {
        Map<String, Boolean> response = new HashMap<>();
        Boolean mobileExists = login_service.mobileValidator(mobile);
        response.put("exists", mobileExists);
        return response;
    }

    @PostMapping("/checkAadhar")
    @ResponseBody
    public Map<String, Boolean> checkAadhar(@RequestParam("aadhar") String aadhar) {
        Map<String, Boolean> response = new HashMap<>();
        Boolean aadharExists = login_service.aadharValidator(aadhar);
        response.put("exists", aadharExists);
        return response;
    }

    @PostMapping("/register")
    public String newRegister(@ModelAttribute Register_Entity register_entity, HttpSession session, Model model) {

        // Otp Verification
        Boolean isOtpVerified = (Boolean) session.getAttribute("isOtpVerified");
        if (isOtpVerified == null || !isOtpVerified) {
            model.addAttribute("error", "Please verify your email with OTP first.");
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
        Login_Controller login_controller= new Login_Controller();
        boolean isValid = login_service.login(register_entity);
        if (!isValid) {
            model.addAttribute("error", "Invalid username or password.");
            return "Login";
        }
        else {
            httpSession.setAttribute("username", username);
            String email = (String) httpSession.getAttribute("name");
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