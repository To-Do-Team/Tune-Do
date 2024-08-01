package com.tunedo.tunedo.email;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class EmailManager {
    private final JavaMailSender mailSerder;

    public EmailManager(JavaMailSender mailSerder) {
        this.mailSerder = mailSerder;
    }

    public void sendEmail(
            String to,
            String subject,
            String body){

        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom("janedoecd2024@gmail.com");
        message.setTo(to);
        message.setSubject(subject);
        message.setText(body);

        mailSerder.send(message);

        System.out.println("Mail Sent");
    }
}
