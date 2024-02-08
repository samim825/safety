package com.spring.safety.controller;

import com.spring.safety.model.Department;
import com.spring.safety.model.Doctor;
import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.DepartmentService;
import com.spring.safety.service.DoctorService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.print.Doc;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class DoctorController {

    private final DoctorService doctorService;

    private final DepartmentService departmentService;

    @PostMapping("/saveDoctor")
    public ModelAndView save(@ModelAttribute Doctor doctor, HttpSession session){

        System.out.println(doctor.toString());
        ModelAndView modelAndView = new ModelAndView();
        User user = (User) session.getAttribute("user");
        doctor.setHospitalId(user.getHospital().getId());
        Department department = departmentService.findById(doctor.getDepartmentId());
        doctor.setDepartmentName(department.getName());
        doctor.setHospitalName(user.getHospital().getHospitalName());
        doctorService.save(doctor);
        modelAndView.setViewName("redirect:/admin/addDoctor");
//        modelAndView.addObject("msg", "Successfully Doctor added!");
        return modelAndView;
    }

    @PostMapping("/updateDoctor")
    public ModelAndView updateDoctor(Doctor doctor){
        ModelAndView modelAndView = new ModelAndView();
        doctorService.update(doctor);
        return modelAndView;
    }

//    @GetMapping
//    public Doctor findDoctorById(String id){
//        return doctorService.findById(id);
//    }

    @GetMapping("/deleteDoctor")
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

    @GetMapping("/doctorList")
    public ModelAndView goDoctorListPage(HttpSession session, ModelAndView modelAndView){

        User user = (User) session.getAttribute("user");
        Hospital hospital = user.getHospital();
        List<Doctor> doctorList = doctorService.findAllDoctorsByHospital(hospital.getId());
        System.out.println(doctorList);
        modelAndView.addObject("doctorList", doctorList);
        modelAndView.setViewName("admin/doctor-all");
        return modelAndView;
    }
}
