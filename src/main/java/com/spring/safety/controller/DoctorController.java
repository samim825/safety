package com.spring.safety.controller;

import com.spring.safety.model.Doctor;
import com.spring.safety.service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/doctor")
public class DoctorController {

    @Autowired
    private DoctorService doctorService;

    @PostMapping("/save")
    public ModelAndView save(Doctor doctor){
        ModelAndView modelAndView = new ModelAndView();
        doctorService.save(doctor);
        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView updateDoctor(Doctor doctor){
        ModelAndView modelAndView = new ModelAndView();
        doctorService.update(doctor);
        return modelAndView;
    }

    @GetMapping
    public Doctor findDoctorById(String id){
        return doctorService.findById(id);
    }

    @GetMapping("/delete")
    public ModelAndView deleteDoctorById(String id){
        ModelAndView modelAndView = new ModelAndView();
        doctorService.delete(id);
        return modelAndView;
    }

    @GetMapping("/findAll")
    public ModelAndView findAllDoctors(){
        ModelAndView modelAndView = new ModelAndView();
        doctorService.findAllDoctors();
        return modelAndView;
    }
}
