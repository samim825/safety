package com.spring.safety.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HospitalViewController {


    @GetMapping("/hospitals")
    public ModelAndView hospitalListPage(ModelAndView modelAndView){

        modelAndView.setViewName("hospital");
        return modelAndView;
    }
}
