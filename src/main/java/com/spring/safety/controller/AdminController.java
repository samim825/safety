package com.spring.safety.controller;

import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.websocket.server.PathParam;

@Controller
public class AdminController {

    @Autowired
    private HospitalService hospitalService;
    @Autowired
    private UserService userService;

   @GetMapping("/admin")
    public String goHomePage(){

        System.out.println("Admin index page");
        return "admin/index";
    }

    @GetMapping("/admin/doctorList")
    public String goDoctorListPage(){


        return "admin/doctor-all";
    }

    @GetMapping("/admin/addDoctor")
    public String addDoctorPage(){
        return "admin/doctor-add";
    }


    @GetMapping({ "/admin/login"})
    public String adminLoginPage(){

//       Hospital hospital = hospitalService.findByEmail("samimhossain825@gmail.com");
//        System.out.println(hospital.toString());
        System.out.println("admin login page visited");
       return "admin/login";
    }

    @GetMapping("/admin/register")
    public String adminRegisterPage(){

        System.out.println("admin registration page visited");
        return "admin/registration";
    }

    @PostMapping("/admin/registration")
    public String adminPage(@ModelAttribute User user, @ModelAttribute Hospital hospital){

//        @RequestParam("hospitalName") String hospitalName
        System.out.println(hospital.toString());
//        Hospital hospital = new Hospital()
        System.out.println(user.toString());
        System.out.println("admin registration page visited");
//        hospitalService.save(hospital);
        user.setHospital(hospital);
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);
        userService.save(user);

        return "admin/registration";
    }

}
