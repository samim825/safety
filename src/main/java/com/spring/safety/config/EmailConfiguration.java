package com.spring.safety.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import java.util.Properties;

@Configuration
public class EmailConfiguration {

    @Value("${spring.mail.username}")
    private String username;

    @Value("${spring.mail.password}")
    private String password;
    @Value("${spring.mail.host}")
    private String host;

    @Value("${spring.mail.port}")
    private String port;

    @Value("${spring.mail.properties.mail.smtp.starttls.enable}")
    private Boolean starttls;

    @Value("${spring.mail.properties.mail.smtp.auth}")
    private Boolean auth;

    public Session getEmailSession(){
        Properties properties = new Properties();
        properties.put("mail.smtp.hot", host);
        properties.put("mail.smtp.port", port);
        properties.put("mail.smtp.auth", auth);
        properties.put("mail.smtp.starttls.enable", starttls);

        properties.put("mail.smtp.username", username);
        properties.put("mail.smtp.password", password);

        return Session.getInstance(
                properties, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication(){
                        return new PasswordAuthentication(username, password);
                    }
                });
    }
}
