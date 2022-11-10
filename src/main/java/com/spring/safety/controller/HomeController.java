package com.spring.safety.controller;


import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.repository.UserRepository;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {

    @Autowired
    private final UserService userService;
    @Autowired
    private final HospitalService hospitalService;

    @GetMapping("/")
    public ModelAndView goHome(ModelAndView modelAndView){
        List<Hospital> hospitals = hospitalService.getAllHospitals();
        modelAndView.addObject("hospitals", hospitals);
        modelAndView.setViewName("index");
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

        Hospital hospital = hospitalService.findById(id);
        modelAndView.addObject("hospitalEmail",hospital.getUser().getEmail());
        modelAndView.addObject("hospital", hospital);
        modelAndView.setViewName("single-hospital");
        return modelAndView;
    }



}
