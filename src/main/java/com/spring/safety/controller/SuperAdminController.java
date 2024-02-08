package com.spring.safety.controller;

import com.spring.safety.model.Doctor;
import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.impl.DoctorServiceImpl;
import com.spring.safety.service.impl.HospitalServiceImpl;
import com.spring.safety.service.impl.UserServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class SuperAdminController {

    private final HospitalServiceImpl hospitalService;
    private final DoctorServiceImpl doctorService;
    private final UserServiceImpl userService;

    @GetMapping("/admin/home")
    public ModelAndView goSuperAdminHomePage(ModelAndView modelAndView){

        List<Doctor> doctorList = doctorService.findAllDoctors();
        List<Hospital> activatedHospitalList = userService.findActiveHospital();
        List<Hospital> deactivatedHospitals = userService.findInActiveHospital();

        modelAndView.addObject("doctors",doctorList);
        modelAndView.addObject("activatedHospital", activatedHospitalList.size());
        modelAndView.addObject("deactivatedHospitals", deactivatedHospitals.size());
        modelAndView.addObject("totalDoctors", doctorList.size());
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

    @GetMapping("/admin/activeHospital/{id}")
    public String activeHospital(ModelAndView modelAndView, @PathVariable String id){

        System.out.println("Id : "+id);
//        modelAndView.setViewName("redirect://admin/hospitalList");
        Hospital hospital = hospitalService.findById(id).get();
        userService.activateUser(hospital);
        return "redirect:/admin/hospitalList";
    }

    @GetMapping("/admin/deActiveHospital/{id}")
    public String deActiveHospital(ModelAndView modelAndView, @PathVariable String id){

        System.out.println("Id : "+id);
//        modelAndView.setViewName("redirect://admin/hospitalList");
        Hospital hospital = hospitalService.findById(id).get();
        userService.deActivateUser(hospital);
        return "redirect:/admin/hospitalList";
    }
}
