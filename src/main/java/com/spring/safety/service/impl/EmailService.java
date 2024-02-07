package com.spring.safety.service.impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService {

    private final JavaMailSender javaMailSender;

    public void sendEmail(){

//        String sender = "safety.healthcare.service@gmail.com";
        String receiver = "samimhossain825@gmail.com";

        try {
//             MimeMessage message = new MimeMessage(emailConfiguration.getEmailSession());
//             message.setFrom(new InternetAddress(sender));
//             message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
//             message.setSubject("An user is visited");
//             MimeBodyPart mimeBodyPart = new MimeBodyPart();
//             mimeBodyPart.setContent("Testing email body", "text/html");
//             Multipart multipart = new MimeMultipart();
//             multipart.addBodyPart(mimeBodyPart);
//             message.setContent(multipart);
//             Transport.send(message);

            SimpleMailMessage message = new SimpleMailMessage();
            message.setTo(receiver);
            message.setSubject("An user is visited");
            message.setText("Testing mail body");
            javaMailSender.send(message);
            log.info("Email send");

        } catch (Exception ex) {
            log.error(":: ERROR:: Failed to :: " + ex);
            ex.printStackTrace();
        }
    }

}
