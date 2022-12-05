package com.spring.safety.controller;

import com.spring.safety.model.Doctor;
import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.impl.DoctorServiceImpl;
import com.spring.safety.service.impl.HospitalServiceImpl;
import com.spring.safety.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SuperAdminController {

    @Autowired
    HospitalServiceImpl hospitalService;
    @Autowired
    DoctorServiceImpl doctorService;

    @Autowired
    UserServiceImpl userService;


    @GetMapping("/admin/home")
    public ModelAndView goSuperAdminHomePage(ModelAndView modelAndView){

        List<Doctor> doctorList = doctorService.findAllDoctors();

        modelAndView.addObject("doctors",doctorList);
        modelAndView.setViewName("admin/home");
        return modelAndView;
    }

    @GetMapping("/admin/super-doctorList")
    public ModelAndView goDoctorListPage(ModelAndView modelAndView){

        List<Doctor> doctorList = doctorService.findAllDoctors();
        System.out.println(doctorList);
        modelAndView.addObject("doctors", doctorList);
        modelAndView.setViewName("admin/super-doctor-all");
        return modelAndView;
    }

    @GetMapping("/admin/hospitalList")
    public ModelAndView goHospitalListPage(ModelAndView modelAndView){


        List<Hospital> hospitalList = userService.findActiveHospital();
        modelAndView.addObject("hospitals", hospitalList);
        List<Hospital> inActiveHospitalList = userService.findInActiveHospital();
        modelAndView.addObject("inActiveHospitals", inActiveHospitalList);
        modelAndView.setViewName("admin/hospital-all");
        return modelAndView;
    }
}
