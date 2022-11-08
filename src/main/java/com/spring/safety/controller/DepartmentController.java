package com.spring.safety.controller;

import com.spring.safety.model.Department;
import com.spring.safety.model.User;
import com.spring.safety.service.DepartmentService;
import net.bytebuddy.matcher.StringMatcher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @PostMapping("/department/save")
    public String save(@ModelAttribute Department department, HttpSession session){

        User user = (User) session.getAttribute("user");
        department.setHospitalId(user.getHospital());
        departmentService.save(department);

        return "redirect:/admin/departmentList";
    }

    @PostMapping("/department/update")
    public String update(@ModelAttribute Department department,HttpSession session){

        User user = (User) session.getAttribute("user");
        department.setHospitalId(user.getHospital());
        departmentService.update(department);
        return "redirect:/admin/departmentList";
    }

    @ResponseBody
    @GetMapping("/department/{id}")
    public Department findDepartmentById(@PathVariable String id){
        System.out.println(departmentService.findById(id));
        return departmentService.findById(id);
    }

    @GetMapping("/department/findALl")
    public ModelAndView findAllDepartments(){
        ModelAndView modelAndView = new ModelAndView();
        departmentService.findAllDepartments();
        return modelAndView;
    }

    @ResponseBody
    @DeleteMapping("/department/delete/{id}")
    public void deleteDepartment(@PathVariable String id){
        System.out.println(id);
        departmentService.delete(id);

    }

    @GetMapping("/departmentList")
    public ModelAndView departmentListPage(ModelAndView modelAndView, HttpSession session){

        User user = (User) session.getAttribute("user");
        List<Department> departments = departmentService.findDepartmentByHospital(user.getHospital());
        modelAndView.addObject("departments",departments);
        modelAndView.setViewName("admin/departmentList");
        return modelAndView;
    }

    @GetMapping("/addDepartment")
    public ModelAndView addDepartmentPage(ModelAndView modelAndView){

        modelAndView.setViewName("admin/addDepartment");
        return modelAndView;
    }
}
