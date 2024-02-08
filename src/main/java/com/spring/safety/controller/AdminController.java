package com.spring.safety.controller;

import com.spring.safety.model.Department;
import com.spring.safety.model.Doctor;
import com.spring.safety.model.Hospital;
import com.spring.safety.model.User;
import com.spring.safety.service.DepartmentService;
import com.spring.safety.service.HospitalService;
import com.spring.safety.service.UserService;
import com.spring.safety.service.impl.DoctorServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class AdminController {


    private final HospitalService hospitalService;

    private final UserService userService;

    private final DepartmentService departmentService;

    private final DoctorServiceImpl doctorService;

   @GetMapping({"/admin", "/admin/"})
    public ModelAndView goHomePage(HttpSession session, ModelAndView modelAndView){

       User user = (User) session.getAttribute("user");

        modelAndView.addObject("user",user);

        Hospital hospital = user.getHospital();
        List<Department> departments = departmentService.findDepartmentByHospital(hospital);
       modelAndView.addObject("totalDepartments", departments.size());
       List<Doctor> doctorList = doctorService.findAllDoctorsByHospital(hospital.getId());
        modelAndView.addObject("totalDoctors", doctorList.size());
        modelAndView.setViewName("admin/index");
        return modelAndView;
    }


    @GetMapping("/admin/addDoctor")
    public ModelAndView addDoctorPage(ModelAndView modelAndView, HttpSession session){

        User user = (User) session.getAttribute("user");
        List<Department> departments = departmentService.findDepartmentByHospital(user.getHospital());
        modelAndView.addObject("departments",departments);
        modelAndView.setViewName("admin/doctor-add");
        return modelAndView;
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
    public ModelAndView adminPage(@ModelAttribute User user, @ModelAttribute Hospital hospital){

        ModelAndView modelAndView = new ModelAndView();
        user.setHospital(hospital);
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);

        try{
            userService.save(user);
            String msg = "Successfully registered.";
            modelAndView.addObject("msg",msg);
            modelAndView.setViewName("/admin/login");
        }catch (Exception e){
            String msg = "Something went wrong!!!please try again";
            modelAndView.addObject("msg",msg);
            modelAndView.setViewName("admin/registration");
            e.printStackTrace();
        }

        return modelAndView;
    }

    @GetMapping("/admin/about")
    public ModelAndView goAboutPage(HttpSession session, ModelAndView modelAndView){

       modelAndView.addObject("user", session.getAttribute("user"));
       modelAndView.setViewName("admin/about");

       return modelAndView;
    }

}
