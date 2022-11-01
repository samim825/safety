package com.spring.safety.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {


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


}
