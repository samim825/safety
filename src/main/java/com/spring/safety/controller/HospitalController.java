package com.spring.safety.controller;


import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Optional;

@Controller
@RequestMapping("/admin/")
@RequiredArgsConstructor
public class HospitalController {

    private final UserService userService;

    private final HospitalService hospitalService;

    @PostMapping
    public ModelAndView saveHospital(Hospital hospital){

        ModelAndView modelAndView = new ModelAndView();
        hospitalService.save(hospital);
        return modelAndView;
    }

    @GetMapping
    public Optional<Hospital> findHospitalById(String id){
        return hospitalService.findById(id);
    }

    @PostMapping("/update")
    public String updateHospital(@ModelAttribute Hospital hospital, HttpSession session){

        User user = (User) session.getAttribute("user");
        user.setHospital(hospital);
        System.out.println(hospital.toString());
        userService.save(user);
        return "redirect:/admin/about";
    }

    @GetMapping("/allHospitals")
    public ModelAndView getAllHospitals(){

        ModelAndView modelAndView = new ModelAndView();
        hospitalService.getAllHospitals();
        return modelAndView;
    }

    @GetMapping("/delete")
    public ModelAndView deleteHospitalById(String id){
        ModelAndView modelAndView = new ModelAndView();
        hospitalService.delete(id);
        return modelAndView;
    }
}
