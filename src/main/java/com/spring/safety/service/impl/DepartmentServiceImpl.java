package com.spring.safety.service.impl;

import com.spring.safety.model.Department;
import com.spring.safety.model.Hospital;
import com.spring.safety.repository.DepartmentRepository;
import com.spring.safety.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    private DepartmentRepository departmentRepository;

    @Override
    public Department save(Department department) {
        return departmentRepository.save(department);
    }

    @Override
    public Department update(Department department) {
        return departmentRepository.save(department);
    }

    @Override
    public Department findById(String id) {
        return departmentRepository.findById(id).get();
    }

    @Override
    public List<Department> findDepartmentByHospital(Hospital hospital) {
        return departmentRepository.findDepartmentByHospitalId(hospital);
    }

    @Override
    public List<Department> findAllDepartments() {
        return departmentRepository.findAll();
    }

    @Override
    public void delete(String id) {
        departmentRepository.deletePostById(id);
    }
}
