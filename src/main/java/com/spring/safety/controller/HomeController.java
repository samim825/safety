package com.spring.safety.controller;


import com.spring.safety.model.User;
import com.spring.safety.repository.UserRepository;
import com.spring.safety.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@Controller
@RequiredArgsConstructor
public class HomeController {

    private final UserService userService;

    @GetMapping("/")
    public String goHome(){

        return "index";
    }

    @PostMapping("/register")
    public User saveUser(@RequestBody User user){

        return userService.save(user);
    }

    @GetMapping("/home")
    public String goLoginPage(){

        return "public/home";
    }

    @GetMapping("/hospital")
    public String goHospitalPage(){

        return "single-hospital";
    }


}
