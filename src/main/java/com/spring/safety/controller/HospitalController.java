package com.spring.safety.controller;


import com.spring.safety.model.Hospital;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.impl.HospitalServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

@Controller
public class HospitalController {

    @Autowired
    private HospitalServiceImpl hospitalService;

    @PostMapping
    public ModelAndView saveHospital(Hospital hospital){

        ModelAndView modelAndView = new ModelAndView();
        hospitalService.save(hospital);
        return modelAndView;
    }

    @GetMapping
    public Hospital findHospitalById(String id){
        return hospitalService.findById(id);
    }

    @PostMapping("/update")
    public ModelAndView updateHospital(Hospital hospital){

        ModelAndView modelAndView = new ModelAndView();
        hospitalService.update(hospital);
        return modelAndView;
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
