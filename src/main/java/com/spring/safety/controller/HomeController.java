package com.spring.safety.controller;


//import com.spring.safety.config.EmailConfiguration;
import com.spring.safety.config.EmailConfiguration;
import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.DoctorService;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import com.spring.safety.service.impl.EmailService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import java.util.List;
import java.util.Optional;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;
    private final HospitalService hospitalService;
    private final DoctorService doctorService;
    private final EmailConfiguration emailConfiguration;
    private final EmailService emailService;

    @GetMapping("/")
    public ModelAndView goHome(ModelAndView modelAndView){
        List<Hospital> hospitals = userService.findActiveHospital();
        modelAndView.addObject("hospitals", hospitals);
        modelAndView.addObject("doctors", doctorService.findAllDoctors());
        modelAndView.setViewName("index");
        emailService.sendEmail();
        return modelAndView;
    }

    @PostMapping("/register")
    public User saveUser(@RequestBody User user){

        return userService.save(user);
    }

    @GetMapping("/home")
    public String goLoginPage(){

        return "public/home";
    }

    @GetMapping("/{id}")
    public ModelAndView goHospitalPage(@PathVariable String id, ModelAndView modelAndView){
        System.out.println("Hospital id : "+id);

        Optional<Hospital> hospital = hospitalService.findById(id);

        hospital.ifPresent(hos -> modelAndView.addObject("hospitalEmail",hos.getUser().getEmail()));
        hospital.ifPresent(hos -> modelAndView.addObject("hospital",hos));
        modelAndView.addObject("doctors", doctorService.findAllDoctorsByHospital(id));

        modelAndView.setViewName("single-hospital");
        return modelAndView;
    }

}
