package com.spring.safety.controller;

import com.spring.safety.model.Department;
import com.spring.safety.service.DepartmentService;
import net.bytebuddy.matcher.StringMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin/department")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @PostMapping("/save")
    public ModelAndView save(Department department){
        ModelAndView modelAndView = new ModelAndView();
        departmentService.save(department);
        return modelAndView;
    }

    @PostMapping("/update")
    public ModelAndView update(Department department){
        ModelAndView modelAndView = new ModelAndView();
        departmentService.update(department);
        return modelAndView;
    }

    @GetMapping("/")
    public Department findDepartmentById(String id){
        return departmentService.findById(id);
    }

    @GetMapping("/findALl")
    public ModelAndView findAllDepartments(){
        ModelAndView modelAndView = new ModelAndView();
        departmentService.findAllDepartments();
        return modelAndView;
    }

    @GetMapping("/delete")
    public ModelAndView deleteDepartment(String id){
        ModelAndView modelAndView = new ModelAndView();
        departmentService.delete(id);
        return modelAndView;
    }
}
