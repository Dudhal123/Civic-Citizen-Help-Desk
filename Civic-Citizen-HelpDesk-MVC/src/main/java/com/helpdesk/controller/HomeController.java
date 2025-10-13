package com.helpdesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home() {
        return "Home";
    }

    @RequestMapping("/home_page")
    public String homePage() {
        return "Home";
    }

    @RequestMapping("/login_page")
    public String loginPage() {
        return "Login";
    }

    // ❌ REMOVE duplicate register_page here
    // ✅ handled already in Login_Controller
}
