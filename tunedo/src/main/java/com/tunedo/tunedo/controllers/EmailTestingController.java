package com.tunedo.tunedo.controllers;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import com.tunedo.tunedo.email.EmailManager;

@RestController
@RequestMapping("/email")
public class EmailTestingController {
    private final EmailManager emailManager;

    public EmailTestingController(EmailManager emailManager) {
        this.emailManager = emailManager;
    }

    @GetMapping("/send-test-email")
    public String sendEmailTest() {
        System.out.println("Endpoint hit: /email/send-test-email");
        emailManager.sendEmail("obisporicapa@gmail.com", "Email testing", "Hola tetabicho");
        return "Email test sent Successfully";
    }
}