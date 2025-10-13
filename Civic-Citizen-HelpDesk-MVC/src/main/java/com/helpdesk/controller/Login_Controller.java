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

    @PostMapping("/sendotp")
    @ResponseBody
    public String sendOtp(@RequestParam("email") String email, HttpSession session) {
        if (email == null || email.isEmpty()) {
            return "Email is required!";
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
    public String newRegister(@ModelAttribute Register_Entity register_entity, HttpSession session) {

        Boolean isOtpVerified = (Boolean) session.getAttribute("isOtpVerified");
        if (isOtpVerified == null || !isOtpVerified) {
            return "redirect:/register_page?error=otpNotVerified";
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
            Model model) {

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

        return "redirect:/home_page";
    }
}
