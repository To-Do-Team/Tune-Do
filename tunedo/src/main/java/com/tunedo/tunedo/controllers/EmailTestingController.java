package com.tunedo.tunedo.controllers;

import org.springframework.web.bind.annotation.RestController;

import com.tunedo.tunedo.email.EmailManager;
import org.springframework.web.bind.annotation.RequestMapping;


@RestController
public class EmailTestingController {
    private final EmailManager emailManager;

    public EmailTestingController(EmailManager emailManager) {
        this.emailManager = emailManager;
    }

    @RequestMapping("/send-test-email")
    public String sendEmailTest() {
        emailManager.sendEmail("obisporicapa@gmail.com", "Email testing", "Hola tetabicho");
        return "Email test send Successfully";
    }
    
}
